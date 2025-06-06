=begin
Crimson Falcon - Ruby Client SDK

MIT License

Copyright (c) 2023 Crowdstrike

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end

require "date"
require "json"
require "logger"
require "tempfile"
require "time"
require "typhoeus"
require "jwt"

module Falcon
  # The `Falcon::ApiClient` class provides a Ruby client for the CrowdStrike Falcon
  # API. It uses the `Typhoeus` HTTP library to send HTTP requests to the API and
  # returns the response as a Ruby object. The `Falcon::ApiClient` class provides
  # methods for making requests to various endpoints of the API, such as retrieving
  # detections, hosts, and incidents. It also handles authentication by obtaining an
  # access token from the CrowdStrike OAuth2 API and including it in the HTTP
  # requests. This file is a key component of the CrowdStrike API client and is used
  # to interact with the CrowdStrike Falcon platform programmatically.
  class ApiClient
    # The Configuration object holding settings to be used in the API client.
    attr_accessor :config

    # Defines the headers to be used in HTTP requests of all API calls by default.
    #
    # @return [Hash]
    attr_accessor :default_headers

    # Initializes the ApiClient
    # @option config [Configuration] Configuration for initializing the object, default to Configuration.default
    def initialize(config = Configuration.default)
      # Default user agent string
      @USER_AGENT = "crowdstrike-crimson/#{VERSION}"
      @config = config
      @user_agent = @config.user_agent_override ? "#{@config.user_agent_override} #{@USER_AGENT}" : @USER_AGENT
      @default_headers = {
        "Content-Type" => "application/json",
        "User-Agent" => @user_agent,
      }
      @access_token_expiration = nil
      @config.access_token = get_access_token if @config.access_token.nil?
    end

    def self.default
      @@default ||= ApiClient.new
    end

    # Call an API with given options.
    #
    # @return [Array<(Object, Integer, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def call_api(http_method, path, opts = {})
      # Debug access_token expiration
      @config.logger.debug "Access token expired. Initiating refresh..." if access_token_expired?
      @config.access_token = get_access_token if @config.access_token.nil? || access_token_expired?
      request = build_request(http_method, path, opts)
      response = request.run

      # Print the response body (for debugging purposes)
      print_response_body(response) if @config.debugging

      # Raise an error if the response is not successful
      raise_error(response)

      # Deserialize the response if a return type is specified
      data = deserialize(response, opts[:return_type]) if opts[:return_type]

      return data, response.code, response.headers
    end

    private
      # Gets an access token from the server using the client ID and client secret.
      #
      # @return [String] The access token.
      def get_access_token
        raise "Missing client_id" unless @config.client_id
        raise "Missing client_secret" unless @config.client_secret

        # Build the request options
        opts = build_oauth2_options

        # Make the request
        path = "/oauth2/token"
        oauth2_response = build_request(:POST, path, opts).run

        # Handle Redirect to proper cloud (For Auth only)
        if redirect_to_cloud?(oauth2_response)
          redirect_to_cloud(oauth2_response)
          oauth2_response = build_request(:POST, path, opts).run
        end

        # Print the response body (for debugging purposes)
        print_response_body(oauth2_response) if @config.debugging

        # Raise an error if the response is not successful
        raise_error(oauth2_response)

        # Deserialize the response
        data = deserialize(oauth2_response, opts[:return_type]) if opts[:return_type]

        # Set the access token expiration time
        @access_token_expiration = Time.now + data.expires_in

        # Return the access token
        data.access_token
      end

      # Determines if the access token has expired by checking the expiration time.
      #
      # @return [Boolean] `true` if the access token has expired, `false` otherwise.
      # @note If someone manually sets `@config` access token, we need to account for that by using JWT decode.
      #   If we have an access token, but no expiration, we need to decode it to get the expiration.
      def access_token_expired?
        @access_token_expiration ||= get_access_token_expiration
        Time.now >= @access_token_expiration
      end

      # Decodes the access token and retrieves the expiration time.
      #
      # @return [Time] The expiration time of the access token.
      def get_access_token_expiration
        decoded_token = JWT.decode(@config.access_token, nil, false)
        @access_token_expiration = Time.at(decoded_token.first['exp'])
      end

      # Checks if the response should be redirected to a different cloud based on the response code.
      #
      # @param response [HTTP::Response] The HTTP response to check.
      # @return [Boolean] `true` if the response should be redirected, `false` otherwise.
      def redirect_to_cloud?(response)
        [301, 302, 303, 307, 308].include?(response.code)
      end

      # Redirects the response to a different cloud based on the 'X-Cs-Region' header in the response.
      #
      # @param response [HTTP::Response] The HTTP response to redirect.
      # @return [void]
      def redirect_to_cloud(response)
        # Cloud should be in 'X-Cs-Region' header
        cloud = response.headers["X-Cs-Region"] || raise("Missing cloud value in 'X-Cs-Region' header")
        @config.cloud = cloud
        @config.logger.debug "Redirecting to #{cloud}" if @config.debugging
      end

      # Prints the response body for debugging.
      #
      # @param response [HTTP::Response] The HTTP response to print.
      # @return [void]
      def print_response_body(response)
        @config.logger.debug "HTTP response body ~BEGIN~\n#{response.body}\n~END~\n"
      end

      # Raises an error if the response is not successful.
      #
      # @param response [HTTP::Response] The HTTP response to check.
      # @return [void]
      def raise_error(response)
        return if response.success?

        if response.timed_out?
          raise ApiError.new("Connection timed out")
        elsif response.code == 0
          # Errors from libcurl will be made visible here
          raise ApiError.new(:code => 0, :message => response.return_message)
        else
          raise ApiError.new(:code => response.code, :response_headers => response.headers, :response_body => response.body), response.status_message
        end
      end

      # Builds the OAuth2 options for the API request.
      #
      # @return [Hash] The options to use for the OAuth2 API request.
      # @note This method sets the header parameters and form parameters required for the OAuth2 API request.
      # @note The client ID and client secret are set in the form parameters.
      # @note The member CID is set in the form parameters if it is available in the configuration.
      # @note The return type is set to 'DomainAccessTokenResponseV1'.
      # @note The authentication name is set to 'basicAuth'.
      def build_oauth2_options
        header_params = {
          "Content-Type" => "application/x-www-form-urlencoded",
          "Accept" => "application/json",
        }

        form_params = {
          "client_id" => @config.client_id,
          "client_secret" => @config.client_secret,
        }
        form_params["member_cid"] = @config.member_cid if @config.member_cid

        return_type = "DomainAccessTokenResponseV1"

        auth_names = ["basicAuth"]

        {
          header_params: header_params,
          form_params: form_params,
          return_type: return_type,
          auth_names: auth_names,
        }
      end

    public

    # Builds the HTTP request
    #
    # @param [String] http_method HTTP method/verb (e.g. POST)
    # @param [String] path URL path (e.g. /account/new)
    # @option opts [Hash] :header_params Header parameters
    # @option opts [Hash] :query_params Query parameters
    # @option opts [Hash] :form_params Query parameters
    # @option opts [Object] :body HTTP body (JSON/XML)
    # @return [Typhoeus::Request] A Typhoeus Request
    def build_request(http_method, path, opts = {})
      url = build_request_url(path, opts)
      http_method = http_method.to_sym.downcase

      header_params = @default_headers.merge(opts[:header_params] || {})
      query_params = opts[:query_params] || {}
      form_params = opts[:form_params] || {}
      follow_location = opts[:followlocation] || false

      update_params_for_auth! header_params, query_params, opts[:auth_names]

      # set ssl_verifyhosts option based on @config.verify_ssl_host (true/false)
      _verify_ssl_host = @config.verify_ssl_host ? 2 : 0

      req_opts = {
        :method => http_method,
        :headers => header_params,
        :params => query_params,
        :params_encoding => @config.params_encoding,
        :timeout => @config.timeout,
        :ssl_verifypeer => @config.verify_ssl,
        :ssl_verifyhost => _verify_ssl_host,
        :sslcert => @config.cert_file,
        :sslkey => @config.key_file,
        :verbose => @config.debugging,
        :followlocation => follow_location,
      }

      # set custom cert, if provided
      req_opts[:cainfo] = @config.ssl_ca_cert if @config.ssl_ca_cert

      if [:post, :patch, :put, :delete].include?(http_method)
        req_body = build_request_body(header_params, form_params, opts[:body])
        req_opts.update :body => req_body
        if @config.debugging
          @config.logger.debug "HTTP request body param ~BEGIN~\n#{req_body}\n~END~\n"
        end
      end

      p req_opts if @config.debugging
      puts url if @config.debugging
      request = Typhoeus::Request.new(url, req_opts)
      download_file(request) if opts[:return_type] == "File"
      request
    end

    # Builds the HTTP request body
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] form_params Query parameters
    # @param [Object] body HTTP body (JSON/XML)
    # @return [String] HTTP body data in the form of string
    def build_request_body(header_params, form_params, body)
      # http form
      if header_params["Content-Type"] == "application/x-www-form-urlencoded" ||
         header_params["Content-Type"] == "multipart/form-data"
        data = {}
        form_params.each do |key, value|
          case value
          when ::File, ::Array, nil
            # let typhoeus handle File, Array and nil parameters
            data[key] = value
          else
            data[key] = value.to_s
          end
        end
      elsif body
        data = body.is_a?(String) ? body : body.to_json
      else
        data = nil
      end
      data
    end

    # Save response body into a file in (the defined) temporary folder, using the filename
    # from the "Content-Disposition" header if provided, otherwise a random filename.
    # The response body is written to the file in chunks in order to handle files which
    # size is larger than maximum Ruby String or even larger than the maximum memory a Ruby
    # process can use.
    #
    # @see Configuration#temp_folder_path
    def download_file(request)
      tempfile = nil
      encoding = nil
      request.on_headers do |response|
        content_disposition = response.headers["Content-Disposition"]
        if content_disposition && content_disposition =~ /filename=/i
          filename = content_disposition[/filename=['"]?([^'"\s]+)['"]?/, 1]
          prefix = sanitize_filename(filename)
        else
          prefix = "download-"
        end
        prefix = prefix + "-" unless prefix.end_with?("-")
        encoding = response.body.encoding
        tempfile = Tempfile.open(prefix, @config.temp_folder_path, encoding: encoding)
        @tempfile = tempfile
      end
      request.on_body do |chunk|
        chunk.force_encoding(encoding)
        tempfile.write(chunk)
      end
      request.on_complete do |response|
        if tempfile
          tempfile.close
          @config.logger.info "Temp file written to #{tempfile.path}, please copy the file to a proper folder " \
                              "with e.g. `FileUtils.cp(tempfile.path, '/new/file/path')` otherwise the temp file " \
                              "will be deleted automatically with GC. It's also recommended to delete the temp file " \
                              "explicitly with `tempfile.delete`"
        end
      end
    end

    # Check if the given MIME is a JSON MIME.
    # JSON MIME examples:
    #   application/json
    #   application/json; charset=UTF8
    #   APPLICATION/JSON
    #   */*
    # @param [String] mime MIME
    # @return [Boolean] True if the MIME is application/json
    def json_mime?(mime)
      mime = mime.downcase
      return true if mime == '*/*'

      mime_type, subtype = mime.split('/')
      return false unless mime_type == 'application'

      subtype_main = subtype.split(';').first
      subtype_main == 'json' || subtype_main == 'jsonp'
    end


    # Deserialize the response to the given return type.
    #
    # @param [Response] response HTTP response
    # @param [String] return_type some examples: "User", "Array<User>", "Hash<String, Integer>"
    def deserialize(response, return_type)
      body = response.body

      # handle file downloading - return the File instance processed in request callbacks
      # note that response body is empty when the file is written in chunks in request on_body callback
      return @tempfile if return_type == "File"

      return nil if body.nil? || body.empty?

      # return response body directly for String return type
      return body if return_type == "String"

      # ensuring a default content type
      content_type = response.headers["Content-Type"] || "application/json"

      return body if content_type.start_with?("text/")

      fail "Content-Type is not supported: #{content_type}" unless json_mime?(content_type)

      begin
        data = JSON.parse("[#{body}]", :symbolize_names => true)[0]
      rescue JSON::ParserError => e
        if %w(String Date Time).include?(return_type)
          data = body
        else
          raise e
        end
      end

      convert_to_type data, return_type
    end

    # Convert data to the given return type.
    # @param [Object] data Data to be converted
    # @param [String] return_type Return type
    # @return [Mixed] Data in a particular type
    def convert_to_type(data, return_type)
      return nil if data.nil?
      case return_type
      when "String"
        data.to_s
      when "Integer"
        data.to_i
      when "Float"
        data.to_f
      when "Boolean"
        data == true
      when "Time"
        # parse date time (expecting ISO 8601 format)
        Time.parse data
      when "Date"
        # parse date time (expecting ISO 8601 format)
        Date.parse data
      when "Object"
        # generic object (usually a Hash), return directly
        data
      when /\AArray<(.+)>\z/
        # e.g. Array<Pet>
        sub_type = $1
        data.map { |item| convert_to_type(item, sub_type) }
      when /\AHash\<String, (.+)\>\z/
        # e.g. Hash<String, Integer>
        sub_type = $1
        {}.tap do |hash|
          data.each { |k, v| hash[k] = convert_to_type(v, sub_type) }
        end
      else
        # models (e.g. Pet) or oneOf
        klass = Falcon.const_get(return_type)
        klass.respond_to?(:openapi_one_of) ? klass.build(data) : klass.build_from_hash(data)
      end
    end

    # Sanitize filename by removing path.
    # e.g. ../../sun.gif becomes sun.gif
    #
    # @param [String] filename the filename to be sanitized
    # @return [String] the sanitized filename
    def sanitize_filename(filename)
      File.basename(filename.gsub("\\", "/")) unless filename.nil?
    end

    def build_request_url(path, opts = {})
      # Add leading and trailing slashes to path
      path = "/#{path}".gsub(/\/+/, "/")
      @config.base_url + path
    end

    # Update header and query params based on authentication settings.
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] query_params Query parameters
    # @param [String] auth_names Authentication scheme name
    def update_params_for_auth!(header_params, query_params, auth_names)
      Array(auth_names).each do |auth_name|
        auth_setting = @config.auth_settings[auth_name]
        next unless auth_setting
        case auth_setting[:in]
        when "header" then header_params[auth_setting[:key]] = auth_setting[:value]
        when "query" then query_params[auth_setting[:key]] = auth_setting[:value]
        else fail ArgumentError, "Authentication token must be in `query` or `header`"
        end
      end
    end

    # Sets user agent in HTTP header
    #
    # @param [String] user_agent User agent (e.g. openapi-generator/ruby/1.0.0)
    def user_agent=(user_agent)
      @user_agent = user_agent
      @default_headers["User-Agent"] = @user_agent
    end

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts)
      return nil if accepts.nil? || accepts.empty?
      # use JSON when present, otherwise use all of the provided
      json_accept = accepts.find { |s| json_mime?(s) }
      json_accept || accepts.join(",")
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types)
      # return nil by default
      return if content_types.nil? || content_types.empty?
      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      json_content_type || content_types.first
    end

    # Convert object (array, hash, object, etc) to JSON string.
    # @param [Object] model object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_http_body(model)
      return model if model.nil? || model.is_a?(String)
      local_body = nil
      if model.is_a?(Array)
        local_body = model.map { |m| object_to_hash(m) }
      else
        local_body = object_to_hash(model)
      end
      local_body.to_json
    end

    # Convert object(non-array) to hash.
    # @param [Object] obj object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_hash(obj)
      if obj.respond_to?(:to_hash)
        obj.to_hash
      else
        obj
      end
    end

    # Build parameter value according to the given collection format.
    # @param [String] collection_format one of :csv, :ssv, :tsv, :pipes and :multi
    def build_collection_param(param, collection_format)
      case collection_format
      when :csv
        param.join(",")
      when :ssv
        param.join(" ")
      when :tsv
        param.join("\t")
      when :pipes
        param.join("|")
      when :multi
        # return the array directly as typhoeus will handle it as expected
        param
      else
        fail "unknown collection format: #{collection_format.inspect}"
      end
    end
  end
end

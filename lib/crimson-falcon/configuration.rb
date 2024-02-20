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

module Falcon
  # The `Falcon::Configuration` class defines the configuration settings for the
  # CrowdStrike API client. The `ATTRIBUTES` constant is an array of symbols that
  # represent the configuration options, such as the HTTP scheme, API host, and base
  # path. The `Configuration` class provides default values for these options, but
  # they can be overridden by setting the corresponding instance variables. The
  # `Configuration` class is used by the CrowdStrike API client to ensure that API
  # requests are sent to the correct endpoint and with the correct settings.
  class Configuration
    ATTRIBUTES = [
      # The HTTP scheme (http or https) to use for API requests
      :scheme,

      # The API host to send requests to (defaults to api.crowdstrike.com)
      :host,

      # The base path for API requests (defaults to /)
      :base_path,

      # The client ID to use for authentication
      :client_id,

      # The client secret to use for authentication
      :client_secret,

      # The member CID to use for authentication
      :member_cid,

      # The cloud to use for API requests (defaults to us-1)
      :cloud,

      # The access token to use for authentication (overrides access_token_getter)
      :access_token,

      # A lambda that returns the access token to use for authentication
      :access_token_getter,

      # The user agent string to use for API requests
      :user_agent_override,

      # Whether to return binary data in the response
      :return_binary_data,

      # Whether to enable debugging mode
      :debugging,

      # The logger to use for debugging
      :logger,

      # The path to a temporary folder to use for file uploads
      :temp_folder_path,

      # The timeout for API requests, in seconds
      :timeout,

      # Whether to perform client-side validation of API requests
      :client_side_validation,

      # Whether to verify the SSL certificate of the API host
      :verify_ssl,

      # Whether to verify the SSL hostname of the API host
      :verify_ssl_host,

      # The path to the SSL CA certificate file to use for SSL verification
      :ssl_ca_cert,

      # The path to the client certificate file to use for SSL verification
      :cert_file,

      # The path to the client key file to use for SSL verification
      :key_file,

      # The encoding to use for query string and form parameter values
      :params_encoding,

      # The format to inject into the API path
      :inject_format,

      # The format to use for API requests that don't specify a format
      :force_ending_format,
    ].freeze

    ATTRIBUTES.each { |attr| attr_accessor attr }

    def initialize
      @scheme = "https"
      @cloud = "us-1"
      @host = "api.crowdstrike.com"
      @base_path = ""
      @user_agent_override = nil
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      @cert_file = nil
      @key_file = nil
      @timeout = 0
      @params_encoding = :multi
      @debugging = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)

      yield(self) if block_given?
    end

    def self.default
      @default ||= new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      @scheme = scheme.sub(/:\/\//, "")
    end

    # When cloud is set, update host
    def cloud=(cloud)
      @cloud = cloud
      @host = Cloud.new(@cloud).host
    end

    def base_path=(base_path)
      @base_path = "/#{base_path}".gsub(/\/+/, "/")
      @base_path = "" if @base_path == "/"
    end

    # Returns base URL for specified operation based on server settings
    def base_url
      "#{scheme}://#{[host, base_path].join("/").gsub(/\/+/, "/")}".sub(/\/+\z/, "")
    end

    def api_key_with_prefix(param_name, param_alias = nil)
      key = @api_key[param_name]
      key = @api_key.fetch(param_alias, key) unless param_alias.nil?
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{key}"
      else
        key
      end
    end

    def access_token_with_refresh
      return access_token if access_token_getter.nil?
      access_token_getter.call
    end

    def auth_settings
      {
        "oauth2" => {
          type: "oauth2",
          in: "header",
          key: "Authorization",
          value: "Bearer #{access_token_with_refresh}",
        },
      }
    end
  end
end

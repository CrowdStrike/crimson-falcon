=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

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

require 'cgi'

module Falcon
  class Downloads
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets pre-signed URL for the file
    # @param file_name [String] Name of the file to be downloaded
    # @param file_version [String] Version of the file to be downloaded
    # @param [Hash] opts the optional parameters
    # @return [CommonEntitiesResponse]
    def download_file(file_name, file_version, opts = {})
      data, _status_code, _headers = download_file_with_http_info(file_name, file_version, opts)
      data
    end

    # Gets pre-signed URL for the file
    # @param file_name [String] Name of the file to be downloaded
    # @param file_version [String] Version of the file to be downloaded
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonEntitiesResponse, Integer, Hash)>] CommonEntitiesResponse data, response status code and response headers
    def download_file_with_http_info(file_name, file_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Downloads.download_file ...'
      end
      # verify the required parameter 'file_name' is set
      if @api_client.config.client_side_validation && file_name.nil?
        fail ArgumentError, "Missing the required parameter 'file_name' when calling Downloads.download_file"
      end
      # verify the required parameter 'file_version' is set
      if @api_client.config.client_side_validation && file_version.nil?
        fail ArgumentError, "Missing the required parameter 'file_version' when calling Downloads.download_file"
      end
      # resource path
      local_var_path = '/csdownloads/entities/files/download/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'file_name'] = file_name
      query_params[:'file_version'] = file_version

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CommonEntitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Downloads.download_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Downloads#download_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
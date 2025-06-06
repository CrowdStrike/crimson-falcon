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
  class DownloadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Enumerates a list of files available for CID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name Apply filtering on file name
    # @option opts [String] :file_version Apply filtering on file version
    # @option opts [String] :platform Apply filtering on file platform
    # @option opts [String] :os Apply filtering on operating system
    # @option opts [String] :arch Apply filtering on architecture
    # @option opts [String] :category Apply filtering on file category
    # @return [CommonEntitiesResponse]
    def enumerate_file(opts = {})
      data, _status_code, _headers = enumerate_file_with_http_info(opts)
      data
    end

    # Enumerates a list of files available for CID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name Apply filtering on file name
    # @option opts [String] :file_version Apply filtering on file version
    # @option opts [String] :platform Apply filtering on file platform
    # @option opts [String] :os Apply filtering on operating system
    # @option opts [String] :arch Apply filtering on architecture
    # @option opts [String] :category Apply filtering on file category
    # @return [Array<(CommonEntitiesResponse, Integer, Hash)>] CommonEntitiesResponse data, response status code and response headers
    def enumerate_file_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DownloadsApi.enumerate_file ...'
      end
      # resource path
      local_var_path = '/csdownloads/entities/files/enumerate/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'file_name'] = opts[:'file_name'] if !opts[:'file_name'].nil?
      query_params[:'file_version'] = opts[:'file_version'] if !opts[:'file_version'].nil?
      query_params[:'platform'] = opts[:'platform'] if !opts[:'platform'].nil?
      query_params[:'os'] = opts[:'os'] if !opts[:'os'].nil?
      query_params[:'arch'] = opts[:'arch'] if !opts[:'arch'].nil?
      query_params[:'category'] = opts[:'category'] if !opts[:'category'].nil?

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
        :operation => :"DownloadsApi.enumerate_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DownloadsApi#enumerate_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

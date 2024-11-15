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
  class RealTimeResponseAudit
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all the RTR sessions created for a customer in a specified duration
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [String] :sort how to sort the session IDs. e.g. sort&#x3D;created_at|desc will sort the results based on createdAt in descending order
    # @option opts [String] :limit number of sessions to be returned
    # @option opts [String] :offset offset value to be used for paginated results
    # @option opts [Boolean] :with_command_info get sessions with command info included; by default sessions are returned without command info which include cloud_request_ids and logs fields (default to false)
    # @return [DomainSessionResponseWrapper]
    def r_tr_audit_sessions(opts = {})
      data, _status_code, _headers = r_tr_audit_sessions_with_http_info(opts)
      data
    end

    # Get all the RTR sessions created for a customer in a specified duration
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [String] :sort how to sort the session IDs. e.g. sort&#x3D;created_at|desc will sort the results based on createdAt in descending order
    # @option opts [String] :limit number of sessions to be returned
    # @option opts [String] :offset offset value to be used for paginated results
    # @option opts [Boolean] :with_command_info get sessions with command info included; by default sessions are returned without command info which include cloud_request_ids and logs fields (default to false)
    # @return [Array<(DomainSessionResponseWrapper, Integer, Hash)>] DomainSessionResponseWrapper data, response status code and response headers
    def r_tr_audit_sessions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RealTimeResponseAudit.r_tr_audit_sessions ...'
      end
      allowable_values = ["created_at", "updated_at", "deleted_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/real-time-response-audit/combined/sessions/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'with_command_info'] = opts[:'with_command_info'] if !opts[:'with_command_info'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DomainSessionResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"RealTimeResponseAudit.r_tr_audit_sessions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RealTimeResponseAudit#r_tr_audit_sessions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

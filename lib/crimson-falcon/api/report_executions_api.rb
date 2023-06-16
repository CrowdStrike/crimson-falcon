=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>

CrowdStrike Swagger API Version: 2023-05-30T23:10:32Z

=end

require 'cgi'

module Falcon
  class ReportExecutionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get report entity download
    # @param ids [String] The report_execution id to download
    # @param [Hash] opts the optional parameters
    # @return [Array<Integer>]
    def report_executions_download_get(ids, opts = {})
      data, _status_code, _headers = report_executions_download_get_with_http_info(ids, opts)
      data
    end

    # Get report entity download
    # @param ids [String] The report_execution id to download
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Integer>, Integer, Hash)>] Array<Integer> data, response status code and response headers
    def report_executions_download_get_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportExecutionsApi.report_executions_download_get ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ReportExecutionsApi.report_executions_download_get"
      end
      # resource path
      local_var_path = '/reports/entities/report-executions-download/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Integer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ReportExecutionsApi.report_executions_download_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportExecutionsApi#report_executions_download_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve report details for the provided report IDs.
    # @param ids [Array<String>] The report_execution id to get details about.
    # @param [Hash] opts the optional parameters
    # @return [DomainReportExecutionsResponseV1]
    def report_executions_get(ids, opts = {})
      data, _status_code, _headers = report_executions_get_with_http_info(ids, opts)
      data
    end

    # Retrieve report details for the provided report IDs.
    # @param ids [Array<String>] The report_execution id to get details about.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainReportExecutionsResponseV1, Integer, Hash)>] DomainReportExecutionsResponseV1 data, response status code and response headers
    def report_executions_get_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportExecutionsApi.report_executions_get ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ReportExecutionsApi.report_executions_get"
      end
      # resource path
      local_var_path = '/reports/entities/report-executions/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :multi)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DomainReportExecutionsResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ReportExecutionsApi.report_executions_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportExecutionsApi#report_executions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find all report execution IDs matching the query with filter
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Possible order by fields: created_on, last_updated_on
    # @option opts [String] :filter FQL query specifying the filter parameters. Filter term criteria: type, scheduled_report_id, status. Filter range criteria: created_on, last_updated_on, expiration_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;.
    # @option opts [String] :q Match query criteria, which includes all the filter string fields
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit Number of ids to return.
    # @return [MsaQueryResponse]
    def report_executions_query(opts = {})
      data, _status_code, _headers = report_executions_query_with_http_info(opts)
      data
    end

    # Find all report execution IDs matching the query with filter
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Possible order by fields: created_on, last_updated_on
    # @option opts [String] :filter FQL query specifying the filter parameters. Filter term criteria: type, scheduled_report_id, status. Filter range criteria: created_on, last_updated_on, expiration_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;.
    # @option opts [String] :q Match query criteria, which includes all the filter string fields
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit Number of ids to return.
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def report_executions_query_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportExecutionsApi.report_executions_query ...'
      end
      # resource path
      local_var_path = '/reports/queries/report-executions/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MsaQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ReportExecutionsApi.report_executions_query",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportExecutionsApi#report_executions_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # This endpoint will be used to retry report executions
    # @param body [Array<DomainReportExecutionRetryRequestV1>] 
    # @param [Hash] opts the optional parameters
    # @return [DomainReportExecutionsResponseV1]
    def report_executions_retry(body, opts = {})
      data, _status_code, _headers = report_executions_retry_with_http_info(body, opts)
      data
    end

    # This endpoint will be used to retry report executions
    # @param body [Array<DomainReportExecutionRetryRequestV1>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainReportExecutionsResponseV1, Integer, Hash)>] DomainReportExecutionsResponseV1 data, response status code and response headers
    def report_executions_retry_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportExecutionsApi.report_executions_retry ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ReportExecutionsApi.report_executions_retry"
      end
      # resource path
      local_var_path = '/reports/entities/report-executions-retry/v1'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'DomainReportExecutionsResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ReportExecutionsApi.report_executions_retry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportExecutionsApi#report_executions_retry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

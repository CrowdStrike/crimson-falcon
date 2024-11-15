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
  class DriftIndicators
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the count of Drift Indicators by the date. by default it's for 7 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter drift indicators using a query in Falcon Query Language (FQL). Supported filters: cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name
    # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
    # @return [DriftindicatorsDriftIndicatorsFieldValue]
    def get_drift_indicators_values_by_date(opts = {})
      data, _status_code, _headers = get_drift_indicators_values_by_date_with_http_info(opts)
      data
    end

    # Returns the count of Drift Indicators by the date. by default it&#39;s for 7 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter drift indicators using a query in Falcon Query Language (FQL). Supported filters: cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name
    # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
    # @return [Array<(DriftindicatorsDriftIndicatorsFieldValue, Integer, Hash)>] DriftindicatorsDriftIndicatorsFieldValue data, response status code and response headers
    def get_drift_indicators_values_by_date_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DriftIndicators.get_drift_indicators_values_by_date ...'
      end
      # resource path
      local_var_path = '/container-security/aggregates/drift-indicators/count-by-date/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
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
      return_type = opts[:debug_return_type] || 'DriftindicatorsDriftIndicatorsFieldValue'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"DriftIndicators.get_drift_indicators_values_by_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DriftIndicators#get_drift_indicators_values_by_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve Drift Indicator entities identified by the provided IDs
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids Search Drift Indicators by ids - The maximum amount is 100 IDs
    # @return [DriftindicatorsDriftEntityResponse]
    def read_drift_indicator_entities(opts = {})
      data, _status_code, _headers = read_drift_indicator_entities_with_http_info(opts)
      data
    end

    # Retrieve Drift Indicator entities identified by the provided IDs
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids Search Drift Indicators by ids - The maximum amount is 100 IDs
    # @return [Array<(DriftindicatorsDriftEntityResponse, Integer, Hash)>] DriftindicatorsDriftEntityResponse data, response status code and response headers
    def read_drift_indicator_entities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DriftIndicators.read_drift_indicator_entities ...'
      end
      # resource path
      local_var_path = '/container-security/entities/drift-indicators/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :csv) if !opts[:'ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DriftindicatorsDriftEntityResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"DriftIndicators.read_drift_indicator_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DriftIndicators#read_drift_indicator_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the total count of Drift indicators over a time period
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name
    # @return [DriftindicatorsDriftIndicatorsCountValue]
    def read_drift_indicators_count(opts = {})
      data, _status_code, _headers = read_drift_indicators_count_with_http_info(opts)
      data
    end

    # Returns the total count of Drift indicators over a time period
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name
    # @return [Array<(DriftindicatorsDriftIndicatorsCountValue, Integer, Hash)>] DriftindicatorsDriftIndicatorsCountValue data, response status code and response headers
    def read_drift_indicators_count_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DriftIndicators.read_drift_indicators_count ...'
      end
      # resource path
      local_var_path = '/container-security/aggregates/drift-indicators/count/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DriftindicatorsDriftIndicatorsCountValue'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"DriftIndicators.read_drift_indicators_count",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DriftIndicators#read_drift_indicators_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve Drift Indicators by the provided search criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name
    # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
    # @option opts [Integer] :offset The offset from where to begin.
    # @option opts [String] :sort The fields to sort the records on.
    # @return [DriftindicatorsDriftEntityResponse]
    def search_and_read_drift_indicator_entities(opts = {})
      data, _status_code, _headers = search_and_read_drift_indicator_entities_with_http_info(opts)
      data
    end

    # Retrieve Drift Indicators by the provided search criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name
    # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
    # @option opts [Integer] :offset The offset from where to begin.
    # @option opts [String] :sort The fields to sort the records on.
    # @return [Array<(DriftindicatorsDriftEntityResponse, Integer, Hash)>] DriftindicatorsDriftEntityResponse data, response status code and response headers
    def search_and_read_drift_indicator_entities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DriftIndicators.search_and_read_drift_indicator_entities ...'
      end
      # resource path
      local_var_path = '/container-security/combined/drift-indicators/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DriftindicatorsDriftEntityResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"DriftIndicators.search_and_read_drift_indicator_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DriftIndicators#search_and_read_drift_indicator_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all drift indicators that match the given query
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name
    # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
    # @option opts [Integer] :offset The offset from where to begin.
    # @option opts [String] :sort The fields to sort the records on.
    # @return [MsaspecQueryResponse]
    def search_drift_indicators(opts = {})
      data, _status_code, _headers = search_drift_indicators_with_http_info(opts)
      data
    end

    # Retrieve all drift indicators that match the given query
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name
    # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
    # @option opts [Integer] :offset The offset from where to begin.
    # @option opts [String] :sort The fields to sort the records on.
    # @return [Array<(MsaspecQueryResponse, Integer, Hash)>] MsaspecQueryResponse data, response status code and response headers
    def search_drift_indicators_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DriftIndicators.search_drift_indicators ...'
      end
      # resource path
      local_var_path = '/container-security/queries/drift-indicators/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MsaspecQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"DriftIndicators.search_drift_indicators",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DriftIndicators#search_drift_indicators\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

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

=end

require 'cgi'

module Falcon
  class IncidentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Query environment wide CrowdScore and return the entity data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [Integer] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit The maximum records to return. [1-2500]
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @return [DomainMsaEnvironmentScoreResponse]
    def crowd_score(opts = {})
      data, _status_code, _headers = crowd_score_with_http_info(opts)
      data
    end

    # Query environment wide CrowdScore and return the entity data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [Integer] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit The maximum records to return. [1-2500]
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @return [Array<(DomainMsaEnvironmentScoreResponse, Integer, Hash)>] DomainMsaEnvironmentScoreResponse data, response status code and response headers
    def crowd_score_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsApi.crowd_score ...'
      end
      allowable_values = ["adjusted_score.asc", "adjusted_score.desc", "score.asc", "score.desc", "timestamp.asc", "timestamp.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/incidents/combined/crowdscores/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
      return_type = opts[:debug_return_type] || 'DomainMsaEnvironmentScoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IncidentsApi.crowd_score",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsApi#crowd_score\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details on behaviors by providing behavior IDs
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [DomainMsaExternalBehaviorResponse]
    def get_behaviors(body, opts = {})
      data, _status_code, _headers = get_behaviors_with_http_info(body, opts)
      data
    end

    # Get details on behaviors by providing behavior IDs
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainMsaExternalBehaviorResponse, Integer, Hash)>] DomainMsaExternalBehaviorResponse data, response status code and response headers
    def get_behaviors_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsApi.get_behaviors ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentsApi.get_behaviors"
      end
      # resource path
      local_var_path = '/incidents/entities/behaviors/GET/v1'

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
      return_type = opts[:debug_return_type] || 'DomainMsaExternalBehaviorResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IncidentsApi.get_behaviors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsApi#get_behaviors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details on incidents by providing incident IDs
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [DomainMsaExternalIncidentResponse]
    def get_incidents(body, opts = {})
      data, _status_code, _headers = get_incidents_with_http_info(body, opts)
      data
    end

    # Get details on incidents by providing incident IDs
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainMsaExternalIncidentResponse, Integer, Hash)>] DomainMsaExternalIncidentResponse data, response status code and response headers
    def get_incidents_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsApi.get_incidents ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentsApi.get_incidents"
      end
      # resource path
      local_var_path = '/incidents/entities/incidents/GET/v1'

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
      return_type = opts[:debug_return_type] || 'DomainMsaExternalIncidentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IncidentsApi.get_incidents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsApi#get_incidents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description
    # @param body [DomainEntityActionRequest] Incident Update request body containing minimum 1 and maximum 5000 Incident ID(s) and action param(s) to be performed action against.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :update_detects If true, update assigned-to-uuid and or status of detections associated with the incident(s). Defaults to false (default to false)
    # @option opts [Boolean] :overwrite_detects If true and update-detects is true, the assigned-to-uuid or status for ALL detections associated with the incident(s) will be overwritten. If false, only detects that have default values for assigned-to-uuid and/or status will be updated. Defaults to false. Ignored if &#39;update-detects&#39; is missing or false. (default to false)
    # @return [DomainMsaIncidentPerformActionResponse]
    def perform_incident_action(body, opts = {})
      data, _status_code, _headers = perform_incident_action_with_http_info(body, opts)
      data
    end

    # Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description
    # @param body [DomainEntityActionRequest] Incident Update request body containing minimum 1 and maximum 5000 Incident ID(s) and action param(s) to be performed action against.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :update_detects If true, update assigned-to-uuid and or status of detections associated with the incident(s). Defaults to false (default to false)
    # @option opts [Boolean] :overwrite_detects If true and update-detects is true, the assigned-to-uuid or status for ALL detections associated with the incident(s) will be overwritten. If false, only detects that have default values for assigned-to-uuid and/or status will be updated. Defaults to false. Ignored if &#39;update-detects&#39; is missing or false. (default to false)
    # @return [Array<(DomainMsaIncidentPerformActionResponse, Integer, Hash)>] DomainMsaIncidentPerformActionResponse data, response status code and response headers
    def perform_incident_action_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsApi.perform_incident_action ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentsApi.perform_incident_action"
      end
      # resource path
      local_var_path = '/incidents/entities/incident-actions/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'update_detects'] = opts[:'update_detects'] if !opts[:'update_detects'].nil?
      query_params[:'overwrite_detects'] = opts[:'overwrite_detects'] if !opts[:'overwrite_detects'].nil?

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
      return_type = opts[:debug_return_type] || 'DomainMsaIncidentPerformActionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IncidentsApi.perform_incident_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsApi#perform_incident_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for behaviors by providing an FQL filter, sorting, and paging details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [Integer] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @return [MsaQueryResponse]
    def query_behaviors(opts = {})
      data, _status_code, _headers = query_behaviors_with_http_info(opts)
      data
    end

    # Search for behaviors by providing an FQL filter, sorting, and paging details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [Integer] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_behaviors_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsApi.query_behaviors ...'
      end
      allowable_values = ["alert_ids.asc", "alert_ids.desc", "cmdline.asc", "cmdline.desc", "detection_ids.asc", "detection_ids.desc", "display_name.asc", "display_name.desc", "domain.asc", "domain.desc", "filepath.asc", "filepath.desc", "timestamp.asc", "timestamp.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/incidents/queries/behaviors/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
      return_type = opts[:debug_return_type] || 'MsaQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IncidentsApi.query_behaviors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsApi#query_behaviors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for incidents by providing an FQL filter, sorting, and paging details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [Integer] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @return [DomainMsaIncidentQueryResponse]
    def query_incidents(opts = {})
      data, _status_code, _headers = query_incidents_with_http_info(opts)
      data
    end

    # Search for incidents by providing an FQL filter, sorting, and paging details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [Integer] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @return [Array<(DomainMsaIncidentQueryResponse, Integer, Hash)>] DomainMsaIncidentQueryResponse data, response status code and response headers
    def query_incidents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsApi.query_incidents ...'
      end
      allowable_values = ["assigned_to.asc", "assigned_to.desc", "assigned_to_name.asc", "assigned_to_name.desc", "end.asc", "end.desc", "modified_timestamp.asc", "modified_timestamp.desc", "name.asc", "name.desc", "sort_score.asc", "sort_score.desc", "start.asc", "start.desc", "state.asc", "state.desc", "status.asc", "status.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/incidents/queries/incidents/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
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
      return_type = opts[:debug_return_type] || 'DomainMsaIncidentQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IncidentsApi.query_incidents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsApi#query_incidents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

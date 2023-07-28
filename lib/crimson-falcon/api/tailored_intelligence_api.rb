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
  class TailoredIntelligenceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get event body for the provided event ID
    # @param id [String] Return the event body for event id.
    # @param [Hash] opts the optional parameters
    # @return [Array<Integer>]
    def get_events_body(id, opts = {})
      data, _status_code, _headers = get_events_body_with_http_info(id, opts)
      data
    end

    # Get event body for the provided event ID
    # @param id [String] Return the event body for event id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Integer>, Integer, Hash)>] Array<Integer> data, response status code and response headers
    def get_events_body_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TailoredIntelligenceApi.get_events_body ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TailoredIntelligenceApi.get_events_body"
      end
      # resource path
      local_var_path = '/ti/events/entities/events-full-body/v2'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Integer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"TailoredIntelligenceApi.get_events_body",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TailoredIntelligenceApi#get_events_body\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get events entities for specified ids.
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [DomainEventEntitiesResponse]
    def get_events_entities(body, opts = {})
      data, _status_code, _headers = get_events_entities_with_http_info(body, opts)
      data
    end

    # Get events entities for specified ids.
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainEventEntitiesResponse, Integer, Hash)>] DomainEventEntitiesResponse data, response status code and response headers
    def get_events_entities_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TailoredIntelligenceApi.get_events_entities ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TailoredIntelligenceApi.get_events_entities"
      end
      # resource path
      local_var_path = '/ti/events/entities/events/GET/v2'

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
      return_type = opts[:debug_return_type] || 'DomainEventEntitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"TailoredIntelligenceApi.get_events_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TailoredIntelligenceApi#get_events_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get rules entities for specified ids.
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [DomainRuleEntitiesResponse]
    def get_rules_entities(body, opts = {})
      data, _status_code, _headers = get_rules_entities_with_http_info(body, opts)
      data
    end

    # Get rules entities for specified ids.
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainRuleEntitiesResponse, Integer, Hash)>] DomainRuleEntitiesResponse data, response status code and response headers
    def get_rules_entities_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TailoredIntelligenceApi.get_rules_entities ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TailoredIntelligenceApi.get_rules_entities"
      end
      # resource path
      local_var_path = '/ti/rules/entities/rules/GET/v2'

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
      return_type = opts[:debug_return_type] || 'DomainRuleEntitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"TailoredIntelligenceApi.get_rules_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TailoredIntelligenceApi#get_rules_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get events ids that match the provided filter criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit Number of ids to return.
    # @option opts [String] :sort Possible order by fields: source_type, created_date, updated_date. Ex: &#39;updated_date|desc&#39;.
    # @option opts [String] :filter FQL query specifying the filter parameters. Special value &#39;*&#39; means to not filter on anything.
    # @option opts [String] :q Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed).
    # @return [DomainQueryResponse]
    def query_events(opts = {})
      data, _status_code, _headers = query_events_with_http_info(opts)
      data
    end

    # Get events ids that match the provided filter criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit Number of ids to return.
    # @option opts [String] :sort Possible order by fields: source_type, created_date, updated_date. Ex: &#39;updated_date|desc&#39;.
    # @option opts [String] :filter FQL query specifying the filter parameters. Special value &#39;*&#39; means to not filter on anything.
    # @option opts [String] :q Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed).
    # @return [Array<(DomainQueryResponse, Integer, Hash)>] DomainQueryResponse data, response status code and response headers
    def query_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TailoredIntelligenceApi.query_events ...'
      end
      # resource path
      local_var_path = '/ti/events/queries/events/v2'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DomainQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"TailoredIntelligenceApi.query_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TailoredIntelligenceApi#query_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get rules ids that match the provided filter criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit Number of ids to return.
    # @option opts [String] :sort Possible order by fields: name, value, rule_type, customer_id, created_date, updated_date. Ex: &#39;updated_date|asc&#39;.
    # @option opts [String] :filter FQL query specifying the filter parameters. Special value &#39;*&#39; means to not filter on anything.
    # @option opts [String] :q Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed).
    # @return [DomainQueryResponse]
    def query_rules(opts = {})
      data, _status_code, _headers = query_rules_with_http_info(opts)
      data
    end

    # Get rules ids that match the provided filter criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @option opts [Integer] :limit Number of ids to return.
    # @option opts [String] :sort Possible order by fields: name, value, rule_type, customer_id, created_date, updated_date. Ex: &#39;updated_date|asc&#39;.
    # @option opts [String] :filter FQL query specifying the filter parameters. Special value &#39;*&#39; means to not filter on anything.
    # @option opts [String] :q Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed).
    # @return [Array<(DomainQueryResponse, Integer, Hash)>] DomainQueryResponse data, response status code and response headers
    def query_rules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TailoredIntelligenceApi.query_rules ...'
      end
      # resource path
      local_var_path = '/ti/rules/queries/rules/v2'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DomainQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"TailoredIntelligenceApi.query_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TailoredIntelligenceApi#query_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

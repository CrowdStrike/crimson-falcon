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
  class ResponsePoliciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Response Policies by specifying details about the policy to create
    # @param body [RemoteResponseCreatePoliciesV1] 
    # @param [Hash] opts the optional parameters
    # @return [RemoteResponseRespV1]
    def create_rt_response_policies(body, opts = {})
      data, _status_code, _headers = create_rt_response_policies_with_http_info(body, opts)
      data
    end

    # Create Response Policies by specifying details about the policy to create
    # @param body [RemoteResponseCreatePoliciesV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RemoteResponseRespV1, Integer, Hash)>] RemoteResponseRespV1 data, response status code and response headers
    def create_rt_response_policies_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.create_rt_response_policies ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ResponsePoliciesApi.create_rt_response_policies"
      end
      # resource path
      local_var_path = '/policy/entities/response/v1'

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
      return_type = opts[:debug_return_type] || 'RemoteResponseRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ResponsePoliciesApi.create_rt_response_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#create_rt_response_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a set of Response Policies by specifying their IDs
    # @param ids [Array<String>] The IDs of the Response Policies to delete
    # @param [Hash] opts the optional parameters
    # @return [MsaQueryResponse]
    def delete_rt_response_policies(ids, opts = {})
      data, _status_code, _headers = delete_rt_response_policies_with_http_info(ids, opts)
      data
    end

    # Delete a set of Response Policies by specifying their IDs
    # @param ids [Array<String>] The IDs of the Response Policies to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def delete_rt_response_policies_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.delete_rt_response_policies ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ResponsePoliciesApi.delete_rt_response_policies"
      end
      # resource path
      local_var_path = '/policy/entities/response/v1'

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
      return_type = opts[:debug_return_type] || 'MsaQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ResponsePoliciesApi.delete_rt_response_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#delete_rt_response_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a set of Response Policies by specifying their IDs
    # @param ids [Array<String>] The IDs of the RTR Policies to return
    # @param [Hash] opts the optional parameters
    # @return [RemoteResponseRespV1]
    def get_rt_response_policies(ids, opts = {})
      data, _status_code, _headers = get_rt_response_policies_with_http_info(ids, opts)
      data
    end

    # Retrieve a set of Response Policies by specifying their IDs
    # @param ids [Array<String>] The IDs of the RTR Policies to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(RemoteResponseRespV1, Integer, Hash)>] RemoteResponseRespV1 data, response status code and response headers
    def get_rt_response_policies_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.get_rt_response_policies ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ResponsePoliciesApi.get_rt_response_policies"
      end
      # resource path
      local_var_path = '/policy/entities/response/v1'

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
      return_type = opts[:debug_return_type] || 'RemoteResponseRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ResponsePoliciesApi.get_rt_response_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#get_rt_response_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform the specified action on the Response Policies specified in the request
    # @param action_name [String] The action to perform
    # @param body [MsaEntityActionRequestV2] 
    # @param [Hash] opts the optional parameters
    # @return [RemoteResponseRespV1]
    def perform_rt_response_policies_action(action_name, body, opts = {})
      data, _status_code, _headers = perform_rt_response_policies_action_with_http_info(action_name, body, opts)
      data
    end

    # Perform the specified action on the Response Policies specified in the request
    # @param action_name [String] The action to perform
    # @param body [MsaEntityActionRequestV2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RemoteResponseRespV1, Integer, Hash)>] RemoteResponseRespV1 data, response status code and response headers
    def perform_rt_response_policies_action_with_http_info(action_name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.perform_rt_response_policies_action ...'
      end
      # verify the required parameter 'action_name' is set
      if @api_client.config.client_side_validation && action_name.nil?
        fail ArgumentError, "Missing the required parameter 'action_name' when calling ResponsePoliciesApi.perform_rt_response_policies_action"
      end
      # verify enum value
      allowable_values = ["add-host-group", "add-rule-group", "disable", "enable", "remove-host-group", "remove-rule-group"]
      if @api_client.config.client_side_validation && !allowable_values.include?(action_name)
        fail ArgumentError, "invalid value for \"action_name\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ResponsePoliciesApi.perform_rt_response_policies_action"
      end
      # resource path
      local_var_path = '/policy/entities/response-actions/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'action_name'] = action_name

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
      return_type = opts[:debug_return_type] || 'RemoteResponseRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ResponsePoliciesApi.perform_rt_response_policies_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#perform_rt_response_policies_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [RemoteResponseRespV1]
    def query_combined_rt_response_policies(opts = {})
      data, _status_code, _headers = query_combined_rt_response_policies_with_http_info(opts)
      data
    end

    # Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [Array<(RemoteResponseRespV1, Integer, Hash)>] RemoteResponseRespV1 data, response status code and response headers
    def query_combined_rt_response_policies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.query_combined_rt_response_policies ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ResponsePoliciesApi.query_combined_rt_response_policies, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResponsePoliciesApi.query_combined_rt_response_policies, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResponsePoliciesApi.query_combined_rt_response_policies, must be greater than or equal to 1.'
      end

      allowable_values = ["created_by.asc", "created_by.desc", "created_timestamp.asc", "created_timestamp.desc", "enabled.asc", "enabled.desc", "modified_by.asc", "modified_by.desc", "modified_timestamp.asc", "modified_timestamp.desc", "name.asc", "name.desc", "platform_name.asc", "platform_name.desc", "precedence.asc", "precedence.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/policy/combined/response/v1'

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
      return_type = opts[:debug_return_type] || 'RemoteResponseRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ResponsePoliciesApi.query_combined_rt_response_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#query_combined_rt_response_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the Response policy to search for members of
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [BasePolicyMembersRespV1]
    def query_combined_rt_response_policy_members(opts = {})
      data, _status_code, _headers = query_combined_rt_response_policy_members_with_http_info(opts)
      data
    end

    # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the Response policy to search for members of
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [Array<(BasePolicyMembersRespV1, Integer, Hash)>] BasePolicyMembersRespV1 data, response status code and response headers
    def query_combined_rt_response_policy_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.query_combined_rt_response_policy_members ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ResponsePoliciesApi.query_combined_rt_response_policy_members, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResponsePoliciesApi.query_combined_rt_response_policy_members, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResponsePoliciesApi.query_combined_rt_response_policy_members, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/policy/combined/response-members/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
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
      return_type = opts[:debug_return_type] || 'BasePolicyMembersRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ResponsePoliciesApi.query_combined_rt_response_policy_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#query_combined_rt_response_policy_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to determine the results.
    # @option opts [Integer] :offset The offset of the first record to retrieve from
    # @option opts [Integer] :limit The maximum number of records to return [1-5000]
    # @option opts [String] :sort The property to sort results by
    # @return [MsaQueryResponse]
    def query_rt_response_policies(opts = {})
      data, _status_code, _headers = query_rt_response_policies_with_http_info(opts)
      data
    end

    # Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to determine the results.
    # @option opts [Integer] :offset The offset of the first record to retrieve from
    # @option opts [Integer] :limit The maximum number of records to return [1-5000]
    # @option opts [String] :sort The property to sort results by
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_rt_response_policies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.query_rt_response_policies ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ResponsePoliciesApi.query_rt_response_policies, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResponsePoliciesApi.query_rt_response_policies, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResponsePoliciesApi.query_rt_response_policies, must be greater than or equal to 1.'
      end

      allowable_values = ["created_by.asc", "created_by.desc", "created_timestamp.asc", "created_timestamp.desc", "enabled.asc", "enabled.desc", "modified_by.asc", "modified_by.desc", "modified_timestamp.asc", "modified_timestamp.desc", "name.asc", "name.desc", "platform_name.asc", "platform_name.desc", "precedence.asc", "precedence.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/policy/queries/response/v1'

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
        :operation => :"ResponsePoliciesApi.query_rt_response_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#query_rt_response_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the Response policy to search for members of
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [MsaQueryResponse]
    def query_rt_response_policy_members(opts = {})
      data, _status_code, _headers = query_rt_response_policy_members_with_http_info(opts)
      data
    end

    # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the Response policy to search for members of
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_rt_response_policy_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.query_rt_response_policy_members ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ResponsePoliciesApi.query_rt_response_policy_members, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResponsePoliciesApi.query_rt_response_policy_members, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResponsePoliciesApi.query_rt_response_policy_members, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/policy/queries/response-members/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
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
        :operation => :"ResponsePoliciesApi.query_rt_response_policy_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#query_rt_response_policy_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
    # @param body [BaseSetPolicyPrecedenceReqV1] 
    # @param [Hash] opts the optional parameters
    # @return [MsaQueryResponse]
    def set_rt_response_policies_precedence(body, opts = {})
      data, _status_code, _headers = set_rt_response_policies_precedence_with_http_info(body, opts)
      data
    end

    # Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
    # @param body [BaseSetPolicyPrecedenceReqV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def set_rt_response_policies_precedence_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.set_rt_response_policies_precedence ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ResponsePoliciesApi.set_rt_response_policies_precedence"
      end
      # resource path
      local_var_path = '/policy/entities/response-precedence/v1'

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
      return_type = opts[:debug_return_type] || 'MsaQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ResponsePoliciesApi.set_rt_response_policies_precedence",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#set_rt_response_policies_precedence\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Response Policies by specifying the ID of the policy and details to update
    # @param body [RemoteResponseUpdatePoliciesReqV1] 
    # @param [Hash] opts the optional parameters
    # @return [RemoteResponseRespV1]
    def update_rt_response_policies(body, opts = {})
      data, _status_code, _headers = update_rt_response_policies_with_http_info(body, opts)
      data
    end

    # Update Response Policies by specifying the ID of the policy and details to update
    # @param body [RemoteResponseUpdatePoliciesReqV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RemoteResponseRespV1, Integer, Hash)>] RemoteResponseRespV1 data, response status code and response headers
    def update_rt_response_policies_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePoliciesApi.update_rt_response_policies ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ResponsePoliciesApi.update_rt_response_policies"
      end
      # resource path
      local_var_path = '/policy/entities/response/v1'

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
      return_type = opts[:debug_return_type] || 'RemoteResponseRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ResponsePoliciesApi.update_rt_response_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePoliciesApi#update_rt_response_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

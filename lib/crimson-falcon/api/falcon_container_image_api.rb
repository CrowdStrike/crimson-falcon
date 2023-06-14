=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and examples, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation).     To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`.    Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2023-05-30T23:10:32Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module Falcon
  class FalconContainerImageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a registry entity using the provided details
    # @param body [RegistryassessmentExternalRegistryPayload] 
    # @param [Hash] opts the optional parameters
    # @return [DomainExternalRegistryResponse]
    def create_registry_entities(body, opts = {})
      data, _status_code, _headers = create_registry_entities_with_http_info(body, opts)
      data
    end

    # Create a registry entity using the provided details
    # @param body [RegistryassessmentExternalRegistryPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainExternalRegistryResponse, Integer, Hash)>] DomainExternalRegistryResponse data, response status code and response headers
    def create_registry_entities_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FalconContainerImageApi.create_registry_entities ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FalconContainerImageApi.create_registry_entities"
      end
      # resource path
      local_var_path = '/container-security/entities/registries/v1'

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
      return_type = opts[:debug_return_type] || 'DomainExternalRegistryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"FalconContainerImageApi.create_registry_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FalconContainerImageApi#create_registry_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the registry entity identified by the entity UUID
    # @param ids [String] Registry entity UUID
    # @param [Hash] opts the optional parameters
    # @return [DomainExternalRegistryListResponse]
    def delete_registry_entities(ids, opts = {})
      data, _status_code, _headers = delete_registry_entities_with_http_info(ids, opts)
      data
    end

    # Delete the registry entity identified by the entity UUID
    # @param ids [String] Registry entity UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainExternalRegistryListResponse, Integer, Hash)>] DomainExternalRegistryListResponse data, response status code and response headers
    def delete_registry_entities_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FalconContainerImageApi.delete_registry_entities ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling FalconContainerImageApi.delete_registry_entities"
      end
      # resource path
      local_var_path = '/container-security/entities/registries/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DomainExternalRegistryListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"FalconContainerImageApi.delete_registry_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FalconContainerImageApi#delete_registry_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve registry entities identified by the customer id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
    # @option opts [Integer] :offset The offset from where to begin.
    # @option opts [String] :sort The field to sort on, e.g. id.desc or id.asc.
    # @return [DomainExternalQueryResponse]
    def read_registry_entities(opts = {})
      data, _status_code, _headers = read_registry_entities_with_http_info(opts)
      data
    end

    # Retrieve registry entities identified by the customer id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
    # @option opts [Integer] :offset The offset from where to begin.
    # @option opts [String] :sort The field to sort on, e.g. id.desc or id.asc.
    # @return [Array<(DomainExternalQueryResponse, Integer, Hash)>] DomainExternalQueryResponse data, response status code and response headers
    def read_registry_entities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FalconContainerImageApi.read_registry_entities ...'
      end
      # resource path
      local_var_path = '/container-security/queries/registries/v1'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'DomainExternalQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"FalconContainerImageApi.read_registry_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FalconContainerImageApi#read_registry_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the registry entity identified by the entity UUID
    # @param ids [String] Registry entity UUID
    # @param [Hash] opts the optional parameters
    # @return [DomainExternalRegistryListResponse]
    def read_registry_entities_by_uuid(ids, opts = {})
      data, _status_code, _headers = read_registry_entities_by_uuid_with_http_info(ids, opts)
      data
    end

    # Retrieve the registry entity identified by the entity UUID
    # @param ids [String] Registry entity UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainExternalRegistryListResponse, Integer, Hash)>] DomainExternalRegistryListResponse data, response status code and response headers
    def read_registry_entities_by_uuid_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FalconContainerImageApi.read_registry_entities_by_uuid ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling FalconContainerImageApi.read_registry_entities_by_uuid"
      end
      # resource path
      local_var_path = '/container-security/entities/registries/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DomainExternalRegistryListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"FalconContainerImageApi.read_registry_entities_by_uuid",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FalconContainerImageApi#read_registry_entities_by_uuid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the registry entity, as identified by the entity UUID, using the provided details
    # @param id [String] Registry entity UUID
    # @param body [RegistryassessmentExternalRegistryPatchPayload] 
    # @param [Hash] opts the optional parameters
    # @return [DomainExternalRegistryResponse]
    def update_registry_entities(id, body, opts = {})
      data, _status_code, _headers = update_registry_entities_with_http_info(id, body, opts)
      data
    end

    # Update the registry entity, as identified by the entity UUID, using the provided details
    # @param id [String] Registry entity UUID
    # @param body [RegistryassessmentExternalRegistryPatchPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainExternalRegistryResponse, Integer, Hash)>] DomainExternalRegistryResponse data, response status code and response headers
    def update_registry_entities_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FalconContainerImageApi.update_registry_entities ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FalconContainerImageApi.update_registry_entities"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FalconContainerImageApi.update_registry_entities"
      end
      # resource path
      local_var_path = '/container-security/entities/registries/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

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
      return_type = opts[:debug_return_type] || 'DomainExternalRegistryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"FalconContainerImageApi.update_registry_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FalconContainerImageApi#update_registry_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

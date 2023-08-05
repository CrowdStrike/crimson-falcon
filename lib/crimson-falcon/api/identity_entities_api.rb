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
  class IdentityEntitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get sensor aggregates as specified via json in request body.
    # @param body [MsaAggregateQueryRequest]
    # @param [Hash] opts the optional parameters
    # @return [MsaAggregatesResponse]
    def get_sensor_aggregates(body, opts = {})
      data, _status_code, _headers = get_sensor_aggregates_with_http_info(body, opts)
      data
    end

    # Get sensor aggregates as specified via json in request body.
    # @param body [MsaAggregateQueryRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaAggregatesResponse, Integer, Hash)>] MsaAggregatesResponse data, response status code and response headers
    def get_sensor_aggregates_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentityEntitiesApi.get_sensor_aggregates ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IdentityEntitiesApi.get_sensor_aggregates"
      end
      # resource path
      local_var_path = '/identity-protection/aggregates/devices/GET/v1'

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
      return_type = opts[:debug_return_type] || 'MsaAggregatesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IdentityEntitiesApi.get_sensor_aggregates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityEntitiesApi#get_sensor_aggregates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs.
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [ApiSensorDetailsResponseSwagger]
    def get_sensor_details(body, opts = {})
      data, _status_code, _headers = get_sensor_details_with_http_info(body, opts)
      data
    end

    # Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs.
    # @param body [MsaIdsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiSensorDetailsResponseSwagger, Integer, Hash)>] ApiSensorDetailsResponseSwagger data, response status code and response headers
    def get_sensor_details_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentityEntitiesApi.get_sensor_details ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IdentityEntitiesApi.get_sensor_details"
      end
      # resource path
      local_var_path = '/identity-protection/entities/devices/GET/v1'

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
      return_type = opts[:debug_return_type] || 'ApiSensorDetailsResponseSwagger'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IdentityEntitiesApi.get_sensor_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityEntitiesApi#get_sensor_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for sensors in your environment by hostname, IP, and other criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-200]
    # @option opts [String] :sort The property to sort by (e.g. status.desc or hostname.asc)
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @return [MsaspecQueryResponse]
    def query_sensors_by_filter(opts = {})
      data, _status_code, _headers = query_sensors_by_filter_with_http_info(opts)
      data
    end

    # Search for sensors in your environment by hostname, IP, and other criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-200]
    # @option opts [String] :sort The property to sort by (e.g. status.desc or hostname.asc)
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @return [Array<(MsaspecQueryResponse, Integer, Hash)>] MsaspecQueryResponse data, response status code and response headers
    def query_sensors_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentityEntitiesApi.query_sensors_by_filter ...'
      end
      # resource path
      local_var_path = '/identity-protection/queries/devices/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
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
      return_type = opts[:debug_return_type] || 'MsaspecQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"IdentityEntitiesApi.query_sensors_by_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityEntitiesApi#query_sensors_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

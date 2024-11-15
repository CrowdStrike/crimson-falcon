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
  class SensorDownload
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Download sensor installer by SHA256 ID
    # @param id [String] SHA256 of the installer to download
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_sensor_installer_by_id(id, opts = {})
      data, _status_code, _headers = download_sensor_installer_by_id_with_http_info(id, opts)
      data
    end

    # Download sensor installer by SHA256 ID
    # @param id [String] SHA256 of the installer to download
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def download_sensor_installer_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.download_sensor_installer_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SensorDownload.download_sensor_installer_by_id"
      end
      # resource path
      local_var_path = '/sensors/entities/download-installer/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/octet-stream'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorDownload.download_sensor_installer_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#download_sensor_installer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download sensor installer by SHA256 ID
    # @param id [String] SHA256 of the installer to download
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_sensor_installer_by_id_v2(id, opts = {})
      data, _status_code, _headers = download_sensor_installer_by_id_v2_with_http_info(id, opts)
      data
    end

    # Download sensor installer by SHA256 ID
    # @param id [String] SHA256 of the installer to download
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def download_sensor_installer_by_id_v2_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.download_sensor_installer_by_id_v2 ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SensorDownload.download_sensor_installer_by_id_v2"
      end
      # resource path
      local_var_path = '/sensors/entities/download-installer/v2'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/octet-stream'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorDownload.download_sensor_installer_by_id_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#download_sensor_installer_by_id_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sensor installer details by provided query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
    # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
    # @return [DomainSensorInstallersV1]
    def get_combined_sensor_installers_by_query(opts = {})
      data, _status_code, _headers = get_combined_sensor_installers_by_query_with_http_info(opts)
      data
    end

    # Get sensor installer details by provided query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
    # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
    # @return [Array<(DomainSensorInstallersV1, Integer, Hash)>] DomainSensorInstallersV1 data, response status code and response headers
    def get_combined_sensor_installers_by_query_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.get_combined_sensor_installers_by_query ...'
      end
      # resource path
      local_var_path = '/sensors/combined/installers/v1'

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
      return_type = opts[:debug_return_type] || 'DomainSensorInstallersV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorDownload.get_combined_sensor_installers_by_query",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#get_combined_sensor_installers_by_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sensor installer details by provided query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
    # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
    # @return [DomainSensorInstallersV2]
    def get_combined_sensor_installers_by_query_v2(opts = {})
      data, _status_code, _headers = get_combined_sensor_installers_by_query_v2_with_http_info(opts)
      data
    end

    # Get sensor installer details by provided query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
    # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
    # @return [Array<(DomainSensorInstallersV2, Integer, Hash)>] DomainSensorInstallersV2 data, response status code and response headers
    def get_combined_sensor_installers_by_query_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.get_combined_sensor_installers_by_query_v2 ...'
      end
      # resource path
      local_var_path = '/sensors/combined/installers/v2'

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
      return_type = opts[:debug_return_type] || 'DomainSensorInstallersV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorDownload.get_combined_sensor_installers_by_query_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#get_combined_sensor_installers_by_query_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sensor installer IDs by provided query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
    # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
    # @return [MsaspecQueryResponse]
    def get_sensor_installers_by_query(opts = {})
      data, _status_code, _headers = get_sensor_installers_by_query_with_http_info(opts)
      data
    end

    # Get sensor installer IDs by provided query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
    # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
    # @return [Array<(MsaspecQueryResponse, Integer, Hash)>] MsaspecQueryResponse data, response status code and response headers
    def get_sensor_installers_by_query_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.get_sensor_installers_by_query ...'
      end
      # resource path
      local_var_path = '/sensors/queries/installers/v1'

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
        :operation => :"SensorDownload.get_sensor_installers_by_query",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#get_sensor_installers_by_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sensor installer IDs by provided query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
    # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
    # @return [MsaspecQueryResponse]
    def get_sensor_installers_by_query_v2(opts = {})
      data, _status_code, _headers = get_sensor_installers_by_query_v2_with_http_info(opts)
      data
    end

    # Get sensor installer IDs by provided query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
    # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
    # @return [Array<(MsaspecQueryResponse, Integer, Hash)>] MsaspecQueryResponse data, response status code and response headers
    def get_sensor_installers_by_query_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.get_sensor_installers_by_query_v2 ...'
      end
      # resource path
      local_var_path = '/sensors/queries/installers/v2'

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
        :operation => :"SensorDownload.get_sensor_installers_by_query_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#get_sensor_installers_by_query_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CCID to use with sensor installers
    # @param [Hash] opts the optional parameters
    # @return [MsaspecQueryResponse]
    def get_sensor_installers_ccidby_query(opts = {})
      data, _status_code, _headers = get_sensor_installers_ccidby_query_with_http_info(opts)
      data
    end

    # Get CCID to use with sensor installers
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaspecQueryResponse, Integer, Hash)>] MsaspecQueryResponse data, response status code and response headers
    def get_sensor_installers_ccidby_query_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.get_sensor_installers_ccidby_query ...'
      end
      # resource path
      local_var_path = '/sensors/queries/installers/ccid/v1'

      # query parameters
      query_params = opts[:query_params] || {}

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
        :operation => :"SensorDownload.get_sensor_installers_ccidby_query",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#get_sensor_installers_ccidby_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sensor installer details by provided SHA256 IDs
    # @param ids [Array<String>] The IDs of the installers
    # @param [Hash] opts the optional parameters
    # @return [DomainSensorInstallersV1]
    def get_sensor_installers_entities(ids, opts = {})
      data, _status_code, _headers = get_sensor_installers_entities_with_http_info(ids, opts)
      data
    end

    # Get sensor installer details by provided SHA256 IDs
    # @param ids [Array<String>] The IDs of the installers
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainSensorInstallersV1, Integer, Hash)>] DomainSensorInstallersV1 data, response status code and response headers
    def get_sensor_installers_entities_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.get_sensor_installers_entities ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SensorDownload.get_sensor_installers_entities"
      end
      # resource path
      local_var_path = '/sensors/entities/installers/v1'

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
      return_type = opts[:debug_return_type] || 'DomainSensorInstallersV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorDownload.get_sensor_installers_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#get_sensor_installers_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sensor installer details by provided SHA256 IDs
    # @param ids [Array<String>] The IDs of the installers
    # @param [Hash] opts the optional parameters
    # @return [DomainSensorInstallersV2]
    def get_sensor_installers_entities_v2(ids, opts = {})
      data, _status_code, _headers = get_sensor_installers_entities_v2_with_http_info(ids, opts)
      data
    end

    # Get sensor installer details by provided SHA256 IDs
    # @param ids [Array<String>] The IDs of the installers
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainSensorInstallersV2, Integer, Hash)>] DomainSensorInstallersV2 data, response status code and response headers
    def get_sensor_installers_entities_v2_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorDownload.get_sensor_installers_entities_v2 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SensorDownload.get_sensor_installers_entities_v2"
      end
      # resource path
      local_var_path = '/sensors/entities/installers/v2'

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
      return_type = opts[:debug_return_type] || 'DomainSensorInstallersV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorDownload.get_sensor_installers_entities_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorDownload#get_sensor_installers_entities_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

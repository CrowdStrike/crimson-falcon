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
  class SpotlightVulnerabilitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria
    # @param filter [String] Filter items using a query in Falcon Query Language (FQL). Wildcards * and empty filter values are unsupported.    Available filter fields that supports match (~): N/A    Available filter fields that supports exact match: aid, cid, last_seen_within, status, cve.id, cve.is_cisa_kev, cve.remediation_level, cve.cps_rating, cve.exprt_rating, cve.exploit_status_to_include, cve.severity, cve.types, host_info.asset_criticality, host_info.asset_roles, host_info.internet_exposure, host_info.tags, host_info.groups, host_info.product_type_desc, host_info.platform_name, suppression_info.is_suppressed, suppression_info.reason    Available filter fields that supports wildcard (*): N/A    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): created_timestamp, closed_timestamp, updated_timestamp
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 5000). Use with the after parameter to manage pagination of results.
    # @option opts [String] :sort Sort vulnerabilities by their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;updated_timestamp|asc&lt;/li&gt;&lt;li&gt;closed_timestamp|asc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [Array<String>] :facet Select various details blocks to be returned for each vulnerability entity. Supported values:  &lt;ul&gt;&lt;li&gt;host_info&lt;/li&gt;&lt;li&gt;remediation&lt;/li&gt;&lt;li&gt;cve&lt;/li&gt;&lt;li&gt;evaluation_logic&lt;/li&gt;&lt;/ul&gt;
    # @return [DomainSPAPICombinedVulnerabilitiesResponse]
    def combined_query_vulnerabilities(filter, opts = {})
      data, _status_code, _headers = combined_query_vulnerabilities_with_http_info(filter, opts)
      data
    end

    # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria
    # @param filter [String] Filter items using a query in Falcon Query Language (FQL). Wildcards * and empty filter values are unsupported.    Available filter fields that supports match (~): N/A    Available filter fields that supports exact match: aid, cid, last_seen_within, status, cve.id, cve.is_cisa_kev, cve.remediation_level, cve.cps_rating, cve.exprt_rating, cve.exploit_status_to_include, cve.severity, cve.types, host_info.asset_criticality, host_info.asset_roles, host_info.internet_exposure, host_info.tags, host_info.groups, host_info.product_type_desc, host_info.platform_name, suppression_info.is_suppressed, suppression_info.reason    Available filter fields that supports wildcard (*): N/A    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): created_timestamp, closed_timestamp, updated_timestamp
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 5000). Use with the after parameter to manage pagination of results.
    # @option opts [String] :sort Sort vulnerabilities by their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;updated_timestamp|asc&lt;/li&gt;&lt;li&gt;closed_timestamp|asc&lt;/li&gt;&lt;/ul&gt;
    # @option opts [Array<String>] :facet Select various details blocks to be returned for each vulnerability entity. Supported values:  &lt;ul&gt;&lt;li&gt;host_info&lt;/li&gt;&lt;li&gt;remediation&lt;/li&gt;&lt;li&gt;cve&lt;/li&gt;&lt;li&gt;evaluation_logic&lt;/li&gt;&lt;/ul&gt;
    # @return [Array<(DomainSPAPICombinedVulnerabilitiesResponse, Integer, Hash)>] DomainSPAPICombinedVulnerabilitiesResponse data, response status code and response headers
    def combined_query_vulnerabilities_with_http_info(filter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpotlightVulnerabilitiesApi.combined_query_vulnerabilities ...'
      end
      # verify the required parameter 'filter' is set
      if @api_client.config.client_side_validation && filter.nil?
        fail ArgumentError, "Missing the required parameter 'filter' when calling SpotlightVulnerabilitiesApi.combined_query_vulnerabilities"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SpotlightVulnerabilitiesApi.combined_query_vulnerabilities, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SpotlightVulnerabilitiesApi.combined_query_vulnerabilities, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/spotlight/combined/vulnerabilities/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = filter
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'facet'] = @api_client.build_collection_param(opts[:'facet'], :multi) if !opts[:'facet'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DomainSPAPICombinedVulnerabilitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SpotlightVulnerabilitiesApi.combined_query_vulnerabilities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpotlightVulnerabilitiesApi#combined_query_vulnerabilities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details on remediation by providing one or more IDs
    # @param ids [Array<String>] One or more remediation IDs
    # @param [Hash] opts the optional parameters
    # @return [DomainSPAPIRemediationEntitiesResponseV2]
    def get_remediations_v2(ids, opts = {})
      data, _status_code, _headers = get_remediations_v2_with_http_info(ids, opts)
      data
    end

    # Get details on remediation by providing one or more IDs
    # @param ids [Array<String>] One or more remediation IDs
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainSPAPIRemediationEntitiesResponseV2, Integer, Hash)>] DomainSPAPIRemediationEntitiesResponseV2 data, response status code and response headers
    def get_remediations_v2_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpotlightVulnerabilitiesApi.get_remediations_v2 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SpotlightVulnerabilitiesApi.get_remediations_v2"
      end
      # resource path
      local_var_path = '/spotlight/entities/remediations/v2'

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
      return_type = opts[:debug_return_type] || 'DomainSPAPIRemediationEntitiesResponseV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SpotlightVulnerabilitiesApi.get_remediations_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpotlightVulnerabilitiesApi#get_remediations_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details on vulnerabilities by providing one or more IDs
    # @param ids [Array<String>] One or more vulnerability IDs (max: 400). Find vulnerability IDs with GET /spotlight/queries/vulnerabilities/v1
    # @param [Hash] opts the optional parameters
    # @return [DomainSPAPIVulnerabilitiesEntitiesResponseV2]
    def get_vulnerabilities_0(ids, opts = {})
      data, _status_code, _headers = get_vulnerabilities_0_with_http_info(ids, opts)
      data
    end

    # Get details on vulnerabilities by providing one or more IDs
    # @param ids [Array<String>] One or more vulnerability IDs (max: 400). Find vulnerability IDs with GET /spotlight/queries/vulnerabilities/v1
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainSPAPIVulnerabilitiesEntitiesResponseV2, Integer, Hash)>] DomainSPAPIVulnerabilitiesEntitiesResponseV2 data, response status code and response headers
    def get_vulnerabilities_0_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpotlightVulnerabilitiesApi.get_vulnerabilities_0 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SpotlightVulnerabilitiesApi.get_vulnerabilities_0"
      end
      # resource path
      local_var_path = '/spotlight/entities/vulnerabilities/v2'

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
      return_type = opts[:debug_return_type] || 'DomainSPAPIVulnerabilitiesEntitiesResponseV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SpotlightVulnerabilitiesApi.get_vulnerabilities_0",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpotlightVulnerabilitiesApi#get_vulnerabilities_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria
    # @param filter [String] Filter items using a query in Falcon Query Language (FQL). Wildcards * and empty filter values are unsupported.    Available filter fields that supports match (~): N/A    Available filter fields that supports exact match: aid, cid, last_seen_within, status, cve.id, cve.is_cisa_kev, cve.remediation_level, cve.cps_rating, cve.exprt_rating, cve.exploit_status_to_include, cve.severity, cve.types, host_info.asset_criticality, host_info.asset_roles, host_info.internet_exposure, host_info.tags, host_info.groups, host_info.product_type_desc, host_info.platform_name, suppression_info.is_suppressed, suppression_info.reason    Available filter fields that supports wildcard (*): N/A    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): created_timestamp, closed_timestamp, updated_timestamp
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 400). Use with the after parameter to manage pagination of results.
    # @option opts [String] :sort Sort vulnerabilities by their properties. Available sort options:  &lt;ul&gt;&lt;li&gt;updated_timestamp|asc/desc&lt;/li&gt;&lt;li&gt;closed_timestamp|asc&lt;/li&gt;&lt;li&gt;updated_timestamp|asc/desc&lt;/li&gt;&lt;/ul&gt;. Can be used in a format &lt;field&gt;|asc for ascending order or &lt;field&gt;|desc for descending order.
    # @return [DomainSPAPIQueryResponse]
    def query_vulnerabilities_0(filter, opts = {})
      data, _status_code, _headers = query_vulnerabilities_0_with_http_info(filter, opts)
      data
    end

    # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria
    # @param filter [String] Filter items using a query in Falcon Query Language (FQL). Wildcards * and empty filter values are unsupported.    Available filter fields that supports match (~): N/A    Available filter fields that supports exact match: aid, cid, last_seen_within, status, cve.id, cve.is_cisa_kev, cve.remediation_level, cve.cps_rating, cve.exprt_rating, cve.exploit_status_to_include, cve.severity, cve.types, host_info.asset_criticality, host_info.asset_roles, host_info.internet_exposure, host_info.tags, host_info.groups, host_info.product_type_desc, host_info.platform_name, suppression_info.is_suppressed, suppression_info.reason    Available filter fields that supports wildcard (*): N/A    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): created_timestamp, closed_timestamp, updated_timestamp
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
    # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 400). Use with the after parameter to manage pagination of results.
    # @option opts [String] :sort Sort vulnerabilities by their properties. Available sort options:  &lt;ul&gt;&lt;li&gt;updated_timestamp|asc/desc&lt;/li&gt;&lt;li&gt;closed_timestamp|asc&lt;/li&gt;&lt;li&gt;updated_timestamp|asc/desc&lt;/li&gt;&lt;/ul&gt;. Can be used in a format &lt;field&gt;|asc for ascending order or &lt;field&gt;|desc for descending order.
    # @return [Array<(DomainSPAPIQueryResponse, Integer, Hash)>] DomainSPAPIQueryResponse data, response status code and response headers
    def query_vulnerabilities_0_with_http_info(filter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpotlightVulnerabilitiesApi.query_vulnerabilities_0 ...'
      end
      # verify the required parameter 'filter' is set
      if @api_client.config.client_side_validation && filter.nil?
        fail ArgumentError, "Missing the required parameter 'filter' when calling SpotlightVulnerabilitiesApi.query_vulnerabilities_0"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 400
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SpotlightVulnerabilitiesApi.query_vulnerabilities_0, must be smaller than or equal to 400.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SpotlightVulnerabilitiesApi.query_vulnerabilities_0, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/spotlight/queries/vulnerabilities/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = filter
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
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
      return_type = opts[:debug_return_type] || 'DomainSPAPIQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SpotlightVulnerabilitiesApi.query_vulnerabilities_0",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpotlightVulnerabilitiesApi#query_vulnerabilities_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

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
  class Malquery
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time
    # @param ids [Array<String>] The file SHA256.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_mal_query_download_v1(ids, opts = {})
      get_mal_query_download_v1_with_http_info(ids, opts)
      nil
    end

    # Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time
    # @param ids [Array<String>] The file SHA256.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_mal_query_download_v1_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.get_mal_query_download_v1 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling Malquery.get_mal_query_download_v1"
      end
      # resource path
      local_var_path = '/malquery/entities/download-files/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.get_mal_query_download_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#get_mal_query_download_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch a zip archive with password 'infected' containing the samples. Call this once the /entities/samples-multidownload request has finished processing
    # @param ids [String] Multidownload job id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_mal_query_entities_samples_fetch_v1(ids, opts = {})
      get_mal_query_entities_samples_fetch_v1_with_http_info(ids, opts)
      nil
    end

    # Fetch a zip archive with password &#39;infected&#39; containing the samples. Call this once the /entities/samples-multidownload request has finished processing
    # @param ids [String] Multidownload job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_mal_query_entities_samples_fetch_v1_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.get_mal_query_entities_samples_fetch_v1 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling Malquery.get_mal_query_entities_samples_fetch_v1"
      end
      # resource path
      local_var_path = '/malquery/entities/samples-fetch/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.get_mal_query_entities_samples_fetch_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#get_mal_query_entities_samples_fetch_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve indexed files metadata by their hash
    # @param ids [Array<String>] The file SHA256.
    # @param [Hash] opts the optional parameters
    # @return [MalquerySampleMetadataResponse]
    def get_mal_query_metadata_v1(ids, opts = {})
      data, _status_code, _headers = get_mal_query_metadata_v1_with_http_info(ids, opts)
      data
    end

    # Retrieve indexed files metadata by their hash
    # @param ids [Array<String>] The file SHA256.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MalquerySampleMetadataResponse, Integer, Hash)>] MalquerySampleMetadataResponse data, response status code and response headers
    def get_mal_query_metadata_v1_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.get_mal_query_metadata_v1 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling Malquery.get_mal_query_metadata_v1"
      end
      # resource path
      local_var_path = '/malquery/entities/metadata/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MalquerySampleMetadataResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.get_mal_query_metadata_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#get_mal_query_metadata_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about search and download quotas in your environment
    # @param [Hash] opts the optional parameters
    # @return [MalqueryRateLimitsResponse]
    def get_mal_query_quotas_v1(opts = {})
      data, _status_code, _headers = get_mal_query_quotas_v1_with_http_info(opts)
      data
    end

    # Get information about search and download quotas in your environment
    # @param [Hash] opts the optional parameters
    # @return [Array<(MalqueryRateLimitsResponse, Integer, Hash)>] MalqueryRateLimitsResponse data, response status code and response headers
    def get_mal_query_quotas_v1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.get_mal_query_quotas_v1 ...'
      end
      # resource path
      local_var_path = '/malquery/aggregates/quotas/v1'

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
      return_type = opts[:debug_return_type] || 'MalqueryRateLimitsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.get_mal_query_quotas_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#get_mal_query_quotas_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.
    # @param ids [Array<String>] Identifier of a MalQuery request
    # @param [Hash] opts the optional parameters
    # @return [MalqueryRequestResponse]
    def get_mal_query_request_v1(ids, opts = {})
      data, _status_code, _headers = get_mal_query_request_v1_with_http_info(ids, opts)
      data
    end

    # Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.
    # @param ids [Array<String>] Identifier of a MalQuery request
    # @param [Hash] opts the optional parameters
    # @return [Array<(MalqueryRequestResponse, Integer, Hash)>] MalqueryRequestResponse data, response status code and response headers
    def get_mal_query_request_v1_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.get_mal_query_request_v1 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling Malquery.get_mal_query_request_v1"
      end
      # resource path
      local_var_path = '/malquery/entities/requests/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MalqueryRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.get_mal_query_request_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#get_mal_query_request_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip
    # @param body [MalqueryMultiDownloadRequestV1] Download request. See model for more details.
    # @param [Hash] opts the optional parameters
    # @return [MalqueryExternalQueryResponse]
    def post_mal_query_entities_samples_multidownload_v1(body, opts = {})
      data, _status_code, _headers = post_mal_query_entities_samples_multidownload_v1_with_http_info(body, opts)
      data
    end

    # Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip
    # @param body [MalqueryMultiDownloadRequestV1] Download request. See model for more details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MalqueryExternalQueryResponse, Integer, Hash)>] MalqueryExternalQueryResponse data, response status code and response headers
    def post_mal_query_entities_samples_multidownload_v1_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.post_mal_query_entities_samples_multidownload_v1 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling Malquery.post_mal_query_entities_samples_multidownload_v1"
      end
      # resource path
      local_var_path = '/malquery/entities/samples-multidownload/v1'

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
      return_type = opts[:debug_return_type] || 'MalqueryExternalQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.post_mal_query_entities_samples_multidownload_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#post_mal_query_entities_samples_multidownload_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint
    # @param body [MalqueryExternalExactSearchParametersV1] Exact search parameters. See model for more details.
    # @param [Hash] opts the optional parameters
    # @return [MalqueryExternalQueryResponse]
    def post_mal_query_exact_search_v1(body, opts = {})
      data, _status_code, _headers = post_mal_query_exact_search_v1_with_http_info(body, opts)
      data
    end

    # Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint
    # @param body [MalqueryExternalExactSearchParametersV1] Exact search parameters. See model for more details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MalqueryExternalQueryResponse, Integer, Hash)>] MalqueryExternalQueryResponse data, response status code and response headers
    def post_mal_query_exact_search_v1_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.post_mal_query_exact_search_v1 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling Malquery.post_mal_query_exact_search_v1"
      end
      # resource path
      local_var_path = '/malquery/queries/exact-search/v1'

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
      return_type = opts[:debug_return_type] || 'MalqueryExternalQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.post_mal_query_exact_search_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#post_mal_query_exact_search_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.
    # @param body [MalqueryFuzzySearchParametersV1] Fuzzy search parameters. See model for more details.
    # @param [Hash] opts the optional parameters
    # @return [MalqueryFuzzySearchResponse]
    def post_mal_query_fuzzy_search_v1(body, opts = {})
      data, _status_code, _headers = post_mal_query_fuzzy_search_v1_with_http_info(body, opts)
      data
    end

    # Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.
    # @param body [MalqueryFuzzySearchParametersV1] Fuzzy search parameters. See model for more details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MalqueryFuzzySearchResponse, Integer, Hash)>] MalqueryFuzzySearchResponse data, response status code and response headers
    def post_mal_query_fuzzy_search_v1_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.post_mal_query_fuzzy_search_v1 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling Malquery.post_mal_query_fuzzy_search_v1"
      end
      # resource path
      local_var_path = '/malquery/combined/fuzzy-search/v1'

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
      return_type = opts[:debug_return_type] || 'MalqueryFuzzySearchResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.post_mal_query_fuzzy_search_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#post_mal_query_fuzzy_search_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint
    # @param body [MalqueryExternalHuntParametersV1] Hunt parameters. See model for more details.
    # @param [Hash] opts the optional parameters
    # @return [MalqueryExternalQueryResponse]
    def post_mal_query_hunt_v1(body, opts = {})
      data, _status_code, _headers = post_mal_query_hunt_v1_with_http_info(body, opts)
      data
    end

    # Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint
    # @param body [MalqueryExternalHuntParametersV1] Hunt parameters. See model for more details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MalqueryExternalQueryResponse, Integer, Hash)>] MalqueryExternalQueryResponse data, response status code and response headers
    def post_mal_query_hunt_v1_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Malquery.post_mal_query_hunt_v1 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling Malquery.post_mal_query_hunt_v1"
      end
      # resource path
      local_var_path = '/malquery/queries/hunt/v1'

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
      return_type = opts[:debug_return_type] || 'MalqueryExternalQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"Malquery.post_mal_query_hunt_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Malquery#post_mal_query_hunt_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
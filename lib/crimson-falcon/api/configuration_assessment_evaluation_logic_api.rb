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
  class ConfigurationAssessmentEvaluationLogicApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get details on evaluation logic items by providing one or more finding IDs.
    # @param ids [Array<String>] One or more evaluation logic finding IDs.
    # @param [Hash] opts the optional parameters
    # @return [DomainAPIEvaluationLogicEntitiesResponseV1]
    def get_evaluation_logic_mixin0(ids, opts = {})
      data, _status_code, _headers = get_evaluation_logic_mixin0_with_http_info(ids, opts)
      data
    end

    # Get details on evaluation logic items by providing one or more finding IDs.
    # @param ids [Array<String>] One or more evaluation logic finding IDs.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainAPIEvaluationLogicEntitiesResponseV1, Integer, Hash)>] DomainAPIEvaluationLogicEntitiesResponseV1 data, response status code and response headers
    def get_evaluation_logic_mixin0_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationAssessmentEvaluationLogicApi.get_evaluation_logic_mixin0 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ConfigurationAssessmentEvaluationLogicApi.get_evaluation_logic_mixin0"
      end
      # resource path
      local_var_path = '/configuration-assessment/entities/evaluation-logic/v1'

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
      return_type = opts[:debug_return_type] || 'DomainAPIEvaluationLogicEntitiesResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"ConfigurationAssessmentEvaluationLogicApi.get_evaluation_logic_mixin0",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationAssessmentEvaluationLogicApi#get_evaluation_logic_mixin0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

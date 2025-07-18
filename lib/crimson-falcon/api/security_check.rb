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
  class SecurityCheck
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # POST Dismiss Affected Entity
    # Preform dismiss to an affected entity in a security check
    # @param id [String] Security Check ID
    # @param [Hash] opts the optional parameters
    # @return [DismissAffected]
    def dismiss_affected_entity_v3(id, opts = {})
      data, _status_code, _headers = dismiss_affected_entity_v3_with_http_info(id, opts)
      data
    end

    # POST Dismiss Affected Entity
    # Preform dismiss to an affected entity in a security check
    # @param id [String] Security Check ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DismissAffected, Integer, Hash)>] DismissAffected data, response status code and response headers
    def dismiss_affected_entity_v3_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityCheck.dismiss_affected_entity_v3 ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SecurityCheck.dismiss_affected_entity_v3"
      end
      # resource path
      local_var_path = '/saas-security/entities/check-dismiss-affected/v3'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DismissAffected'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SecurityCheck.dismiss_affected_entity_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityCheck#dismiss_affected_entity_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # POST Dismiss Security Check by ID
    # Preform dismiss to a security check
    # @param id [String] Security Check ID
    # @param [Hash] opts the optional parameters
    # @return [DismissSecurityCheck]
    def dismiss_security_check_v3(id, opts = {})
      data, _status_code, _headers = dismiss_security_check_v3_with_http_info(id, opts)
      data
    end

    # POST Dismiss Security Check by ID
    # Preform dismiss to a security check
    # @param id [String] Security Check ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DismissSecurityCheck, Integer, Hash)>] DismissSecurityCheck data, response status code and response headers
    def dismiss_security_check_v3_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityCheck.dismiss_security_check_v3 ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SecurityCheck.dismiss_security_check_v3"
      end
      # resource path
      local_var_path = '/saas-security/entities/check-dismiss/v3'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DismissSecurityCheck'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SecurityCheck.dismiss_security_check_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityCheck#dismiss_security_check_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET Metrics
    # Get metrics on security checks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Exposure status
    # @option opts [Integer] :limit The maximum number of objects to return
    # @option opts [Integer] :offset The starting index of the results
    # @option opts [String] :integration_id Comma separated list of integration IDs
    # @option opts [String] :impact Impact
    # @option opts [Boolean] :compliance Compliance
    # @option opts [String] :check_type Check Type
    # @return [GetMetrics]
    def get_metrics_v3(opts = {})
      data, _status_code, _headers = get_metrics_v3_with_http_info(opts)
      data
    end

    # GET Metrics
    # Get metrics on security checks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Exposure status
    # @option opts [Integer] :limit The maximum number of objects to return
    # @option opts [Integer] :offset The starting index of the results
    # @option opts [String] :integration_id Comma separated list of integration IDs
    # @option opts [String] :impact Impact
    # @option opts [Boolean] :compliance Compliance
    # @option opts [String] :check_type Check Type
    # @return [Array<(GetMetrics, Integer, Hash)>] GetMetrics data, response status code and response headers
    def get_metrics_v3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityCheck.get_metrics_v3 ...'
      end
      allowable_values = ["Passed", "Failed", "Dismissed", "Pending", "Can't Run", "Stale"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      allowable_values = ["1", "2", "3"]
      if @api_client.config.client_side_validation && opts[:'impact'] && !allowable_values.include?(opts[:'impact'])
        fail ArgumentError, "invalid value for \"impact\", must be one of #{allowable_values}"
      end
      allowable_values = ["apps", "devices", "users", "assets", "permissions", "Adaptive Shield Check", "custom"]
      if @api_client.config.client_side_validation && opts[:'check_type'] && !allowable_values.include?(opts[:'check_type'])
        fail ArgumentError, "invalid value for \"check_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/saas-security/aggregates/check-metrics/v3'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'integration_id'] = opts[:'integration_id'] if !opts[:'integration_id'].nil?
      query_params[:'impact'] = opts[:'impact'] if !opts[:'impact'].nil?
      query_params[:'compliance'] = opts[:'compliance'] if !opts[:'compliance'].nil?
      query_params[:'check_type'] = opts[:'check_type'] if !opts[:'check_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetMetrics'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SecurityCheck.get_metrics_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityCheck#get_metrics_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET Security Check Affected
    # Get a list of affected entities
    # @param id [String] Security Check ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of objects to return
    # @option opts [Integer] :offset The starting index of the results
    # @return [GetAffected]
    def get_security_check_affected_v3(id, opts = {})
      data, _status_code, _headers = get_security_check_affected_v3_with_http_info(id, opts)
      data
    end

    # GET Security Check Affected
    # Get a list of affected entities
    # @param id [String] Security Check ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of objects to return
    # @option opts [Integer] :offset The starting index of the results
    # @return [Array<(GetAffected, Integer, Hash)>] GetAffected data, response status code and response headers
    def get_security_check_affected_v3_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityCheck.get_security_check_affected_v3 ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SecurityCheck.get_security_check_affected_v3"
      end
      # resource path
      local_var_path = '/saas-security/entities/check-affected/v3'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAffected'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SecurityCheck.get_security_check_affected_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityCheck#get_security_check_affected_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET Compliance
    # Get a list of compliance standards attached to a check
    # @param id [String] Security Check ID
    # @param [Hash] opts the optional parameters
    # @return [GetSecurityCompliance]
    def get_security_check_compliance_v3(id, opts = {})
      data, _status_code, _headers = get_security_check_compliance_v3_with_http_info(id, opts)
      data
    end

    # GET Compliance
    # Get a list of compliance standards attached to a check
    # @param id [String] Security Check ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSecurityCompliance, Integer, Hash)>] GetSecurityCompliance data, response status code and response headers
    def get_security_check_compliance_v3_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityCheck.get_security_check_compliance_v3 ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SecurityCheck.get_security_check_compliance_v3"
      end
      # resource path
      local_var_path = '/saas-security/entities/compliance/v3'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetSecurityCompliance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SecurityCheck.get_security_check_compliance_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityCheck#get_security_check_compliance_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET Security Check by ID or GET List Security Checks
    # Get a specific security check by ID or Get all security checks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id Security Check ID
    # @option opts [Integer] :limit The maximum number of objects to return
    # @option opts [Integer] :offset The starting index of the results
    # @option opts [String] :status Exposure status
    # @option opts [String] :integration_id Comma separated list of integration IDs
    # @option opts [String] :impact Impact
    # @option opts [Boolean] :compliance Compliance
    # @option opts [String] :check_type Check Type
    # @return [GetSecurityChecks]
    def get_security_checks_v3(opts = {})
      data, _status_code, _headers = get_security_checks_v3_with_http_info(opts)
      data
    end

    # GET Security Check by ID or GET List Security Checks
    # Get a specific security check by ID or Get all security checks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id Security Check ID
    # @option opts [Integer] :limit The maximum number of objects to return
    # @option opts [Integer] :offset The starting index of the results
    # @option opts [String] :status Exposure status
    # @option opts [String] :integration_id Comma separated list of integration IDs
    # @option opts [String] :impact Impact
    # @option opts [Boolean] :compliance Compliance
    # @option opts [String] :check_type Check Type
    # @return [Array<(GetSecurityChecks, Integer, Hash)>] GetSecurityChecks data, response status code and response headers
    def get_security_checks_v3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityCheck.get_security_checks_v3 ...'
      end
      allowable_values = ["Passed", "Failed", "Dismissed", "Pending", "Can't Run", "Stale"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      allowable_values = ["1", "2", "3"]
      if @api_client.config.client_side_validation && opts[:'impact'] && !allowable_values.include?(opts[:'impact'])
        fail ArgumentError, "invalid value for \"impact\", must be one of #{allowable_values}"
      end
      allowable_values = ["apps", "devices", "users", "assets", "permissions", "Adaptive Shield Check", "custom"]
      if @api_client.config.client_side_validation && opts[:'check_type'] && !allowable_values.include?(opts[:'check_type'])
        fail ArgumentError, "invalid value for \"check_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/saas-security/entities/checks/v3'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'integration_id'] = opts[:'integration_id'] if !opts[:'integration_id'].nil?
      query_params[:'impact'] = opts[:'impact'] if !opts[:'impact'].nil?
      query_params[:'compliance'] = opts[:'compliance'] if !opts[:'compliance'].nil?
      query_params[:'check_type'] = opts[:'check_type'] if !opts[:'check_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetSecurityChecks'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SecurityCheck.get_security_checks_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityCheck#get_security_checks_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

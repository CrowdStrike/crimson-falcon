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

require 'spec_helper'
require 'json'

# Unit tests for Falcon::IocApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IocApi' do
  before do
    # run before each test
    @api_instance = Falcon::IocApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IocApi' do
    it 'should create an instance of IocApi' do
      expect(@api_instance).to be_instance_of(Falcon::IocApi)
    end
  end

  # unit tests for action_get_v1
  # Get Actions by ids.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids The ids of the Actions to retrieve
  # @return [ApiActionRespV1]
  describe 'action_get_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for action_query_v1
  # Query Actions.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @option opts [Integer] :limit Number of ids to return.
  # @return [ApiIndicatorQueryRespV1]
  describe 'action_query_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_indicators_report
  # Launch an indicators report creation job
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [MsaEntitiesResponse]
  describe 'get_indicators_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for indicator_aggregate_v1
  # Get Indicators aggregates as specified via json in the request body.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The filter to narrow down the aggregation data
  # @option opts [Boolean] :from_parent The filter for returning either only indicators for the request customer or its MSSP parents
  # @return [MsaAggregatesResponse]
  describe 'indicator_aggregate_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for indicator_combined_v1
  # Get Combined for Indicators.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The filter expression that should be used to limit the results.
  # @option opts [Integer] :offset The offset to start retrieving records from. Offset and After params are mutually exclusive. If none provided then scrolling will be used by default. To access more than 10k iocs, use the &#39;after&#39; parameter instead of &#39;offset&#39;.
  # @option opts [Integer] :limit The maximum records to return.
  # @option opts [String] :sort The sort expression that should be used to sort the results.
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#39;after&#39; token. On subsequent requests, provide the &#39;after&#39; token from the previous response to continue from that place in the results. To access more than 10k indicators, use the &#39;after&#39; parameter instead of &#39;offset&#39;.
  # @option opts [Boolean] :from_parent The filter for returning either only indicators for the request customer or its MSSP parents
  # @return [ApiIndicatorRespV1]
  describe 'indicator_combined_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for indicator_create_v1
  # Create Indicators.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :retrodetects Whether to submit to retrodetects
  # @option opts [Boolean] :ignore_warnings Set to true to ignore warnings and add all IOCs
  # @return [ApiIndicatorRespV1]
  describe 'indicator_create_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for indicator_delete_v1
  # Delete Indicators by ids.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The FQL expression to delete Indicators in bulk. If both &#39;filter&#39; and &#39;ids&#39; are provided, then filter takes precedence and ignores ids.
  # @option opts [Array<String>] :ids The ids of the Indicators to delete. If both &#39;filter&#39; and &#39;ids&#39; are provided, then filter takes precedence and ignores ids
  # @option opts [String] :comment The comment why these indicators were deleted
  # @option opts [Boolean] :from_parent The filter for returning either only indicators for the request customer or its MSSP parents
  # @return [ApiIndicatorQueryRespV1]
  describe 'indicator_delete_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for indicator_get_v1
  # Get Indicators by ids.
  # @param ids The ids of the Indicators to retrieve
  # @param [Hash] opts the optional parameters
  # @return [ApiIndicatorRespV1]
  describe 'indicator_get_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for indicator_search_v1
  # Search for Indicators.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The filter expression that should be used to limit the results.
  # @option opts [Integer] :offset The offset to start retrieving records from. Offset and After params are mutually exclusive. If none provided then scrolling will be used by default. To access more than 10k iocs, use the &#39;after&#39; parameter instead of &#39;offset&#39;.
  # @option opts [Integer] :limit The maximum records to return.
  # @option opts [String] :sort The sort expression that should be used to sort the results.
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#39;after&#39; token. On subsequent requests, provide the &#39;after&#39; token from the previous response to continue from that place in the results. To access more than 10k indicators, use the &#39;after&#39; parameter instead of &#39;offset&#39;.
  # @option opts [Boolean] :from_parent The filter for returning either only indicators for the request customer or its MSSP parents
  # @return [ApiIndicatorQueryRespV1]
  describe 'indicator_search_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for indicator_update_v1
  # Update Indicators.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :retrodetects Whether to submit to retrodetects
  # @option opts [Boolean] :ignore_warnings Set to true to ignore warnings and add all IOCs
  # @return [ApiIndicatorRespV1]
  describe 'indicator_update_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ioc_type_query_v1
  # Query IOC Types.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @option opts [Integer] :limit Number of ids to return.
  # @return [ApiIndicatorQueryRespV1]
  describe 'ioc_type_query_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for platform_query_v1
  # Query Platforms.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @option opts [Integer] :limit Number of ids to return.
  # @return [ApiIndicatorQueryRespV1]
  describe 'platform_query_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for severity_query_v1
  # Query Severities.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @option opts [Integer] :limit Number of ids to return.
  # @return [ApiIndicatorQueryRespV1]
  describe 'severity_query_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

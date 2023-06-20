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

# Unit tests for Falcon::SpotlightVulnerabilitiesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SpotlightVulnerabilitiesApi' do
  before do
    # run before each test
    @api_instance = Falcon::SpotlightVulnerabilitiesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SpotlightVulnerabilitiesApi' do
    it 'should create an instance of SpotlightVulnerabilitiesApi' do
      expect(@api_instance).to be_instance_of(Falcon::SpotlightVulnerabilitiesApi)
    end
  end

  # unit tests for combined_query_vulnerabilities
  # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria
  # @param filter Filter items using a query in Falcon Query Language (FQL). Wildcards * are unsupported.   Common filter options include:  &lt;ul&gt;&lt;li&gt;created_timestamp:&gt;&#39;2019-11-25T22:36:12Z&#39;&lt;/li&gt;&lt;li&gt;closed_timestamp:&gt;&#39;2019-11-25T22:36:12Z&#39;&lt;/li&gt;&lt;li&gt;aid:&#39;8e7656b27d8c49a34a1af416424d6231&#39;&lt;/li&gt;&lt;/ul&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
  # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 5000). Use with the after parameter to manage pagination of results.
  # @option opts [String] :sort Sort vulnerabilities by their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;updated_timestamp|asc&lt;/li&gt;&lt;li&gt;closed_timestamp|asc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [Array<String>] :facet Select various details blocks to be returned for each vulnerability entity. Supported values:  &lt;ul&gt;&lt;li&gt;host_info&lt;/li&gt;&lt;li&gt;remediation&lt;/li&gt;&lt;li&gt;cve&lt;/li&gt;&lt;li&gt;evaluation_logic&lt;/li&gt;&lt;/ul&gt;
  # @return [DomainSPAPICombinedVulnerabilitiesResponse]
  describe 'combined_query_vulnerabilities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_remediations_v2
  # Get details on remediation by providing one or more IDs
  # @param ids One or more remediation IDs
  # @param [Hash] opts the optional parameters
  # @return [DomainSPAPIRemediationEntitiesResponseV2]
  describe 'get_remediations_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_vulnerabilities
  # Get details on vulnerabilities by providing one or more IDs
  # @param ids One or more vulnerability IDs (max: 400). Find vulnerability IDs with GET /spotlight/queries/vulnerabilities/v1
  # @param [Hash] opts the optional parameters
  # @return [DomainSPAPIVulnerabilitiesEntitiesResponseV2]
  describe 'get_vulnerabilities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_vulnerabilities
  # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria
  # @param filter Filter items using a query in Falcon Query Language (FQL). Wildcards * are unsupported.   Common filter options include:  &lt;ul&gt;&lt;li&gt;created_timestamp:&gt;&#39;2019-11-25T22:36:12Z&#39;&lt;/li&gt;&lt;li&gt;closed_timestamp:&gt;&#39;2019-11-25T22:36:12Z&#39;&lt;/li&gt;&lt;li&gt;aid:&#39;8e7656b27d8c49a34a1af416424d6231&#39;&lt;/li&gt;&lt;/ul&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
  # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 400). Use with the after parameter to manage pagination of results.
  # @option opts [String] :sort Sort vulnerabilities by their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;updated_timestamp|asc&lt;/li&gt;&lt;li&gt;closed_timestamp|asc&lt;/li&gt;&lt;/ul&gt;
  # @return [DomainSPAPIQueryResponse]
  describe 'query_vulnerabilities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

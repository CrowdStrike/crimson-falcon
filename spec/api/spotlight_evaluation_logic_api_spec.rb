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

require 'spec_helper'
require 'json'

# Unit tests for Falcon::SpotlightEvaluationLogic
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SpotlightEvaluationLogic' do
  before do
    # run before each test
    @api_instance = Falcon::SpotlightEvaluationLogic.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SpotlightEvaluationLogic' do
    it 'should create an instance of SpotlightEvaluationLogic' do
      expect(@api_instance).to be_instance_of(Falcon::SpotlightEvaluationLogic)
    end
  end

  # unit tests for combined_query_evaluation_logic
  # Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria.
  # @param filter FQL query specifying the filter parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
  # @option opts [Integer] :limit Maximum number of entities to return.
  # @option opts [String] :sort Sort evaluation logic by their properties.
  # @return [DomainSPAPIEvaluationLogicCombinedResponseV1]
  describe 'combined_query_evaluation_logic test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_evaluation_logic
  # Get details on evaluation logic items by providing one or more IDs.
  # @param ids One or more evaluation logic IDs.
  # @param [Hash] opts the optional parameters
  # @return [DomainSPAPIEvaluationLogicEntitiesResponseV1]
  describe 'get_evaluation_logic test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_evaluation_logic
  # Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria.
  # @param filter FQL query specifying the filter parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
  # @option opts [Integer] :limit Maximum number of entities to return.
  # @option opts [String] :sort Sort evaluation logic by their properties.
  # @return [DomainSPAPIQueryResponse]
  describe 'query_evaluation_logic test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

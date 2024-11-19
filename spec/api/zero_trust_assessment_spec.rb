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

# Unit tests for Falcon::ZeroTrustAssessment
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ZeroTrustAssessment' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::ZeroTrustAssessment.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of ZeroTrustAssessment' do
    it 'should create an instance of ZeroTrustAssessment' do
      expect(@api_instance).to be_instance_of(Falcon::ZeroTrustAssessment)
    end
  end

  # unit tests for get_assessment_v1
  # Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID).
  # @param ids One or more agent IDs, which you can find in the data.zta file, or the Falcon console.
  # @param [Hash] opts the optional parameters
  # @return [DomainAssessmentsResponse]
  describe 'get_assessment_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_assessments_by_score_v1
  # Get Zero Trust Assessment data for one or more hosts by providing a customer ID (CID) and a range of scores.
  # @param filter FQL query specifying the filter score.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of scores to return in this response (min: 1, max: 1000, default: 100). Use with the &#x60;after&#x60; parameter to manage pagination of results.
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
  # @option opts [String] :sort Sort accounts by their properties. A single sort field is allowed. Defaults to ascending. Supported sort option include:  &lt;ul&gt;&lt;li&gt;score|desc&lt;/li&gt;&lt;li&gt;score|asc&lt;/li&gt;&lt;/ul&gt;
  # @return [DomainAssessmentsByScoreResponse]
  describe 'get_assessments_by_score_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_audit_v1
  # Get the Zero Trust Assessment audit report for one customer ID (CID).
  # @param [Hash] opts the optional parameters
  # @return [DomainAuditResponse]
  describe 'get_audit_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
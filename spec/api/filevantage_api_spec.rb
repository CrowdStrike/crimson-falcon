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

# Unit tests for Falcon::FilevantageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FilevantageApi' do
  before do
    # run before each test
    @api_instance = Falcon::FilevantageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FilevantageApi' do
    it 'should create an instance of FilevantageApi' do
      expect(@api_instance).to be_instance_of(Falcon::FilevantageApi)
    end
  end

  # unit tests for get_changes
  # Retrieve information on changes
  # Retrieve key attributes of Falcon FileVantage changes for the specified ids.
  # @param ids Comma separated values of change ids
  # @param [Hash] opts the optional parameters
  # @return [PublicGetChangesResponse]
  describe 'get_changes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_changes
  # Returns one or more change IDs
  # Returns a list of Falcon FileVantage change IDs filtered, sorted and limited by the query parameters provided
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The first change index to return in the response. If not provided it will default to &#39;0&#39;. Use with the &#x60;limit&#x60; parameter to manage pagination of results.
  # @option opts [Integer] :limit The maximum number of changes to return in the response (default: 100; max: 500). Use with the &#x60;offset&#x60; parameter to manage pagination of results
  # @option opts [String] :sort Sort changes using options like:  - &#x60;action_timestamp&#x60; (timestamp of the change occurrence)    Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). For example: &#x60;action_timestamp|asc&#x60;. The full list of allowed sorting options can be reviewed in our API documentation.
  # @option opts [String] :filter Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;host.host_name&#x60;  - &#x60;action_timestamp&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation.
  # @return [MsaspecQueryResponse]
  describe 'query_changes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

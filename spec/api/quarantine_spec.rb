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

# Unit tests for Falcon::Quarantine
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Quarantine' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::Quarantine.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of Quarantine' do
    it 'should create an instance of Quarantine' do
      expect(@api_instance).to be_instance_of(Falcon::Quarantine)
    end
  end

  # unit tests for action_update_count
  # Returns count of potentially affected quarantined files for each action.
  # @param filter FQL specifying filter parameters.
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'action_update_count test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_aggregate_files
  # Get quarantine file aggregates as specified via json in request body.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'get_aggregate_files test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_quarantine_files
  # Get quarantine file metadata for specified ids.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DomainMsaQfResponse]
  describe 'get_quarantine_files test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_quarantine_files
  # Get quarantine file ids that match the provided filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @option opts [Integer] :limit Number of ids to return.
  # @option opts [String] :sort Possible order by fields: hostname, username, date_updated, date_created, paths.path, state, paths.state. Ex: &#39;date_created|asc&#39;.
  # @option opts [String] :filter FQL query specifying the filter parameters. Special value &#39;*&#39; means to not filter on anything. Filter term criteria: status, adversary_id, device.device_id, device.country, device.hostname, behaviors.behavior_id, behaviors.ioc_type, behaviors.ioc_value, behaviors.username, behaviors.tree_root_hash. Filter range criteria:, max_severity, max_confidence, first_behavior, last_behavior.
  # @option opts [String] :q Match phrase_prefix query criteria; included fields: _all (all filter string fields), sha256, state, paths.path, paths.state, hostname, username, date_updated, date_created.
  # @return [MsaspecQueryResponse]
  describe 'query_quarantine_files test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_qf_by_query
  # Apply quarantine file actions by query.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyMetaOnly]
  describe 'update_qf_by_query test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_quarantined_detects_by_ids
  # Apply action by quarantine file ids
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyMetaOnly]
  describe 'update_quarantined_detects_by_ids test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

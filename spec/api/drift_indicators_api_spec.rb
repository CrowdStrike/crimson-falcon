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

# Unit tests for Falcon::DriftIndicatorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DriftIndicatorsApi' do
  before do
    # run before each test
    @api_instance = Falcon::DriftIndicatorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DriftIndicatorsApi' do
    it 'should create an instance of DriftIndicatorsApi' do
      expect(@api_instance).to be_instance_of(Falcon::DriftIndicatorsApi)
    end
  end

  # unit tests for get_drift_indicators_values_by_date
  # Returns the count of Drift Indicators by the date. by default it&#39;s for 7 days.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter drift indicators using a query in Falcon Query Language (FQL). Supported filters: cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @return [DriftindicatorsDriftIndicatorsFieldValue]
  describe 'get_drift_indicators_values_by_date test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_drift_indicator_entities
  # Retrieve Drift Indicator entities identified by the provided IDs
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids Search Drift Indicators by ids - The maximum amount is 100 IDs
  # @return [DriftindicatorsDriftEntityResponse]
  describe 'read_drift_indicator_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_drift_indicators_count
  # Returns the total count of Drift indicators over a time period
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name
  # @return [DriftindicatorsDriftIndicatorsCountValue]
  describe 'read_drift_indicators_count test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_and_read_drift_indicator_entities
  # Retrieve Drift Indicators by the provided search criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @option opts [String] :sort The fields to sort the records on.
  # @return [DriftindicatorsDriftEntityResponse]
  describe 'search_and_read_drift_indicator_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_drift_indicators
  # Retrieve all drift indicators that match the given query
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @option opts [String] :sort The fields to sort the records on.
  # @return [MsaspecQueryResponse]
  describe 'search_drift_indicators test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

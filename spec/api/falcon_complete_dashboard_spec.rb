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

# Unit tests for Falcon::FalconCompleteDashboard
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FalconCompleteDashboard' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::FalconCompleteDashboard.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of FalconCompleteDashboard' do
    it 'should create an instance of FalconCompleteDashboard' do
      expect(@api_instance).to be_instance_of(Falcon::FalconCompleteDashboard)
    end
  end

  # unit tests for aggregate_alerts
  # Retrieve aggregate alerts values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_alerts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_allow_list
  # Retrieve aggregate allowlist ticket values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_allow_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_block_list
  # Retrieve aggregate blocklist ticket values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_block_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_detections
  # Retrieve aggregate detection values based on the matched filter
  # Fields allowed to aggregate on:  - indexed_time   - created_time   - detect_time   - ldt   - cid   - aid   - platform_name   - os_version   - device_tags   - host_name   - status   - severity   - adversary_ids   - behavior_ids   - behavior_names   - num_blocked_processes   - num_quarantined_files   - pattern_ids   - first_behavior_time   - last_behavior_time   - show_in_ui   - seconds_to_triaged   - seconds_to_resolved   - assigned_to_uid   - public_tags   - vertical_tags
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_detections test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_device_count_collection
  # Retrieve aggregate host/devices count based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_device_count_collection test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_escalations
  # Retrieve aggregate escalation ticket values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_escalations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_fc_incidents
  # Retrieve aggregate incident values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_fc_incidents test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_prevention_policy
  # Retrieve prevention policies aggregate values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_prevention_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_remediations
  # Retrieve aggregate remediation ticket values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_remediations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_sensor_update_policy
  # Retrieve sensor update policies aggregate values
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_sensor_update_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_support_issues
  # Retrieve aggregate support issue ticket values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_support_issues test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for aggregate_total_device_counts
  # Retrieve aggregate total host/devices based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_total_device_counts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_device_count_collection_queries_by_filter
  # Retrieve device count collection Ids that match the provided FQL filter, criteria with scrolling enabled
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'get_device_count_collection_queries_by_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_alert_ids_by_filter
  # Retrieve Alerts Ids that match the provided FQL filter criteria with scrolling enabled
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_alert_ids_by_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_allow_list_filter
  # Retrieve allowlist tickets that match the provided filter criteria with scrolling enabled
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_allow_list_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_block_list_filter
  # Retrieve block listtickets that match the provided filter criteria with scrolling enabled
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_block_list_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_detection_ids_by_filter
  # Retrieve DetectionsIds that match the provided FQL filter, criteria with scrolling enabled
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_detection_ids_by_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_escalations_filter
  # Retrieve escalation tickets that match the provided filter criteria with scrolling enabled
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_escalations_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_incident_ids_by_filter
  # Retrieve incidents that match the provided filter criteria with scrolling enabled
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_incident_ids_by_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_remediations_filter
  # Retrieve remediation tickets that match the provided filter criteria with scrolling enabled
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_remediations_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
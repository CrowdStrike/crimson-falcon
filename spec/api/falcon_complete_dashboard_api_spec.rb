=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and examples, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation).     To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`.    Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2023-05-30T23:10:32Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::FalconCompleteDashboardApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FalconCompleteDashboardApi' do
  before do
    # run before each test
    @api_instance = Falcon::FalconCompleteDashboardApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FalconCompleteDashboardApi' do
    it 'should create an instance of FalconCompleteDashboardApi' do
      expect(@api_instance).to be_instance_of(Falcon::FalconCompleteDashboardApi)
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

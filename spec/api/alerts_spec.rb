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

# Unit tests for Falcon::Alerts
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Alerts' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::Alerts.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of Alerts' do
    it 'should create an instance of Alerts' do
      expect(@api_instance).to be_instance_of(Falcon::Alerts)
    end
  end

  # unit tests for get_queries_alerts_v1
  # Deprecated: please use version v2 of this endpoint. Retrieves all Alerts ids that match a given query.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The first detection to return, where &#x60;0&#x60; is the latest detection. Use with the &#x60;offset&#x60; parameter to manage pagination of results.
  # @option opts [Integer] :limit The maximum number of detections to return in this response (default: 100; max: 10000). Use this parameter together with the &#x60;offset&#x60; parameter to manage pagination of the results.
  # @option opts [String] :sort Sort parameter takes the form &lt;field|direction&gt;. Direction can be either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending) order. For example: &#x60;status|asc&#x60; or &#x60;status|desc&#x60;.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering
  # @option opts [String] :filter Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard &#x60;*&#x60; includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).
  # @option opts [String] :q Search all alert metadata for the provided string
  # @return [DetectsapiAlertQueryResponse]
  describe 'get_queries_alerts_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_queries_alerts_v2
  # Retrieves all Alerts ids that match a given query.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_hidden allows previously hidden alerts to be retrieved
  # @option opts [Integer] :offset The first detection to return, where &#x60;0&#x60; is the latest detection. Use with the &#x60;offset&#x60; parameter to manage pagination of results.
  # @option opts [Integer] :limit The maximum number of detections to return in this response (default: 100; max: 10000). Use this parameter together with the &#x60;offset&#x60; parameter to manage pagination of the results.
  # @option opts [String] :sort Sort parameter takes the form &lt;field|direction&gt;. Direction can be either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending) order. For example: &#x60;status|asc&#x60; or &#x60;status|desc&#x60;.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering
  # @option opts [String] :filter Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard &#x60;*&#x60; includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).
  # @option opts [String] :q Search all alert metadata for the provided string
  # @return [DetectsapiAlertQueryResponse]
  describe 'get_queries_alerts_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_entities_alerts_v2
  # Deprecated: Please use version v3 of this endpoint. Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.
  # @param body &#x60;ids&#x60; - IDs of Alerts to modify.  &#x60;action_parameters&#x60; values - &#x60;assign_to_uuid&#x60;  - Assign Alert to user UUID, such as &#x60;00000000-0000-0000-0000-000000000000&#x60; - &#x60;assign_to_user_id&#x60;  - Assign Alert to user ID, such as &#x60;user@example.com&#x60; - &#x60;assign_to_name&#x60;  - Assign Alert to username, such as &#x60;John Doe&#x60; - &#x60;unassign&#x60;  - Unassign Alert clears out the assigned user UUID, user ID, and username. - &#x60;add_tag&#x60;   - Add a tag to the Alert. - &#x60;remove_tag&#x60;  - Remove a tag from the Alert. - &#x60;remove_tags_by_prefix&#x60;  - Remove tags from the Alert based on the prefix. - &#x60;append_comment&#x60;  - Comments are displayed with the Alert in Falcon and are usually used to provide context or notes for other Falcon users. An Alert can have multiple comments over time. - &#x60;update_status&#x60; values  - &#x60;new&#x60;  - &#x60;in_progress&#x60;  - &#x60;reopened&#x60;  - &#x60;closed&#x60; - &#x60;show_in_ui&#x60; values  - &#x60;true&#x60;: This alert is displayed in Falcon  - &#x60;false&#x60;: This alert is not displayed in Falcon.
  # @param [Hash] opts the optional parameters
  # @return [DetectsapiResponseFields]
  describe 'patch_entities_alerts_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_entities_alerts_v3
  # Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.
  # @param body &#x60;composite_ids&#x60; - CompositeIDs of Alerts to modify.  &#x60;action_parameters&#x60; values - &#x60;assign_to_uuid&#x60;  - Assign Alert to user UUID, such as &#x60;00000000-0000-0000-0000-000000000000&#x60; - &#x60;assign_to_user_id&#x60;  - Assign Alert to user ID, such as &#x60;user@example.com&#x60; - &#x60;assign_to_name&#x60;  - Assign Alert to username, such as &#x60;John Doe&#x60; - &#x60;unassign&#x60;  - Unassign Alert clears out the assigned user UUID, user ID, and username. - &#x60;add_tag&#x60;   - Add a tag to the Alert. - &#x60;remove_tag&#x60;  - Remove a tag from the Alert. - &#x60;remove_tags_by_prefix&#x60;  - Remove tags from the Alert based on the prefix. - &#x60;append_comment&#x60;  - Comments are displayed with the Alert in Falcon and are usually used to provide context or notes for other Falcon users. An Alert can have multiple comments over time. - &#x60;update_status&#x60; values  - &#x60;new&#x60;  - &#x60;in_progress&#x60;  - &#x60;reopened&#x60;  - &#x60;closed&#x60; - &#x60;show_in_ui&#x60; values  - &#x60;true&#x60;: This alert is displayed in Falcon  - &#x60;false&#x60;: This alert is not displayed in Falcon.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_hidden allows previously hidden alerts to be retrieved
  # @return [DetectsapiResponseFields]
  describe 'patch_entities_alerts_v3 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_aggregates_alerts_v1
  # Deprecated: Please use version v2 of this endpoint. Retrieves aggregate values for Alerts across all CIDs.
  # @param body request body takes a list of aggregate-alert query requests
  # @param [Hash] opts the optional parameters
  # @return [DetectsapiAggregatesResponse]
  describe 'post_aggregates_alerts_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_aggregates_alerts_v2
  # Retrieves aggregate values for Alerts across all CIDs.
  # @param body request body takes a list of aggregate-alert query requests
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_hidden allows previously hidden alerts to be retrieved
  # @return [DetectsapiAggregatesResponse]
  describe 'post_aggregates_alerts_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_combined_alerts_v1
  # Retrieves all Alerts that match a particular FQL filter.
  # @param body &#x60;after&#x60; - Token used to access the next page. The &#x60;after&#x60; token will be populated only when the service expects more results expected on the next page.  Once you reach the last page (which usually has less than &#x60;limit&#x60; results), the &#x60;after&#x60; token will not be returned anymore.   The best way to retrieve all the results is to paginate them till you get to the last page where the &#x60;after&#x60; token blank.   This value is highly dependant on the &#x60;sort&#x60; parameter, so if you plan to change the sort order, you will have to re-start your search from the first page (without &#x60;after&#x60; parameter).  &#x60;filter&#x60; - Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard &#x60;*&#x60; includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).  &#x60;limit&#x60; - The maximum number of detections to return in this response (default: 100; max: 1000). Use this parameter together with the &#x60;after&#x60; parameter to manage pagination of the results.  &#x60;sort&#x60; - Sort parameter takes the form of &#x60;&lt;field|direction&gt;&#x60;.   The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields for sorting are: timestamp, created_timestamp, updated_timestamp, status, aggregate_id, assigned_to_name, assigned_to_uid, assigned_to_uuid, tactic_id, tactic, technique, technique_id, pattern_id or product.  By default all the results are sorted by the &#x60;created_timestamp&#x60; field in the descending order.  **Important:** The pagination is done on live data in the order defined by the &#x60;sort&#x60; field parameter (default: &#x60;created_timestamp|desc&#x60;), so if you want to avoid inconsistent results where the same record might appear on multiple pages (or none), sort only on the fields that do not change over time (e.g. created_timestamp, composite_id, ...).
  # @param [Hash] opts the optional parameters
  # @return [DetectsapiPostCombinedAlertsV1ResponseSwagger]
  describe 'post_combined_alerts_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_entities_alerts_v1
  # Deprecated: please use version v2 of this endpoint. Retrieves all Alerts given their ids.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DetectsapiPostEntitiesAlertsV1ResponseSwagger]
  describe 'post_entities_alerts_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_entities_alerts_v2
  # Retrieves all Alerts given their composite ids.
  # @param body
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_hidden allows previously hidden alerts to be retrieved
  # @return [DetectsapiPostEntitiesAlertsV2ResponseSwagger]
  describe 'post_entities_alerts_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

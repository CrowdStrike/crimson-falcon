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

# Unit tests for Falcon::Filevantage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Filevantage' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::Filevantage.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of Filevantage' do
    it 'should create an instance of Filevantage' do
      expect(@api_instance).to be_instance_of(Falcon::Filevantage)
    end
  end

  # unit tests for create_policies_0
  # Creates a new policy of the specified type. New policies are always added at the end of the precedence list for the provided policy type.
  # After they are created, host and rule groups can be assigned, scheduled exclusions can be defined, and policy precedence can be set.
  # @param body Create a new policy.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;platform&#x60; must be one of &#x60;Windows&#x60;, &#x60;Linux&#x60;, or &#x60;Mac&#x60;   Rule and host group assignment and policy precedence setting is performed via their respective patch end-points.
  # @param [Hash] opts the optional parameters
  # @return [PoliciesResponse]
  describe 'create_policies_0 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_rule_groups
  # Creates a new rule group of the specified type.
  # Individual rules can be assigned to a rule group after it has been created.
  # @param body Create a new rule group of a specific type.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;type&#x60; must be one of &#x60;WindowsFiles&#x60;, &#x60;WindowsRegistry&#x60;, &#x60;LinuxFiles&#x60; or &#x60;MacFiles&#x60;.   * &#x60;description&#x60; can be between 0 and 500 characters.   Note: rules are added/removed from rule groups using their dedicated end-points.
  # @param [Hash] opts the optional parameters
  # @return [RulegroupsResponse]
  describe 'create_rule_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_rules
  # Creates a new rule configuration within the specified rule group.
  # Creates a new rule configuration within the specified rule group.
  # @param body Create a new rule configuration for the specified rule group.   * &#x60;id&#x60; is not supported for creation of a rule, the new id of the created rule will be included in the response.   * &#x60;rule_group_id&#x60; to add the new rule configuration.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;path&#x60; representing the file system or registry path to monitor.     * must be between 1 and 250 characters.      * All paths must end with the path separator, e.g. c:\\windows\\ /usr/bin/    * &#x60;severity&#x60; to categorize change events produced by this rule; must be one of: &#x60;Low&#x60;, &#x60;Medium&#x60;, &#x60;High&#x60; or &#x60;Critical&#x60;   * &#x60;depth&#x60; below the base path to monitor; must be one of: &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, &#x60;4&#x60;, &#x60;5&#x60; or &#x60;ANY&#x60;   * &#x60;precedence&#x60; - is not supported for creation of a rule, new rules will be added last in precedence order.  Falcon GLOB syntax is supported for the following 6 properties. Allowed rule group configuration is based on the type of rule group the rule group is added to.   * &#x60;include&#x60; represents the files, directories, registry keys, or registry values that will be monitored.    * &#x60;exclude&#x60; represents the files, directories, registry keys, or registry values that will &#x60;NOT&#x60; be monitored.    * &#x60;include_users&#x60; represents the changes performed by specific users that will be monitored.   * &#x60;exclude_users&#x60; represents the changes performed by specific users that will &#x60;NOT&#x60; be monitored.   * &#x60;include_processes&#x60; represents the changes performed by specific processes that will be monitored.   * &#x60;exclude_processes&#x60; represents the changes performed by specific processes that will be &#x60;NOT&#x60; monitored.   * &#x60;content_files&#x60; represents the files whose content will be monitored. Listed files must match the file include pattern and not match the file exclude pattern   * &#x60;content_registry_values&#x60; represents the registry values whose content will be monitored. Listed registry values must match the registry include pattern and not match the registry exclude pattern   * &#x60;enable_content_capture&#x60;   * &#x60;enable_hash_capture&#x60;  File system directory monitoring:   * &#x60;watch_delete_directory_changes&#x60;   * &#x60;watch_create_directory_changes&#x60;   * &#x60;watch_rename_directory_changes&#x60;   * &#x60;watch_attributes_directory_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)   * &#x60;watch_permissions_directory_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)  File system file monitoring:   * &#x60;watch_rename_file_changes&#x60;   * &#x60;watch_write_file_changes&#x60;   * &#x60;watch_create_file_changes&#x60;   * &#x60;watch_delete_file_changes&#x60;   * &#x60;watch_attributes_file_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)   * &#x60;watch_permissions_file_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)  Windows registry key and value monitoring:    * &#x60;watch_create_key_changes&#x60;   * &#x60;watch_delete_key_changes&#x60;   * &#x60;watch_rename_key_changes&#x60;   * &#x60;watch_set_value_changes&#x60;   * &#x60;watch_permissions_key_changes&#x60;   * &#x60;watch_delete_value_changes&#x60;   * &#x60;watch_create_file_changes&#x60;
  # @param [Hash] opts the optional parameters
  # @return [RulegroupsRulesResponse]
  describe 'create_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_scheduled_exclusions
  # Creates a new scheduled exclusion configuration for the provided policy id.
  # Creates a new scheduled exclusion configuration for the provided policy id.
  # @param body Create a new scheduled exclusion configuration for the specified policy.      * &#x60;policy_id&#x60; to add the scheduled exclusion to.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;users&#x60; can be between 0 and 500 characters representing a comma separated list of user to exclude their changes.      *  admin* excludes changes made by all usernames that begin with admin. Falon GLOB syntax is supported.   * &#x60;processes&#x60; can be between 0 and 500 characters representing a comma separated list of processes to exclude their changes.      * **\\RunMe.exe or **/RunMe.sh excludes changes made by RunMe.exe or RunMe.sh in any location.   * &#x60;schedule_start&#x60; must be provided to indicate the start of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * &#x60;schedule_end&#x60; optionally provided to indicate the end of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * &#x60;timezone&#x60;  must be provided to indicate the TimeZone Name set for the provided &#x60;scheduled_start&#x60; and &#x60;scheduled_end&#x60; values. See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.   * &#x60;repeated&#x60; optionally provided to indicate that the exclusion is applied repeatedly within the &#x60;scheduled_start&#x60; and &#x60;scheduled_end&#x60; time.      * &#x60;start_time&#x60; must be the hour(00-23) and minute(00-59) of the day formatted as &#x60;HH:MM&#x60;. Required if &#x60;all_day&#x60; is not set to &#x60;true&#x60;      * &#x60;end_time&#x60; must be the hour(00-23) and minute(00-59) of the day formatted as &#x60;HH:MM&#x60;. Required if &#x60;all_day&#x60; is not set to &#x60;true&#x60;      * &#x60;all_day&#x60; must be &#x60;true&#x60; or &#x60;false&#x60; to indicate the exclusion is applied all day.       * &#x60;frequency&#x60; must be one of &#x60;daily&#x60;, &#x60;weekly&#x60; or &#x60;monthly&#x60;.       * &#x60;occurrence&#x60; must be one of the following when &#x60;frequency&#x60; is set to &#x60;monthly&#x60;:        * &#x60;1st&#x60;, &#x60;2nd&#x60;, &#x60;3rd&#x60;, &#x60;4th&#x60; or &#x60;Last&#x60; represents the week.        * &#x60;Days&#x60; represents specific calendar days.      * &#x60;weekly_days&#x60; must be one or more of &#x60;Monday&#x60;, &#x60;Tuesday&#x60;, &#x60;Wednesday&#x60;, &#x60;Thursday&#x60;, &#x60;Friday&#x60;, &#x60;Saturday&#x60; or &#x60;Sunday&#x60; when &#x60;frequency&#x60; is set to &#x60;weekly&#x60; or &#x60;frequency&#x60; is set to &#x60;monthly&#x60; and &#x60;occurrence&#x60; is NOT set to &#x60;Days&#x60;.       * &#x60;monthly_days&#x60; must be set to one or more calendar days, between 1 and 31  when &#x60;frequency&#x60; is set to &#x60;monthly&#x60; and &#x60;occurrence&#x60; is set to &#x60;Days&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [ScheduledexclusionsResponse]
  describe 'create_scheduled_exclusions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_policies
  # Deletes 1 or more policies.
  # Only disabled policies are allowed to be deleted.
  # @param ids One or more (up to 500) policy ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;
  # @param [Hash] opts the optional parameters
  # @return [PoliciesDeleteResponse]
  describe 'delete_policies test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_rule_groups
  # Deletes 1 or more rule groups
  # The rule groups represented by the provided ids and all rules that they contain will be deleted.   Rule groups can only be deleted if they are not assigned to a policy.
  # @param ids One or more (up to 500) rule group ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;
  # @param [Hash] opts the optional parameters
  # @return [RulegroupsDeleteResponse]
  describe 'delete_rule_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_rules
  # Deletes 1 or more rules from the specified rule group.
  # Rules that match a provided id will be deleted from the provided rule group id.
  # @param rule_group_id The id of the rule group from which the rules will be deleted.
  # @param ids One or more (up to 500) rule ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;
  # @param [Hash] opts the optional parameters
  # @return [MsaspecQueryResponse]
  describe 'delete_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_scheduled_exclusions
  # Deletes 1 or more scheduled exclusions from the provided policy id.
  # Scheduled exclusions that match a provided id will be deleted from the provided policy id.
  # @param policy_id ID of the policy to delete the scheduled exclusions from.
  # @param ids One or more (up to 500) scheduled exclusion ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [MsaspecQueryResponse]
  describe 'delete_scheduled_exclusions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_actions_mixin0
  # Retrieves the processing results for 1 or more actions.
  # The processing results of each action that match the provided ids will be returned.
  # @param ids One or more actions ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;
  # @param [Hash] opts the optional parameters
  # @return [ActionsGetActionResponse]
  describe 'get_actions_mixin0 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_changes
  # Retrieve information on changes
  # Retrieve key attributes of Falcon FileVantage changes for the specified ids.
  # @param ids One or more change ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;. The maximum number of ids that can be requested at once is &#x60;500&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [PublicGetChangesResponse]
  describe 'get_changes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_contents
  # Retrieves the content captured for the provided change id
  # Retrieves the before and after change content for the provided change id.
  # @param id ID of the change in the form of id&#x3D;ID1
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_encoding Providing the value of &#x60;gzip&#x60; compresses the response, otherwise the content is returned uncompressed.
  # @return [ContentchangesChangeContentsResponse]
  describe 'get_contents test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_policies
  # Retrieves the configuration for 1 or more policies.
  # The configuration of each policy that match the provided id will be returned.
  # @param ids One or more (up to 500) policy ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;
  # @param [Hash] opts the optional parameters
  # @return [PoliciesResponse]
  describe 'get_policies test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_rule_groups
  # Retrieves the rule group details for 1 or more rule groups.
  # Full details of each rule group that matches a provided id will be returned in the response
  # @param ids One or more (up to 500) rule group ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;
  # @param [Hash] opts the optional parameters
  # @return [RulegroupsResponse]
  describe 'get_rule_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_rules
  # Retrieves the configuration for 1 or more rules.
  # Rules within the provided rule group id that match a provided id will be returned within the response.
  # @param rule_group_id Rule group from which to retrieve the rule configuration.
  # @param ids One or more (up to 500) rule ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [RulegroupsRulesResponse]
  describe 'get_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_scheduled_exclusions
  # Retrieves the configuration of 1 or more scheduled exclusions from the provided policy id.
  # Full details of each each scheduled exclusion that match a provided id will be returned in the response.
  # @param policy_id The id of the policy to retrieve the scheduled exclusion configurations.
  # @param ids One or more (up to 500) scheduled exclusion ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [ScheduledexclusionsResponse]
  describe 'get_scheduled_exclusions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for high_volume_query_changes
  # Returns 1 or more change ids
  # Returns a list of Falcon FileVantage change ids filtered, sorted and limited by the query parameters provided. It can retrieve an unlimited number of results using multiple requests.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request don&#39;t provide a value for the &#x60;after&#x60; token. On subsequent requests provide the &#x60;after&#x60; token value from the previous response to continue pagination from where you left. If the response returns an empty &#x60;after&#x60; token it means there are no more results to return.
  # @option opts [Integer] :limit The maximum number of ids to return. Defaults to &#x60;100&#x60; if not specified. The maximum number of results that can be returned in a single call is &#x60;5000&#x60;.
  # @option opts [String] :sort Sort results using options like:  - &#x60;action_timestamp&#x60; (timestamp of the change occurrence)   Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). For example: &#x60;action_timestamp|asc&#x60;. Defaults to &#x60;action_timestamp|desc&#x60; no value is specified. The full list of allowed sorting options can be reviewed in our API documentation.
  # @option opts [String] :filter Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;host.name&#x60;  - &#x60;action_timestamp&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation.
  # @return [ChangesHighVolumeQueryResponse]
  describe 'high_volume_query_changes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_actions_mixin0
  # Returns one or more action ids
  # Returns the list of action ids filtered, sorted, and limited to the query parameters provided.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The first action index to return in the response. If not provided it will default to &#39;0&#39;. Use with the &#x60;limit&#x60; parameter to manage pagination of results.
  # @option opts [Integer] :limit The maximum number of actions to return in the response (default: 100; max: 500). Use with the &#x60;offset&#x60; parameter to manage pagination of results
  # @option opts [String] :sort The sort expression that should be used to sort the results (e.g. created_date|desc)
  # @option opts [String] :filter Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;status&#x60;  - &#x60;operation_type&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation.
  # @return [MsaspecQueryResponse]
  describe 'query_actions_mixin0 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_changes
  # Returns 1 or more change ids
  # Returns a list of Falcon FileVantage change ids filtered, sorted and limited by the query parameters provided. Using this endpoint you can retrieve up to &#x60;10000&#x60; results by using pagination with multiple requests. If you need to retrieve more than &#x60;10000&#x60; results consider using the &#x60;/queries/changes/v3&#x60; endpoint
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The offset to start retrieving records from. Defaults to &#x60;0&#x60; if not specified.
  # @option opts [Integer] :limit The maximum number of ids to return. Defaults to &#x60;100&#x60; if not specified. The maximum number of results that can be returned in a single call is &#x60;500&#x60;.
  # @option opts [String] :sort Sort results using options like:  - &#x60;action_timestamp&#x60; (timestamp of the change occurrence)   Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). For example: &#x60;action_timestamp|asc&#x60;. The full list of allowed sorting options can be reviewed in our API documentation.
  # @option opts [String] :filter Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;host.name&#x60;  - &#x60;action_timestamp&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation.
  # @return [MsaspecQueryResponse]
  describe 'query_changes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_policies
  # Retrieve the ids of all policies that are assigned the provided policy type.
  # Policy ids will be returned sorted by a &#x60;precedence&#x60; order of ascending when a &#x60;sort&#x60; parameter is not provided.
  # @param type The types of policies to retrieve.   Allowed values are: &#x60;Windows&#x60;, &#x60;Linux&#x60; or &#x60;Mac&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The offset to start retrieving records from. Defaults to 0 if not specified.
  # @option opts [Integer] :limit The maximum number of ids to return. Defaults to 100 if not specified. The maximum number of results that can be returned in a single call is 500.
  # @option opts [String] :sort Sort the returned ids based on one of the following properties:  &#x60;precedence&#x60;, &#x60;created_timestamp&#x60; or &#x60;modified_timestamp&#x60;   Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending);  for example: &#x60;precedence|asc&#x60;.
  # @return [MsaspecQueryResponse]
  describe 'query_policies test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_rule_groups
  # Retrieve the ids of all rule groups that are of the provided rule group type.
  # Rule group ids will be returned sorted by &#x60;created_timestamp&#x60; order if a &#x60;sort&#x60; parameter is not provided
  # @param type The rule group type to retrieve the ids of.   Allowed values are: &#x60;WindowsFiles&#x60;, &#x60;WindowsRegistry&#x60;, &#x60;LinuxFiles&#x60; or &#x60;MacFiles&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The offset to start retrieving records from. Defaults to 0 if not specified.
  # @option opts [Integer] :limit The maximum number of ids to return. Defaults to 100 if not specified. The maximum number of results that can be returned in a single call is 500.
  # @option opts [String] :sort Sort the returned ids based on one of the following properties:   &#x60;created_timestamp&#x60; or &#x60;modified_timestamp&#x60;   Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending);  for example: &#x60;created_timestamp|asc&#x60;.
  # @return [MsaspecQueryResponse]
  describe 'query_rule_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_scheduled_exclusions
  # Retrieve the ids of all scheduled exclusions contained within the provided policy id.
  # Retrieve the ids of all scheduled exclusions contained within the provided policy id
  # @param policy_id The id of the policy from which to retrieve the scheduled exclusion ids.
  # @param [Hash] opts the optional parameters
  # @return [MsaspecQueryResponse]
  describe 'query_scheduled_exclusions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for signal_changes_external
  # Initiates workflows for the provided change ids
  # Provides the ability to initiate workflows for the specified change ids. Only 100 change ids can be provided per workflow request.
  # @param body Change ids to initiate the workflows; limited to 100 per request.
  # @param [Hash] opts the optional parameters
  # @return [WorkflowResponse]
  describe 'signal_changes_external test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for start_actions
  # Initiates the specified action on the provided change ids
  # Initiates the suppression, unsuppression, or purging of the provided change ids. Note that only 1 action may be initiated and active at a time.
  # @param body Create a new action.   * &#x60;operation&#x60; must be one of the &#x60;suppress&#x60;, &#x60;unsuppress&#x60;, or &#x60;purge&#x60;   * &#x60;change_ids&#x60; represent the ids of the changes the operation will perform; limited to 100 ids per action   * &#x60;comment&#x60; optional comment to describe the reason for the action
  # @param [Hash] opts the optional parameters
  # @return [ActionsActionResponse]
  describe 'start_actions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_policies_0
  # Updates the general information of the provided policy.
  # Only name, description, and enabled status of the policy is allowed to be update. Rule and host group assignment is performed via their respective patch end points.
  # @param body Enables updates to the following fields for an existing policy.    * &#x60;id&#x60; of the policy to update.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;platform&#x60; may not be modified after the policy is created.   * &#x60;enabled&#x60; must be one of &#x60;true&#x60; or &#x60;false&#x60;.   Rule and host group assignment and policy precedence setting is performed via their respective patch end-points.
  # @param [Hash] opts the optional parameters
  # @return [PoliciesResponse]
  describe 'update_policies_0 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_policy_host_groups
  # Manage host groups assigned to a policy.
  # Manage host groups assigned to a policy.
  # @param policy_id The id of the policy for which to perform the action.
  # @param action The action to perform with the provided ids, must be one of: &#x60;assign&#x60; or &#x60;unassign&#x60;.
  # @param ids One or more host group ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;
  # @param [Hash] opts the optional parameters
  # @return [PoliciesResponse]
  describe 'update_policy_host_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_policy_precedence_0
  # Updates the policy precedence for all policies of a specific type.
  # Requests that do not represent all ids of the provided policy type will not be processed.
  # @param ids Precedence of the policies for the provided type in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;
  # @param type The policy type for which to set the precedence order, must be one of &#x60;Windows&#x60;, &#x60;Linux&#x60; or &#x60;Mac&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [PoliciesPrecedenceResponse]
  describe 'update_policy_precedence_0 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_policy_rule_groups
  # Manage the rule groups assigned to the policy or set the rule group precedence for all rule groups within the policy.
  # Manage the rule groups assigned to the policy.   Rule groups must be of the same type as the policy they are being added:   * &#x60;WindowsRegistry&#x60; and &#x60;WindowsFiles&#x60; groups can only be added to a &#x60;Windows&#x60; policy.   * &#x60;LinuxFiles&#x60; groups can only be added to a &#x60;Linux&#x60; policy.   * &#x60;MacFiles&#x60; groups can only be added to a &#x60;Mac&#x60; policy.  When setting rule group precedence, the precedence for &#x60;all&#x60; rule group ids within the policy must be provided.
  # @param policy_id The id of the policy for which to perform the action.
  # @param action The action to perform with the provided ids, must be one of: &#x60;assign&#x60;, &#x60;unassign&#x60;, or &#x60;precedence&#x60;.
  # @param ids One or more rule group ids in the form of ids&#x3D;ID1&amp;ids&#x3D;ID2. Note, for the precedence action, precedence is controlled by the order of the ids as they are specified in the request.
  # @param [Hash] opts the optional parameters
  # @return [PoliciesResponse]
  describe 'update_policy_rule_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_rule_group_precedence
  # Updates the rule precedence for all rules in the identified rule group.
  # The ids for &#x60;all&#x60; rules contained within the rule group must be specified in the desired precedence order. Requests that do not represent all ids will not be processed.
  # @param rule_group_id Rule group from which to set the precedence.
  # @param ids One or more (up to 500) rule group ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [RulegroupsResponse]
  describe 'update_rule_group_precedence test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_rule_groups
  # Updates the provided rule group.
  # Provides the ability to update the name and description of the rule group.
  # @param body Enables updates to the following fields for an existing rule group.    * &#x60;id&#x60; of the rule group to update.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;type&#x60; may not be modified after the rule group is created.   Note: rules are added/removed from rule groups using their dedicated end-points.
  # @param [Hash] opts the optional parameters
  # @return [RulegroupsResponse]
  describe 'update_rule_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_rules
  # Updates the provided rule configuration within the specified rule group.
  # The rule must currently exist within the specified rule group.
  # @param body Update the rule configuration for the specified rule ID and group.   * &#x60;id&#x60; of the rule to update.   * &#x60;rule_group_id&#x60; that contains the rule configuration.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;path&#x60; representing the file system or registry path to monitor.     * must be between 1 and 250 characters.      * All paths must end with the path separator, e.g. c:\\windows\\ /usr/bin/    * &#x60;severity&#x60; to categorize change events produced by this rule; must be one of: &#x60;Low&#x60;, &#x60;Medium&#x60;, &#x60;High&#x60; or &#x60;Critical&#x60;   * &#x60;depth&#x60; below the base path to monitor; must be one of: &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, &#x60;4&#x60;, &#x60;5&#x60; or &#x60;ANY&#x60;   * &#x60;precedence&#x60; is the order in which rules will be evaluated starting with 1. Specifying a precedence value that is already set for another rule in the group will result this rule being placed before that existing rule.  Falcon GLOB syntax is supported for the following 6 properties. Allowed rule group configuration is based on the type of rule group the rule group is added to.   * &#x60;include&#x60; represents the files, directories, registry keys, or registry values that will be monitored.    * &#x60;exclude&#x60; represents the files, directories, registry keys, or registry values that will &#x60;NOT&#x60; be monitored.    * &#x60;include_users&#x60; represents the changes performed by specific users that will be monitored.   * &#x60;exclude_users&#x60; represents the changes performed by specific users that will &#x60;NOT&#x60; be monitored.   * &#x60;include_processes&#x60; represents the changes performed by specific processes that will be monitored.   * &#x60;exclude_processes&#x60; represents the changes performed by specific processes that will be &#x60;NOT&#x60; monitored.   * &#x60;content_files&#x60; represents the files that will be monitored. Listed files must match the file include pattern and not match the file exclude pattern   * &#x60;content_registry_values&#x60; represents the registry values whose content will be monitored. Listed registry values must match the registry include pattern and not match the registry exclude pattern   * &#x60;enable_content_capture&#x60;   * &#x60;enable_hash_capture&#x60;  File system directory monitoring:   * &#x60;watch_delete_directory_changes&#x60;   * &#x60;watch_create_directory_changes&#x60;   * &#x60;watch_rename_directory_changes&#x60;   * &#x60;watch_attributes_directory_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)   * &#x60;watch_permissions_directory_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)  File system file monitoring:   * &#x60;watch_rename_file_changes&#x60;   * &#x60;watch_write_file_changes&#x60;   * &#x60;watch_create_file_changes&#x60;   * &#x60;watch_delete_file_changes&#x60;   * &#x60;watch_attributes_file_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)   * &#x60;watch_permissions_file_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)  Windows registry key and value monitoring:    * &#x60;watch_create_key_changes&#x60;   * &#x60;watch_delete_key_changes&#x60;   * &#x60;watch_rename_key_changes&#x60;   * &#x60;watch_set_value_changes&#x60;   * &#x60;watch_delete_value_changes&#x60;   * &#x60;watch_create_file_changes&#x60;
  # @param [Hash] opts the optional parameters
  # @return [RulegroupsRulesResponse]
  describe 'update_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_scheduled_exclusions
  # Updates the provided scheduled exclusion configuration within the provided policy.
  # Updates the provided scheduled exclusion configuration within the provided policy.
  # @param body Update an existing scheduled exclusion for the specified policy.      * &#x60;policy_id&#x60; to add the scheduled exclusion to.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;users&#x60; can be between 0 and 500 characters representing a comma separated list of user to exclude their changes.      *  admin* excludes changes made by all usernames that begin with admin. Falon GLOB syntax is supported.   * &#x60;processes&#x60; can be between 0 and 500 characters representing a comma separated list of processes to exclude their changes.      * **\\RunMe.exe or **/RunMe.sh excludes changes made by RunMe.exe or RunMe.sh in any location.   * &#x60;schedule_start&#x60; must be provided to indicate the start of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * &#x60;schedule_end&#x60; optionally provided to indicate the end of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * &#x60;timezone&#x60;  must be provided to indicate the TimeZone Name set for the provided &#x60;scheduled_start&#x60; and &#x60;scheduled_end&#x60; values. See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.   * &#x60;repeated&#x60; optionally provided to indicate that the exclusion is applied repeatedly within the &#x60;scheduled_start&#x60; and &#x60;scheduled_end&#x60; time.      * &#x60;start_time&#x60; must be the hour(00-23) and minute(00-59) of the day formatted as &#x60;HH:MM&#x60;. Required if &#x60;all_day&#x60; is not set to &#x60;true&#x60;      * &#x60;end_time&#x60; must be the hour(00-23) and minute(00-59) of the day formatted as &#x60;HH:MM&#x60;. Required if &#x60;all_day&#x60; is not set to &#x60;true&#x60;      * &#x60;all_day&#x60; must be &#x60;true&#x60; or &#x60;false&#x60; to indicate the exclusion is applied all day.       * &#x60;frequency&#x60; must be one of &#x60;daily&#x60;, &#x60;weekly&#x60; or &#x60;monthly&#x60;.       * &#x60;occurrence&#x60; must be one of the following when &#x60;frequency&#x60; is set to &#x60;monthly&#x60;:        * &#x60;1st&#x60;, &#x60;2nd&#x60;, &#x60;3rd&#x60;, &#x60;4th&#x60; or &#x60;Last&#x60; represents the week.        * &#x60;Days&#x60; represents specific calendar days.      * &#x60;weekly_days&#x60; must be one or more of &#x60;Monday&#x60;, &#x60;Tuesday&#x60;, &#x60;Wednesday&#x60;, &#x60;Thursday&#x60;, &#x60;Friday&#x60;, &#x60;Saturday&#x60; or &#x60;Sunday&#x60; when &#x60;frequency&#x60; is set to &#x60;weekly&#x60; or &#x60;frequency&#x60; is set to &#x60;monthly&#x60; and &#x60;occurrence&#x60; is NOT set to &#x60;Days&#x60;.       * &#x60;monthly_days&#x60; must be set to one or more calendar days, between 1 and 31  when &#x60;frequency&#x60; is set to &#x60;monthly&#x60; and &#x60;occurrence&#x60; is set to &#x60;Days&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [ScheduledexclusionsResponse]
  describe 'update_scheduled_exclusions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
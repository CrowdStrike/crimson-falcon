# Falcon::Filevantage

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_policies**](Filevantage.md#create_policies) | **POST** /filevantage/entities/policies/v1 | Creates a new policy of the specified type. New policies are always added at the end of the precedence list for the provided policy type. |
| [**create_rule_groups**](Filevantage.md#create_rule_groups) | **POST** /filevantage/entities/rule-groups/v1 | Creates a new rule group of the specified type. |
| [**create_rules**](Filevantage.md#create_rules) | **POST** /filevantage/entities/rule-groups-rules/v1 | Creates a new rule configuration within the specified rule group. |
| [**create_scheduled_exclusions**](Filevantage.md#create_scheduled_exclusions) | **POST** /filevantage/entities/policy-scheduled-exclusions/v1 | Creates a new scheduled exclusion configuration for the provided policy id. |
| [**delete_policies**](Filevantage.md#delete_policies) | **DELETE** /filevantage/entities/policies/v1 | Deletes 1 or more policies. |
| [**delete_rule_groups**](Filevantage.md#delete_rule_groups) | **DELETE** /filevantage/entities/rule-groups/v1 | Deletes 1 or more rule groups  |
| [**delete_rules**](Filevantage.md#delete_rules) | **DELETE** /filevantage/entities/rule-groups-rules/v1 | Deletes 1 or more rules from the specified rule group. |
| [**delete_scheduled_exclusions**](Filevantage.md#delete_scheduled_exclusions) | **DELETE** /filevantage/entities/policy-scheduled-exclusions/v1 | Deletes 1 or more scheduled exclusions from the provided policy id. |
| [**get_actions_mixin0**](Filevantage.md#get_actions_mixin0) | **GET** /filevantage/entities/actions/v1 | Retrieves the processing results for 1 or more actions. |
| [**get_changes**](Filevantage.md#get_changes) | **GET** /filevantage/entities/changes/v2 | Retrieve information on changes |
| [**get_contents**](Filevantage.md#get_contents) | **GET** /filevantage/entities/change-content/v1 | Retrieves the content captured for the provided change id |
| [**get_policies**](Filevantage.md#get_policies) | **GET** /filevantage/entities/policies/v1 | Retrieves the configuration for 1 or more policies. |
| [**get_rule_groups**](Filevantage.md#get_rule_groups) | **GET** /filevantage/entities/rule-groups/v1 | Retrieves the rule group details for 1 or more rule groups. |
| [**get_rules**](Filevantage.md#get_rules) | **GET** /filevantage/entities/rule-groups-rules/v1 | Retrieves the configuration for 1 or more rules. |
| [**get_scheduled_exclusions**](Filevantage.md#get_scheduled_exclusions) | **GET** /filevantage/entities/policy-scheduled-exclusions/v1 | Retrieves the configuration of 1 or more scheduled exclusions from the provided policy id. |
| [**high_volume_query_changes**](Filevantage.md#high_volume_query_changes) | **GET** /filevantage/queries/changes/v3 | Returns 1 or more change ids |
| [**query_actions_mixin0**](Filevantage.md#query_actions_mixin0) | **GET** /filevantage/queries/actions/v1 | Returns one or more action ids |
| [**query_changes**](Filevantage.md#query_changes) | **GET** /filevantage/queries/changes/v2 | Returns 1 or more change ids |
| [**query_policies**](Filevantage.md#query_policies) | **GET** /filevantage/queries/policies/v1 | Retrieve the ids of all policies that are assigned the provided policy type. |
| [**query_rule_groups**](Filevantage.md#query_rule_groups) | **GET** /filevantage/queries/rule-groups/v1 | Retrieve the ids of all rule groups that are of the provided rule group type. |
| [**query_scheduled_exclusions**](Filevantage.md#query_scheduled_exclusions) | **GET** /filevantage/queries/policy-scheduled-exclusions/v1 | Retrieve the ids of all scheduled exclusions contained within the provided policy id. |
| [**signal_changes_external**](Filevantage.md#signal_changes_external) | **POST** /filevantage/entities/workflow/v1 | Initiates workflows for the provided change ids |
| [**start_actions**](Filevantage.md#start_actions) | **POST** /filevantage/entities/actions/v1 | Initiates the specified action on the provided change ids |
| [**update_policies**](Filevantage.md#update_policies) | **PATCH** /filevantage/entities/policies/v1 | Updates the general information of the provided policy. |
| [**update_policy_host_groups**](Filevantage.md#update_policy_host_groups) | **PATCH** /filevantage/entities/policies-host-groups/v1 | Manage host groups assigned to a policy. |
| [**update_policy_precedence**](Filevantage.md#update_policy_precedence) | **PATCH** /filevantage/entities/policies-precedence/v1 | Updates the policy precedence for all policies of a specific type. |
| [**update_policy_rule_groups**](Filevantage.md#update_policy_rule_groups) | **PATCH** /filevantage/entities/policies-rule-groups/v1 | Manage the rule groups assigned to the policy or set the rule group precedence for all rule groups within the policy. |
| [**update_rule_group_precedence**](Filevantage.md#update_rule_group_precedence) | **PATCH** /filevantage/entities/rule-groups-rule-precedence/v1 | Updates the rule precedence for all rules in the identified rule group. |
| [**update_rule_groups**](Filevantage.md#update_rule_groups) | **PATCH** /filevantage/entities/rule-groups/v1 | Updates the provided rule group. |
| [**update_rules**](Filevantage.md#update_rules) | **PATCH** /filevantage/entities/rule-groups-rules/v1 | Updates the provided rule configuration within the specified rule group. |
| [**update_scheduled_exclusions**](Filevantage.md#update_scheduled_exclusions) | **PATCH** /filevantage/entities/policy-scheduled-exclusions/v1 | Updates the provided scheduled exclusion configuration within the provided policy. |


## create_policies

> <PoliciesResponse> create_policies(body)

Creates a new policy of the specified type. New policies are always added at the end of the precedence list for the provided policy type.

After they are created, host and rule groups can be assigned, scheduled exclusions can be defined, and policy precedence can be set.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::PoliciesCreateRequest.new({name: 'name_example'}) # PoliciesCreateRequest | Create a new policy.   * `name` must be between 1 and 100 characters.   * `description` can be between 0 and 500 characters.   * `platform` must be one of `Windows`, `Linux`, or `Mac`   Rule and host group assignment and policy precedence setting is performed via their respective patch end-points.

begin
  # Creates a new policy of the specified type. New policies are always added at the end of the precedence list for the provided policy type.
  result = api_instance.create_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->create_policies: #{e}"
end
```

#### Using the create_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoliciesResponse>, Integer, Hash)> create_policies_with_http_info(body)

```ruby
begin
  # Creates a new policy of the specified type. New policies are always added at the end of the precedence list for the provided policy type.
  data, status_code, headers = api_instance.create_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoliciesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->create_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**PoliciesCreateRequest**](PoliciesCreateRequest.md) | Create a new policy.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;platform&#x60; must be one of &#x60;Windows&#x60;, &#x60;Linux&#x60;, or &#x60;Mac&#x60;   Rule and host group assignment and policy precedence setting is performed via their respective patch end-points. |  |

### Return type

[**PoliciesResponse**](PoliciesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rule_groups

> <RulegroupsResponse> create_rule_groups(body)

Creates a new rule group of the specified type.

Individual rules can be assigned to a rule group after it has been created.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::RulegroupsCreateRequest.new({name: 'name_example', type: 'type_example'}) # RulegroupsCreateRequest | Create a new rule group of a specific type.   * `name` must be between 1 and 100 characters.   * `type` must be one of `WindowsFiles`, `WindowsRegistry`, `LinuxFiles` or `MacFiles`.   * `description` can be between 0 and 500 characters.   Note: rules are added/removed from rule groups using their dedicated end-points.

begin
  # Creates a new rule group of the specified type.
  result = api_instance.create_rule_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->create_rule_groups: #{e}"
end
```

#### Using the create_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulegroupsResponse>, Integer, Hash)> create_rule_groups_with_http_info(body)

```ruby
begin
  # Creates a new rule group of the specified type.
  data, status_code, headers = api_instance.create_rule_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulegroupsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->create_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RulegroupsCreateRequest**](RulegroupsCreateRequest.md) | Create a new rule group of a specific type.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;type&#x60; must be one of &#x60;WindowsFiles&#x60;, &#x60;WindowsRegistry&#x60;, &#x60;LinuxFiles&#x60; or &#x60;MacFiles&#x60;.   * &#x60;description&#x60; can be between 0 and 500 characters.   Note: rules are added/removed from rule groups using their dedicated end-points. |  |

### Return type

[**RulegroupsResponse**](RulegroupsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rules

> <RulegroupsRulesResponse> create_rules(body)

Creates a new rule configuration within the specified rule group.

Creates a new rule configuration within the specified rule group.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::RulegroupsRule.new({depth: 'depth_example', id: 'id_example', include: 'include_example', path: 'path_example', rule_group_id: 'rule_group_id_example', severity: 'severity_example', type: 'type_example'}) # RulegroupsRule | Create a new rule configuration for the specified rule group.   * `id` is not supported for creation of a rule, the new id of the created rule will be included in the response.   * `rule_group_id` to add the new rule configuration.   * `description` can be between 0 and 500 characters.   * `path` representing the file system or registry path to monitor.     * must be between 1 and 250 characters.      * All paths must end with the path separator, e.g. c:\\windows\\ /usr/bin/    * `severity` to categorize change events produced by this rule; must be one of: `Low`, `Medium`, `High` or `Critical`   * `depth` below the base path to monitor; must be one of: `1`, `2`, `3`, `4`, `5` or `ANY`   * `precedence` - is not supported for creation of a rule, new rules will be added last in precedence order.  Falcon GLOB syntax is supported for the following 6 properties. Allowed rule group configuration is based on the type of rule group the rule group is added to.   * `include` represents the files, directories, registry keys, or registry values that will be monitored.    * `exclude` represents the files, directories, registry keys, or registry values that will `NOT` be monitored.    * `include_users` represents the changes performed by specific users that will be monitored.   * `exclude_users` represents the changes performed by specific users that will `NOT` be monitored.   * `include_processes` represents the changes performed by specific processes that will be monitored.   * `exclude_processes` represents the changes performed by specific processes that will be `NOT` monitored.   * `content_files` represents the files whose content will be monitored. Listed files must match the file include pattern and not match the file exclude pattern   * `content_registry_values` represents the registry values whose content will be monitored. Listed registry values must match the registry include pattern and not match the registry exclude pattern   * `enable_content_capture`   * `enable_hash_capture`  File system directory monitoring:   * `watch_delete_directory_changes`   * `watch_create_directory_changes`   * `watch_rename_directory_changes`   * `watch_attributes_directory_changes` (`macOS` is not supported at this time)   * `watch_permissions_directory_changes` (`macOS` is not supported at this time)  File system file monitoring:   * `watch_rename_file_changes`   * `watch_write_file_changes`   * `watch_create_file_changes`   * `watch_delete_file_changes`   * `watch_attributes_file_changes` (`macOS` is not supported at this time)   * `watch_permissions_file_changes` (`macOS` is not supported at this time)  Windows registry key and value monitoring:    * `watch_create_key_changes`   * `watch_delete_key_changes`   * `watch_rename_key_changes`   * `watch_set_value_changes`   * `watch_permissions_key_changes`   * `watch_delete_value_changes`   * `watch_create_file_changes`

begin
  # Creates a new rule configuration within the specified rule group.
  result = api_instance.create_rules(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->create_rules: #{e}"
end
```

#### Using the create_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulegroupsRulesResponse>, Integer, Hash)> create_rules_with_http_info(body)

```ruby
begin
  # Creates a new rule configuration within the specified rule group.
  data, status_code, headers = api_instance.create_rules_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulegroupsRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->create_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RulegroupsRule**](RulegroupsRule.md) | Create a new rule configuration for the specified rule group.   * &#x60;id&#x60; is not supported for creation of a rule, the new id of the created rule will be included in the response.   * &#x60;rule_group_id&#x60; to add the new rule configuration.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;path&#x60; representing the file system or registry path to monitor.     * must be between 1 and 250 characters.      * All paths must end with the path separator, e.g. c:\\windows\\ /usr/bin/    * &#x60;severity&#x60; to categorize change events produced by this rule; must be one of: &#x60;Low&#x60;, &#x60;Medium&#x60;, &#x60;High&#x60; or &#x60;Critical&#x60;   * &#x60;depth&#x60; below the base path to monitor; must be one of: &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, &#x60;4&#x60;, &#x60;5&#x60; or &#x60;ANY&#x60;   * &#x60;precedence&#x60; - is not supported for creation of a rule, new rules will be added last in precedence order.  Falcon GLOB syntax is supported for the following 6 properties. Allowed rule group configuration is based on the type of rule group the rule group is added to.   * &#x60;include&#x60; represents the files, directories, registry keys, or registry values that will be monitored.    * &#x60;exclude&#x60; represents the files, directories, registry keys, or registry values that will &#x60;NOT&#x60; be monitored.    * &#x60;include_users&#x60; represents the changes performed by specific users that will be monitored.   * &#x60;exclude_users&#x60; represents the changes performed by specific users that will &#x60;NOT&#x60; be monitored.   * &#x60;include_processes&#x60; represents the changes performed by specific processes that will be monitored.   * &#x60;exclude_processes&#x60; represents the changes performed by specific processes that will be &#x60;NOT&#x60; monitored.   * &#x60;content_files&#x60; represents the files whose content will be monitored. Listed files must match the file include pattern and not match the file exclude pattern   * &#x60;content_registry_values&#x60; represents the registry values whose content will be monitored. Listed registry values must match the registry include pattern and not match the registry exclude pattern   * &#x60;enable_content_capture&#x60;   * &#x60;enable_hash_capture&#x60;  File system directory monitoring:   * &#x60;watch_delete_directory_changes&#x60;   * &#x60;watch_create_directory_changes&#x60;   * &#x60;watch_rename_directory_changes&#x60;   * &#x60;watch_attributes_directory_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)   * &#x60;watch_permissions_directory_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)  File system file monitoring:   * &#x60;watch_rename_file_changes&#x60;   * &#x60;watch_write_file_changes&#x60;   * &#x60;watch_create_file_changes&#x60;   * &#x60;watch_delete_file_changes&#x60;   * &#x60;watch_attributes_file_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)   * &#x60;watch_permissions_file_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)  Windows registry key and value monitoring:    * &#x60;watch_create_key_changes&#x60;   * &#x60;watch_delete_key_changes&#x60;   * &#x60;watch_rename_key_changes&#x60;   * &#x60;watch_set_value_changes&#x60;   * &#x60;watch_permissions_key_changes&#x60;   * &#x60;watch_delete_value_changes&#x60;   * &#x60;watch_create_file_changes&#x60; |  |

### Return type

[**RulegroupsRulesResponse**](RulegroupsRulesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_scheduled_exclusions

> <ScheduledexclusionsResponse> create_scheduled_exclusions(body)

Creates a new scheduled exclusion configuration for the provided policy id.

Creates a new scheduled exclusion configuration for the provided policy id.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::ScheduledexclusionsCreateRequest.new({name: 'name_example', timezone: 'timezone_example'}) # ScheduledexclusionsCreateRequest | Create a new scheduled exclusion configuration for the specified policy.      * `policy_id` to add the scheduled exclusion to.   * `name` must be between 1 and 100 characters.   * `description` can be between 0 and 500 characters.   * `users` can be between 0 and 500 characters representing a comma separated list of user to exclude their changes.      *  admin* excludes changes made by all usernames that begin with admin. Falon GLOB syntax is supported.   * `processes` can be between 0 and 500 characters representing a comma separated list of processes to exclude their changes.      * **\\RunMe.exe or **/RunMe.sh excludes changes made by RunMe.exe or RunMe.sh in any location.   * `schedule_start` must be provided to indicate the start of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * `schedule_end` optionally provided to indicate the end of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * `timezone`  must be provided to indicate the TimeZone Name set for the provided `scheduled_start` and `scheduled_end` values. See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.   * `repeated` optionally provided to indicate that the exclusion is applied repeatedly within the `scheduled_start` and `scheduled_end` time.      * `start_time` must be the hour(00-23) and minute(00-59) of the day formatted as `HH:MM`. Required if `all_day` is not set to `true`      * `end_time` must be the hour(00-23) and minute(00-59) of the day formatted as `HH:MM`. Required if `all_day` is not set to `true`      * `all_day` must be `true` or `false` to indicate the exclusion is applied all day.       * `frequency` must be one of `daily`, `weekly` or `monthly`.       * `occurrence` must be one of the following when `frequency` is set to `monthly`:        * `1st`, `2nd`, `3rd`, `4th` or `Last` represents the week.        * `Days` represents specific calendar days.      * `weekly_days` must be one or more of `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` or `Sunday` when `frequency` is set to `weekly` or `frequency` is set to `monthly` and `occurrence` is NOT set to `Days`.       * `monthly_days` must be set to one or more calendar days, between 1 and 31  when `frequency` is set to `monthly` and `occurrence` is set to `Days`. 

begin
  # Creates a new scheduled exclusion configuration for the provided policy id.
  result = api_instance.create_scheduled_exclusions(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->create_scheduled_exclusions: #{e}"
end
```

#### Using the create_scheduled_exclusions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledexclusionsResponse>, Integer, Hash)> create_scheduled_exclusions_with_http_info(body)

```ruby
begin
  # Creates a new scheduled exclusion configuration for the provided policy id.
  data, status_code, headers = api_instance.create_scheduled_exclusions_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledexclusionsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->create_scheduled_exclusions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ScheduledexclusionsCreateRequest**](ScheduledexclusionsCreateRequest.md) | Create a new scheduled exclusion configuration for the specified policy.      * &#x60;policy_id&#x60; to add the scheduled exclusion to.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;users&#x60; can be between 0 and 500 characters representing a comma separated list of user to exclude their changes.      *  admin* excludes changes made by all usernames that begin with admin. Falon GLOB syntax is supported.   * &#x60;processes&#x60; can be between 0 and 500 characters representing a comma separated list of processes to exclude their changes.      * **\\RunMe.exe or **/RunMe.sh excludes changes made by RunMe.exe or RunMe.sh in any location.   * &#x60;schedule_start&#x60; must be provided to indicate the start of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * &#x60;schedule_end&#x60; optionally provided to indicate the end of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * &#x60;timezone&#x60;  must be provided to indicate the TimeZone Name set for the provided &#x60;scheduled_start&#x60; and &#x60;scheduled_end&#x60; values. See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.   * &#x60;repeated&#x60; optionally provided to indicate that the exclusion is applied repeatedly within the &#x60;scheduled_start&#x60; and &#x60;scheduled_end&#x60; time.      * &#x60;start_time&#x60; must be the hour(00-23) and minute(00-59) of the day formatted as &#x60;HH:MM&#x60;. Required if &#x60;all_day&#x60; is not set to &#x60;true&#x60;      * &#x60;end_time&#x60; must be the hour(00-23) and minute(00-59) of the day formatted as &#x60;HH:MM&#x60;. Required if &#x60;all_day&#x60; is not set to &#x60;true&#x60;      * &#x60;all_day&#x60; must be &#x60;true&#x60; or &#x60;false&#x60; to indicate the exclusion is applied all day.       * &#x60;frequency&#x60; must be one of &#x60;daily&#x60;, &#x60;weekly&#x60; or &#x60;monthly&#x60;.       * &#x60;occurrence&#x60; must be one of the following when &#x60;frequency&#x60; is set to &#x60;monthly&#x60;:        * &#x60;1st&#x60;, &#x60;2nd&#x60;, &#x60;3rd&#x60;, &#x60;4th&#x60; or &#x60;Last&#x60; represents the week.        * &#x60;Days&#x60; represents specific calendar days.      * &#x60;weekly_days&#x60; must be one or more of &#x60;Monday&#x60;, &#x60;Tuesday&#x60;, &#x60;Wednesday&#x60;, &#x60;Thursday&#x60;, &#x60;Friday&#x60;, &#x60;Saturday&#x60; or &#x60;Sunday&#x60; when &#x60;frequency&#x60; is set to &#x60;weekly&#x60; or &#x60;frequency&#x60; is set to &#x60;monthly&#x60; and &#x60;occurrence&#x60; is NOT set to &#x60;Days&#x60;.       * &#x60;monthly_days&#x60; must be set to one or more calendar days, between 1 and 31  when &#x60;frequency&#x60; is set to &#x60;monthly&#x60; and &#x60;occurrence&#x60; is set to &#x60;Days&#x60;.  |  |

### Return type

[**ScheduledexclusionsResponse**](ScheduledexclusionsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_policies

> <PoliciesDeleteResponse> delete_policies(ids)

Deletes 1 or more policies.

Only disabled policies are allowed to be deleted. 

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
ids = ['inner_example'] # Array<String> | One or more (up to 500) policy ids in the form of `ids=ID1&ids=ID2`

begin
  # Deletes 1 or more policies.
  result = api_instance.delete_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->delete_policies: #{e}"
end
```

#### Using the delete_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoliciesDeleteResponse>, Integer, Hash)> delete_policies_with_http_info(ids)

```ruby
begin
  # Deletes 1 or more policies.
  data, status_code, headers = api_instance.delete_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoliciesDeleteResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->delete_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) policy ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60; |  |

### Return type

[**PoliciesDeleteResponse**](PoliciesDeleteResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_rule_groups

> <RulegroupsDeleteResponse> delete_rule_groups(ids)

Deletes 1 or more rule groups 

The rule groups represented by the provided ids and all rules that they contain will be deleted.   Rule groups can only be deleted if they are not assigned to a policy.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
ids = ['inner_example'] # Array<String> | One or more (up to 500) rule group ids in the form of `ids=ID1&ids=ID2`

begin
  # Deletes 1 or more rule groups 
  result = api_instance.delete_rule_groups(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->delete_rule_groups: #{e}"
end
```

#### Using the delete_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulegroupsDeleteResponse>, Integer, Hash)> delete_rule_groups_with_http_info(ids)

```ruby
begin
  # Deletes 1 or more rule groups 
  data, status_code, headers = api_instance.delete_rule_groups_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulegroupsDeleteResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->delete_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) rule group ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60; |  |

### Return type

[**RulegroupsDeleteResponse**](RulegroupsDeleteResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_rules

> <MsaspecQueryResponse> delete_rules(rule_group_id, ids)

Deletes 1 or more rules from the specified rule group.

Rules that match a provided id will be deleted from the provided rule group id.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
rule_group_id = 'rule_group_id_example' # String | The id of the rule group from which the rules will be deleted.
ids = ['inner_example'] # Array<String> | One or more (up to 500) rule ids in the form of `ids=ID1&ids=ID2`

begin
  # Deletes 1 or more rules from the specified rule group.
  result = api_instance.delete_rules(rule_group_id, ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->delete_rules: #{e}"
end
```

#### Using the delete_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> delete_rules_with_http_info(rule_group_id, ids)

```ruby
begin
  # Deletes 1 or more rules from the specified rule group.
  data, status_code, headers = api_instance.delete_rules_with_http_info(rule_group_id, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->delete_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_group_id** | **String** | The id of the rule group from which the rules will be deleted. |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) rule ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60; |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_scheduled_exclusions

> <MsaspecQueryResponse> delete_scheduled_exclusions(policy_id, ids)

Deletes 1 or more scheduled exclusions from the provided policy id.

Scheduled exclusions that match a provided id will be deleted from the provided policy id.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
policy_id = 'policy_id_example' # String | ID of the policy to delete the scheduled exclusions from.
ids = ['inner_example'] # Array<String> | One or more (up to 500) scheduled exclusion ids in the form of `ids=ID1&ids=ID2`.

begin
  # Deletes 1 or more scheduled exclusions from the provided policy id.
  result = api_instance.delete_scheduled_exclusions(policy_id, ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->delete_scheduled_exclusions: #{e}"
end
```

#### Using the delete_scheduled_exclusions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> delete_scheduled_exclusions_with_http_info(policy_id, ids)

```ruby
begin
  # Deletes 1 or more scheduled exclusions from the provided policy id.
  data, status_code, headers = api_instance.delete_scheduled_exclusions_with_http_info(policy_id, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->delete_scheduled_exclusions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **String** | ID of the policy to delete the scheduled exclusions from. |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) scheduled exclusion ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;. |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_actions_mixin0

> <ActionsGetActionResponse> get_actions_mixin0(ids)

Retrieves the processing results for 1 or more actions.

The processing results of each action that match the provided ids will be returned.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
ids = ['inner_example'] # Array<String> | One or more actions ids in the form of `ids=ID1&ids=ID2`

begin
  # Retrieves the processing results for 1 or more actions.
  result = api_instance.get_actions_mixin0(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_actions_mixin0: #{e}"
end
```

#### Using the get_actions_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsGetActionResponse>, Integer, Hash)> get_actions_mixin0_with_http_info(ids)

```ruby
begin
  # Retrieves the processing results for 1 or more actions.
  data, status_code, headers = api_instance.get_actions_mixin0_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsGetActionResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_actions_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more actions ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60; |  |

### Return type

[**ActionsGetActionResponse**](ActionsGetActionResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_changes

> <PublicGetChangesResponse> get_changes(ids)

Retrieve information on changes

Retrieve key attributes of Falcon FileVantage changes for the specified ids.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
ids = ['inner_example'] # Array<String> | One or more change ids in the form of `ids=ID1&ids=ID2`. The maximum number of ids that can be requested at once is `500`.

begin
  # Retrieve information on changes
  result = api_instance.get_changes(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_changes: #{e}"
end
```

#### Using the get_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicGetChangesResponse>, Integer, Hash)> get_changes_with_http_info(ids)

```ruby
begin
  # Retrieve information on changes
  data, status_code, headers = api_instance.get_changes_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicGetChangesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more change ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;. The maximum number of ids that can be requested at once is &#x60;500&#x60;. |  |

### Return type

[**PublicGetChangesResponse**](PublicGetChangesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contents

> <ContentchangesChangeContentsResponse> get_contents(id, opts)

Retrieves the content captured for the provided change id

Retrieves the before and after change content for the provided change id.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
id = 'id_example' # String | ID of the change in the form of id=ID1
opts = {
  accept_encoding: 'accept_encoding_example' # String | Providing the value of `gzip` compresses the response, otherwise the content is returned uncompressed.
}

begin
  # Retrieves the content captured for the provided change id
  result = api_instance.get_contents(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_contents: #{e}"
end
```

#### Using the get_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentchangesChangeContentsResponse>, Integer, Hash)> get_contents_with_http_info(id, opts)

```ruby
begin
  # Retrieves the content captured for the provided change id
  data, status_code, headers = api_instance.get_contents_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentchangesChangeContentsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the change in the form of id&#x3D;ID1 |  |
| **accept_encoding** | **String** | Providing the value of &#x60;gzip&#x60; compresses the response, otherwise the content is returned uncompressed. | [optional] |

### Return type

[**ContentchangesChangeContentsResponse**](ContentchangesChangeContentsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policies

> <PoliciesResponse> get_policies(ids)

Retrieves the configuration for 1 or more policies.

The configuration of each policy that match the provided id will be returned.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
ids = ['inner_example'] # Array<String> | One or more (up to 500) policy ids in the form of `ids=ID1&ids=ID2`

begin
  # Retrieves the configuration for 1 or more policies.
  result = api_instance.get_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_policies: #{e}"
end
```

#### Using the get_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoliciesResponse>, Integer, Hash)> get_policies_with_http_info(ids)

```ruby
begin
  # Retrieves the configuration for 1 or more policies.
  data, status_code, headers = api_instance.get_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoliciesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) policy ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60; |  |

### Return type

[**PoliciesResponse**](PoliciesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rule_groups

> <RulegroupsResponse> get_rule_groups(ids)

Retrieves the rule group details for 1 or more rule groups.

Full details of each rule group that matches a provided id will be returned in the response

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
ids = ['inner_example'] # Array<String> | One or more (up to 500) rule group ids in the form of `ids=ID1&ids=ID2`

begin
  # Retrieves the rule group details for 1 or more rule groups.
  result = api_instance.get_rule_groups(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_rule_groups: #{e}"
end
```

#### Using the get_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulegroupsResponse>, Integer, Hash)> get_rule_groups_with_http_info(ids)

```ruby
begin
  # Retrieves the rule group details for 1 or more rule groups.
  data, status_code, headers = api_instance.get_rule_groups_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulegroupsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) rule group ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60; |  |

### Return type

[**RulegroupsResponse**](RulegroupsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rules

> <RulegroupsRulesResponse> get_rules(rule_group_id, ids)

Retrieves the configuration for 1 or more rules.

Rules within the provided rule group id that match a provided id will be returned within the response.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
rule_group_id = 'rule_group_id_example' # String | Rule group from which to retrieve the rule configuration.
ids = ['inner_example'] # Array<String> | One or more (up to 500) rule ids in the form of `ids=ID1&ids=ID2`.

begin
  # Retrieves the configuration for 1 or more rules.
  result = api_instance.get_rules(rule_group_id, ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_rules: #{e}"
end
```

#### Using the get_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulegroupsRulesResponse>, Integer, Hash)> get_rules_with_http_info(rule_group_id, ids)

```ruby
begin
  # Retrieves the configuration for 1 or more rules.
  data, status_code, headers = api_instance.get_rules_with_http_info(rule_group_id, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulegroupsRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_group_id** | **String** | Rule group from which to retrieve the rule configuration. |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) rule ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;. |  |

### Return type

[**RulegroupsRulesResponse**](RulegroupsRulesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scheduled_exclusions

> <ScheduledexclusionsResponse> get_scheduled_exclusions(policy_id, ids)

Retrieves the configuration of 1 or more scheduled exclusions from the provided policy id.

Full details of each each scheduled exclusion that match a provided id will be returned in the response.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
policy_id = 'policy_id_example' # String | The id of the policy to retrieve the scheduled exclusion configurations.
ids = ['inner_example'] # Array<String> | One or more (up to 500) scheduled exclusion ids in the form of `ids=ID1&ids=ID2`.

begin
  # Retrieves the configuration of 1 or more scheduled exclusions from the provided policy id.
  result = api_instance.get_scheduled_exclusions(policy_id, ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_scheduled_exclusions: #{e}"
end
```

#### Using the get_scheduled_exclusions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledexclusionsResponse>, Integer, Hash)> get_scheduled_exclusions_with_http_info(policy_id, ids)

```ruby
begin
  # Retrieves the configuration of 1 or more scheduled exclusions from the provided policy id.
  data, status_code, headers = api_instance.get_scheduled_exclusions_with_http_info(policy_id, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledexclusionsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->get_scheduled_exclusions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **String** | The id of the policy to retrieve the scheduled exclusion configurations. |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) scheduled exclusion ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;. |  |

### Return type

[**ScheduledexclusionsResponse**](ScheduledexclusionsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## high_volume_query_changes

> <ChangesHighVolumeQueryResponse> high_volume_query_changes(opts)

Returns 1 or more change ids

Returns a list of Falcon FileVantage change ids filtered, sorted and limited by the query parameters provided. It can retrieve an unlimited number of results using multiple requests.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request don't provide a value for the `after` token. On subsequent requests provide the `after` token value from the previous response to continue pagination from where you left. If the response returns an empty `after` token it means there are no more results to return.
  limit: 56, # Integer | The maximum number of ids to return. Defaults to `100` if not specified. The maximum number of results that can be returned in a single call is `5000`.
  sort: 'sort_example', # String | Sort results using options like:  - `action_timestamp` (timestamp of the change occurrence)   Sort either `asc` (ascending) or `desc` (descending). For example: `action_timestamp|asc`. Defaults to `action_timestamp|desc` no value is specified. The full list of allowed sorting options can be reviewed in our API documentation.
  filter: 'filter_example' # String | Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - `host.name`  - `action_timestamp`   The full list of allowed filter parameters can be reviewed in our API documentation.
}

begin
  # Returns 1 or more change ids
  result = api_instance.high_volume_query_changes(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->high_volume_query_changes: #{e}"
end
```

#### Using the high_volume_query_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangesHighVolumeQueryResponse>, Integer, Hash)> high_volume_query_changes_with_http_info(opts)

```ruby
begin
  # Returns 1 or more change ids
  data, status_code, headers = api_instance.high_volume_query_changes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangesHighVolumeQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->high_volume_query_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request don&#39;t provide a value for the &#x60;after&#x60; token. On subsequent requests provide the &#x60;after&#x60; token value from the previous response to continue pagination from where you left. If the response returns an empty &#x60;after&#x60; token it means there are no more results to return. | [optional] |
| **limit** | **Integer** | The maximum number of ids to return. Defaults to &#x60;100&#x60; if not specified. The maximum number of results that can be returned in a single call is &#x60;5000&#x60;. | [optional][default to 100] |
| **sort** | **String** | Sort results using options like:  - &#x60;action_timestamp&#x60; (timestamp of the change occurrence)   Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). For example: &#x60;action_timestamp|asc&#x60;. Defaults to &#x60;action_timestamp|desc&#x60; no value is specified. The full list of allowed sorting options can be reviewed in our API documentation. | [optional][default to &#39;action_timestamp|desc&#39;] |
| **filter** | **String** | Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;host.name&#x60;  - &#x60;action_timestamp&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation. | [optional] |

### Return type

[**ChangesHighVolumeQueryResponse**](ChangesHighVolumeQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_actions_mixin0

> <MsaspecQueryResponse> query_actions_mixin0(opts)

Returns one or more action ids

Returns the list of action ids filtered, sorted, and limited to the query parameters provided.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
opts = {
  offset: 56, # Integer | The first action index to return in the response. If not provided it will default to '0'. Use with the `limit` parameter to manage pagination of results.
  limit: 56, # Integer | The maximum number of actions to return in the response (default: 100; max: 500). Use with the `offset` parameter to manage pagination of results
  sort: 'sort_example', # String | The sort expression that should be used to sort the results (e.g. created_date|desc)
  filter: 'filter_example' # String | Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - `status`  - `operation_type`   The full list of allowed filter parameters can be reviewed in our API documentation.
}

begin
  # Returns one or more action ids
  result = api_instance.query_actions_mixin0(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_actions_mixin0: #{e}"
end
```

#### Using the query_actions_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_actions_mixin0_with_http_info(opts)

```ruby
begin
  # Returns one or more action ids
  data, status_code, headers = api_instance.query_actions_mixin0_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_actions_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first action index to return in the response. If not provided it will default to &#39;0&#39;. Use with the &#x60;limit&#x60; parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The maximum number of actions to return in the response (default: 100; max: 500). Use with the &#x60;offset&#x60; parameter to manage pagination of results | [optional] |
| **sort** | **String** | The sort expression that should be used to sort the results (e.g. created_date|desc) | [optional] |
| **filter** | **String** | Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;status&#x60;  - &#x60;operation_type&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_changes

> <MsaspecQueryResponse> query_changes(opts)

Returns 1 or more change ids

Returns a list of Falcon FileVantage change ids filtered, sorted and limited by the query parameters provided. Using this endpoint you can retrieve up to `10000` results by using pagination with multiple requests. If you need to retrieve more than `10000` results consider using the `/queries/changes/v3` endpoint

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
opts = {
  offset: 56, # Integer | The offset to start retrieving records from. Defaults to `0` if not specified.
  limit: 56, # Integer | The maximum number of ids to return. Defaults to `100` if not specified. The maximum number of results that can be returned in a single call is `500`.
  sort: 'sort_example', # String | Sort results using options like:  - `action_timestamp` (timestamp of the change occurrence)   Sort either `asc` (ascending) or `desc` (descending). For example: `action_timestamp|asc`. The full list of allowed sorting options can be reviewed in our API documentation.
  filter: 'filter_example' # String | Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - `host.name`  - `action_timestamp`   The full list of allowed filter parameters can be reviewed in our API documentation.
}

begin
  # Returns 1 or more change ids
  result = api_instance.query_changes(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_changes: #{e}"
end
```

#### Using the query_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_changes_with_http_info(opts)

```ruby
begin
  # Returns 1 or more change ids
  data, status_code, headers = api_instance.query_changes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset to start retrieving records from. Defaults to &#x60;0&#x60; if not specified. | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of ids to return. Defaults to &#x60;100&#x60; if not specified. The maximum number of results that can be returned in a single call is &#x60;500&#x60;. | [optional][default to 100] |
| **sort** | **String** | Sort results using options like:  - &#x60;action_timestamp&#x60; (timestamp of the change occurrence)   Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). For example: &#x60;action_timestamp|asc&#x60;. The full list of allowed sorting options can be reviewed in our API documentation. | [optional] |
| **filter** | **String** | Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;host.name&#x60;  - &#x60;action_timestamp&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_policies

> <MsaspecQueryResponse> query_policies(type, opts)

Retrieve the ids of all policies that are assigned the provided policy type.

Policy ids will be returned sorted by a `precedence` order of ascending when a `sort` parameter is not provided.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
type = 'type_example' # String | The types of policies to retrieve.   Allowed values are: `Windows`, `Linux` or `Mac`.
opts = {
  offset: 56, # Integer | The offset to start retrieving records from. Defaults to 0 if not specified.
  limit: 56, # Integer | The maximum number of ids to return. Defaults to 100 if not specified. The maximum number of results that can be returned in a single call is 500.
  sort: 'sort_example' # String | Sort the returned ids based on one of the following properties:  `precedence`, `created_timestamp` or `modified_timestamp`   Sort either `asc` (ascending) or `desc` (descending);  for example: `precedence|asc`.
}

begin
  # Retrieve the ids of all policies that are assigned the provided policy type.
  result = api_instance.query_policies(type, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_policies: #{e}"
end
```

#### Using the query_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_policies_with_http_info(type, opts)

```ruby
begin
  # Retrieve the ids of all policies that are assigned the provided policy type.
  data, status_code, headers = api_instance.query_policies_with_http_info(type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The types of policies to retrieve.   Allowed values are: &#x60;Windows&#x60;, &#x60;Linux&#x60; or &#x60;Mac&#x60;. |  |
| **offset** | **Integer** | The offset to start retrieving records from. Defaults to 0 if not specified. | [optional] |
| **limit** | **Integer** | The maximum number of ids to return. Defaults to 100 if not specified. The maximum number of results that can be returned in a single call is 500. | [optional] |
| **sort** | **String** | Sort the returned ids based on one of the following properties:  &#x60;precedence&#x60;, &#x60;created_timestamp&#x60; or &#x60;modified_timestamp&#x60;   Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending);  for example: &#x60;precedence|asc&#x60;. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rule_groups

> <MsaspecQueryResponse> query_rule_groups(type, opts)

Retrieve the ids of all rule groups that are of the provided rule group type.

Rule group ids will be returned sorted by `created_timestamp` order if a `sort` parameter is not provided

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
type = 'type_example' # String | The rule group type to retrieve the ids of.   Allowed values are: `WindowsFiles`, `WindowsRegistry`, `LinuxFiles` or `MacFiles`.
opts = {
  offset: 56, # Integer | The offset to start retrieving records from. Defaults to 0 if not specified.
  limit: 56, # Integer | The maximum number of ids to return. Defaults to 100 if not specified. The maximum number of results that can be returned in a single call is 500.
  sort: 'sort_example' # String | Sort the returned ids based on one of the following properties:   `created_timestamp` or `modified_timestamp`   Sort either `asc` (ascending) or `desc` (descending);  for example: `created_timestamp|asc`.
}

begin
  # Retrieve the ids of all rule groups that are of the provided rule group type.
  result = api_instance.query_rule_groups(type, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_rule_groups: #{e}"
end
```

#### Using the query_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_rule_groups_with_http_info(type, opts)

```ruby
begin
  # Retrieve the ids of all rule groups that are of the provided rule group type.
  data, status_code, headers = api_instance.query_rule_groups_with_http_info(type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The rule group type to retrieve the ids of.   Allowed values are: &#x60;WindowsFiles&#x60;, &#x60;WindowsRegistry&#x60;, &#x60;LinuxFiles&#x60; or &#x60;MacFiles&#x60;. |  |
| **offset** | **Integer** | The offset to start retrieving records from. Defaults to 0 if not specified. | [optional] |
| **limit** | **Integer** | The maximum number of ids to return. Defaults to 100 if not specified. The maximum number of results that can be returned in a single call is 500. | [optional] |
| **sort** | **String** | Sort the returned ids based on one of the following properties:   &#x60;created_timestamp&#x60; or &#x60;modified_timestamp&#x60;   Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending);  for example: &#x60;created_timestamp|asc&#x60;. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_scheduled_exclusions

> <MsaspecQueryResponse> query_scheduled_exclusions(policy_id)

Retrieve the ids of all scheduled exclusions contained within the provided policy id.

Retrieve the ids of all scheduled exclusions contained within the provided policy id

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
policy_id = 'policy_id_example' # String | The id of the policy from which to retrieve the scheduled exclusion ids.

begin
  # Retrieve the ids of all scheduled exclusions contained within the provided policy id.
  result = api_instance.query_scheduled_exclusions(policy_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_scheduled_exclusions: #{e}"
end
```

#### Using the query_scheduled_exclusions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_scheduled_exclusions_with_http_info(policy_id)

```ruby
begin
  # Retrieve the ids of all scheduled exclusions contained within the provided policy id.
  data, status_code, headers = api_instance.query_scheduled_exclusions_with_http_info(policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->query_scheduled_exclusions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **String** | The id of the policy from which to retrieve the scheduled exclusion ids. |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## signal_changes_external

> <WorkflowResponse> signal_changes_external(body)

Initiates workflows for the provided change ids

Provides the ability to initiate workflows for the specified change ids. Only 100 change ids can be provided per workflow request.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::WorkflowRequest.new({ids: ['ids_example']}) # WorkflowRequest | Change ids to initiate the workflows; limited to 100 per request.

begin
  # Initiates workflows for the provided change ids
  result = api_instance.signal_changes_external(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->signal_changes_external: #{e}"
end
```

#### Using the signal_changes_external_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowResponse>, Integer, Hash)> signal_changes_external_with_http_info(body)

```ruby
begin
  # Initiates workflows for the provided change ids
  data, status_code, headers = api_instance.signal_changes_external_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->signal_changes_external_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**WorkflowRequest**](WorkflowRequest.md) | Change ids to initiate the workflows; limited to 100 per request. |  |

### Return type

[**WorkflowResponse**](WorkflowResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_actions

> <ActionsActionResponse> start_actions(body)

Initiates the specified action on the provided change ids

Initiates the suppression, unsuppression, or purging of the provided change ids. Note that only 1 action may be initiated and active at a time.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::ActionsCreateActionRequest.new({change_ids: ['change_ids_example'], operation: 'operation_example'}) # ActionsCreateActionRequest | Create a new action.   * `operation` must be one of the `suppress`, `unsuppress`, or `purge`   * `change_ids` represent the ids of the changes the operation will perform; limited to 100 ids per action   * `comment` optional comment to describe the reason for the action

begin
  # Initiates the specified action on the provided change ids
  result = api_instance.start_actions(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->start_actions: #{e}"
end
```

#### Using the start_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsActionResponse>, Integer, Hash)> start_actions_with_http_info(body)

```ruby
begin
  # Initiates the specified action on the provided change ids
  data, status_code, headers = api_instance.start_actions_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsActionResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->start_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ActionsCreateActionRequest**](ActionsCreateActionRequest.md) | Create a new action.   * &#x60;operation&#x60; must be one of the &#x60;suppress&#x60;, &#x60;unsuppress&#x60;, or &#x60;purge&#x60;   * &#x60;change_ids&#x60; represent the ids of the changes the operation will perform; limited to 100 ids per action   * &#x60;comment&#x60; optional comment to describe the reason for the action |  |

### Return type

[**ActionsActionResponse**](ActionsActionResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policies

> <PoliciesResponse> update_policies(body)

Updates the general information of the provided policy.

Only name, description, and enabled status of the policy is allowed to be update. Rule and host group assignment is performed via their respective patch end points.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::PoliciesUpdateRequest.new({id: 'id_example'}) # PoliciesUpdateRequest | Enables updates to the following fields for an existing policy.    * `id` of the policy to update.   * `name` must be between 1 and 100 characters.   * `description` can be between 0 and 500 characters.   * `platform` may not be modified after the policy is created.   * `enabled` must be one of `true` or `false`.   Rule and host group assignment and policy precedence setting is performed via their respective patch end-points.

begin
  # Updates the general information of the provided policy.
  result = api_instance.update_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_policies: #{e}"
end
```

#### Using the update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoliciesResponse>, Integer, Hash)> update_policies_with_http_info(body)

```ruby
begin
  # Updates the general information of the provided policy.
  data, status_code, headers = api_instance.update_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoliciesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**PoliciesUpdateRequest**](PoliciesUpdateRequest.md) | Enables updates to the following fields for an existing policy.    * &#x60;id&#x60; of the policy to update.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;platform&#x60; may not be modified after the policy is created.   * &#x60;enabled&#x60; must be one of &#x60;true&#x60; or &#x60;false&#x60;.   Rule and host group assignment and policy precedence setting is performed via their respective patch end-points. |  |

### Return type

[**PoliciesResponse**](PoliciesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy_host_groups

> <PoliciesResponse> update_policy_host_groups(policy_id, action, ids)

Manage host groups assigned to a policy.

Manage host groups assigned to a policy.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
policy_id = 'policy_id_example' # String | The id of the policy for which to perform the action.
action = 'action_example' # String | The action to perform with the provided ids, must be one of: `assign` or `unassign`.
ids = ['inner_example'] # Array<String> | One or more host group ids in the form of `ids=ID1&ids=ID2`

begin
  # Manage host groups assigned to a policy.
  result = api_instance.update_policy_host_groups(policy_id, action, ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_policy_host_groups: #{e}"
end
```

#### Using the update_policy_host_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoliciesResponse>, Integer, Hash)> update_policy_host_groups_with_http_info(policy_id, action, ids)

```ruby
begin
  # Manage host groups assigned to a policy.
  data, status_code, headers = api_instance.update_policy_host_groups_with_http_info(policy_id, action, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoliciesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_policy_host_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **String** | The id of the policy for which to perform the action. |  |
| **action** | **String** | The action to perform with the provided ids, must be one of: &#x60;assign&#x60; or &#x60;unassign&#x60;. |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more host group ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60; |  |

### Return type

[**PoliciesResponse**](PoliciesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_policy_precedence

> <PoliciesPrecedenceResponse> update_policy_precedence(ids, type)

Updates the policy precedence for all policies of a specific type.

Requests that do not represent all ids of the provided policy type will not be processed.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
ids = ['inner_example'] # Array<String> | Precedence of the policies for the provided type in the form of `ids=ID1&ids=ID2`
type = 'type_example' # String | The policy type for which to set the precedence order, must be one of `Windows`, `Linux` or `Mac`.

begin
  # Updates the policy precedence for all policies of a specific type.
  result = api_instance.update_policy_precedence(ids, type)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_policy_precedence: #{e}"
end
```

#### Using the update_policy_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoliciesPrecedenceResponse>, Integer, Hash)> update_policy_precedence_with_http_info(ids, type)

```ruby
begin
  # Updates the policy precedence for all policies of a specific type.
  data, status_code, headers = api_instance.update_policy_precedence_with_http_info(ids, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoliciesPrecedenceResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_policy_precedence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Precedence of the policies for the provided type in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60; |  |
| **type** | **String** | The policy type for which to set the precedence order, must be one of &#x60;Windows&#x60;, &#x60;Linux&#x60; or &#x60;Mac&#x60;. |  |

### Return type

[**PoliciesPrecedenceResponse**](PoliciesPrecedenceResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_policy_rule_groups

> <PoliciesResponse> update_policy_rule_groups(policy_id, action, ids)

Manage the rule groups assigned to the policy or set the rule group precedence for all rule groups within the policy.

Manage the rule groups assigned to the policy.   Rule groups must be of the same type as the policy they are being added:   * `WindowsRegistry` and `WindowsFiles` groups can only be added to a `Windows` policy.   * `LinuxFiles` groups can only be added to a `Linux` policy.   * `MacFiles` groups can only be added to a `Mac` policy.  When setting rule group precedence, the precedence for `all` rule group ids within the policy must be provided.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
policy_id = 'policy_id_example' # String | The id of the policy for which to perform the action.
action = 'action_example' # String | The action to perform with the provided ids, must be one of: `assign`, `unassign`, or `precedence`.
ids = ['inner_example'] # Array<String> | One or more rule group ids in the form of ids=ID1&ids=ID2. Note, for the precedence action, precedence is controlled by the order of the ids as they are specified in the request.

begin
  # Manage the rule groups assigned to the policy or set the rule group precedence for all rule groups within the policy.
  result = api_instance.update_policy_rule_groups(policy_id, action, ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_policy_rule_groups: #{e}"
end
```

#### Using the update_policy_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoliciesResponse>, Integer, Hash)> update_policy_rule_groups_with_http_info(policy_id, action, ids)

```ruby
begin
  # Manage the rule groups assigned to the policy or set the rule group precedence for all rule groups within the policy.
  data, status_code, headers = api_instance.update_policy_rule_groups_with_http_info(policy_id, action, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoliciesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_policy_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **String** | The id of the policy for which to perform the action. |  |
| **action** | **String** | The action to perform with the provided ids, must be one of: &#x60;assign&#x60;, &#x60;unassign&#x60;, or &#x60;precedence&#x60;. |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more rule group ids in the form of ids&#x3D;ID1&amp;ids&#x3D;ID2. Note, for the precedence action, precedence is controlled by the order of the ids as they are specified in the request. |  |

### Return type

[**PoliciesResponse**](PoliciesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rule_group_precedence

> <RulegroupsResponse> update_rule_group_precedence(rule_group_id, ids)

Updates the rule precedence for all rules in the identified rule group.

The ids for `all` rules contained within the rule group must be specified in the desired precedence order. Requests that do not represent all ids will not be processed.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
rule_group_id = 'rule_group_id_example' # String | Rule group from which to set the precedence.
ids = ['inner_example'] # Array<String> | One or more (up to 500) rule group ids in the form of `ids=ID1&ids=ID2`.

begin
  # Updates the rule precedence for all rules in the identified rule group.
  result = api_instance.update_rule_group_precedence(rule_group_id, ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_rule_group_precedence: #{e}"
end
```

#### Using the update_rule_group_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulegroupsResponse>, Integer, Hash)> update_rule_group_precedence_with_http_info(rule_group_id, ids)

```ruby
begin
  # Updates the rule precedence for all rules in the identified rule group.
  data, status_code, headers = api_instance.update_rule_group_precedence_with_http_info(rule_group_id, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulegroupsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_rule_group_precedence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_group_id** | **String** | Rule group from which to set the precedence. |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more (up to 500) rule group ids in the form of &#x60;ids&#x3D;ID1&amp;ids&#x3D;ID2&#x60;. |  |

### Return type

[**RulegroupsResponse**](RulegroupsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rule_groups

> <RulegroupsResponse> update_rule_groups(body)

Updates the provided rule group.

Provides the ability to update the name and description of the rule group.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::RulegroupsUpdateRequest.new({id: 'id_example', name: 'name_example'}) # RulegroupsUpdateRequest | Enables updates to the following fields for an existing rule group.    * `id` of the rule group to update.   * `name` must be between 1 and 100 characters.   * `description` can be between 0 and 500 characters.   * `type` may not be modified after the rule group is created.   Note: rules are added/removed from rule groups using their dedicated end-points.

begin
  # Updates the provided rule group.
  result = api_instance.update_rule_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_rule_groups: #{e}"
end
```

#### Using the update_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulegroupsResponse>, Integer, Hash)> update_rule_groups_with_http_info(body)

```ruby
begin
  # Updates the provided rule group.
  data, status_code, headers = api_instance.update_rule_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulegroupsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RulegroupsUpdateRequest**](RulegroupsUpdateRequest.md) | Enables updates to the following fields for an existing rule group.    * &#x60;id&#x60; of the rule group to update.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;type&#x60; may not be modified after the rule group is created.   Note: rules are added/removed from rule groups using their dedicated end-points. |  |

### Return type

[**RulegroupsResponse**](RulegroupsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rules

> <RulegroupsRulesResponse> update_rules(body)

Updates the provided rule configuration within the specified rule group.

The rule must currently exist within the specified rule group.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::RulegroupsRule.new({depth: 'depth_example', id: 'id_example', include: 'include_example', path: 'path_example', rule_group_id: 'rule_group_id_example', severity: 'severity_example', type: 'type_example'}) # RulegroupsRule | Update the rule configuration for the specified rule ID and group.   * `id` of the rule to update.   * `rule_group_id` that contains the rule configuration.   * `description` can be between 0 and 500 characters.   * `path` representing the file system or registry path to monitor.     * must be between 1 and 250 characters.      * All paths must end with the path separator, e.g. c:\\windows\\ /usr/bin/    * `severity` to categorize change events produced by this rule; must be one of: `Low`, `Medium`, `High` or `Critical`   * `depth` below the base path to monitor; must be one of: `1`, `2`, `3`, `4`, `5` or `ANY`   * `precedence` is the order in which rules will be evaluated starting with 1. Specifying a precedence value that is already set for another rule in the group will result this rule being placed before that existing rule.  Falcon GLOB syntax is supported for the following 6 properties. Allowed rule group configuration is based on the type of rule group the rule group is added to.   * `include` represents the files, directories, registry keys, or registry values that will be monitored.    * `exclude` represents the files, directories, registry keys, or registry values that will `NOT` be monitored.    * `include_users` represents the changes performed by specific users that will be monitored.   * `exclude_users` represents the changes performed by specific users that will `NOT` be monitored.   * `include_processes` represents the changes performed by specific processes that will be monitored.   * `exclude_processes` represents the changes performed by specific processes that will be `NOT` monitored.   * `content_files` represents the files that will be monitored. Listed files must match the file include pattern and not match the file exclude pattern   * `content_registry_values` represents the registry values whose content will be monitored. Listed registry values must match the registry include pattern and not match the registry exclude pattern   * `enable_content_capture`   * `enable_hash_capture`  File system directory monitoring:   * `watch_delete_directory_changes`   * `watch_create_directory_changes`   * `watch_rename_directory_changes`   * `watch_attributes_directory_changes` (`macOS` is not supported at this time)   * `watch_permissions_directory_changes` (`macOS` is not supported at this time)  File system file monitoring:   * `watch_rename_file_changes`   * `watch_write_file_changes`   * `watch_create_file_changes`   * `watch_delete_file_changes`   * `watch_attributes_file_changes` (`macOS` is not supported at this time)   * `watch_permissions_file_changes` (`macOS` is not supported at this time)  Windows registry key and value monitoring:    * `watch_create_key_changes`   * `watch_delete_key_changes`   * `watch_rename_key_changes`   * `watch_set_value_changes`   * `watch_delete_value_changes`   * `watch_create_file_changes`

begin
  # Updates the provided rule configuration within the specified rule group.
  result = api_instance.update_rules(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_rules: #{e}"
end
```

#### Using the update_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulegroupsRulesResponse>, Integer, Hash)> update_rules_with_http_info(body)

```ruby
begin
  # Updates the provided rule configuration within the specified rule group.
  data, status_code, headers = api_instance.update_rules_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulegroupsRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RulegroupsRule**](RulegroupsRule.md) | Update the rule configuration for the specified rule ID and group.   * &#x60;id&#x60; of the rule to update.   * &#x60;rule_group_id&#x60; that contains the rule configuration.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;path&#x60; representing the file system or registry path to monitor.     * must be between 1 and 250 characters.      * All paths must end with the path separator, e.g. c:\\windows\\ /usr/bin/    * &#x60;severity&#x60; to categorize change events produced by this rule; must be one of: &#x60;Low&#x60;, &#x60;Medium&#x60;, &#x60;High&#x60; or &#x60;Critical&#x60;   * &#x60;depth&#x60; below the base path to monitor; must be one of: &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, &#x60;4&#x60;, &#x60;5&#x60; or &#x60;ANY&#x60;   * &#x60;precedence&#x60; is the order in which rules will be evaluated starting with 1. Specifying a precedence value that is already set for another rule in the group will result this rule being placed before that existing rule.  Falcon GLOB syntax is supported for the following 6 properties. Allowed rule group configuration is based on the type of rule group the rule group is added to.   * &#x60;include&#x60; represents the files, directories, registry keys, or registry values that will be monitored.    * &#x60;exclude&#x60; represents the files, directories, registry keys, or registry values that will &#x60;NOT&#x60; be monitored.    * &#x60;include_users&#x60; represents the changes performed by specific users that will be monitored.   * &#x60;exclude_users&#x60; represents the changes performed by specific users that will &#x60;NOT&#x60; be monitored.   * &#x60;include_processes&#x60; represents the changes performed by specific processes that will be monitored.   * &#x60;exclude_processes&#x60; represents the changes performed by specific processes that will be &#x60;NOT&#x60; monitored.   * &#x60;content_files&#x60; represents the files that will be monitored. Listed files must match the file include pattern and not match the file exclude pattern   * &#x60;content_registry_values&#x60; represents the registry values whose content will be monitored. Listed registry values must match the registry include pattern and not match the registry exclude pattern   * &#x60;enable_content_capture&#x60;   * &#x60;enable_hash_capture&#x60;  File system directory monitoring:   * &#x60;watch_delete_directory_changes&#x60;   * &#x60;watch_create_directory_changes&#x60;   * &#x60;watch_rename_directory_changes&#x60;   * &#x60;watch_attributes_directory_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)   * &#x60;watch_permissions_directory_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)  File system file monitoring:   * &#x60;watch_rename_file_changes&#x60;   * &#x60;watch_write_file_changes&#x60;   * &#x60;watch_create_file_changes&#x60;   * &#x60;watch_delete_file_changes&#x60;   * &#x60;watch_attributes_file_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)   * &#x60;watch_permissions_file_changes&#x60; (&#x60;macOS&#x60; is not supported at this time)  Windows registry key and value monitoring:    * &#x60;watch_create_key_changes&#x60;   * &#x60;watch_delete_key_changes&#x60;   * &#x60;watch_rename_key_changes&#x60;   * &#x60;watch_set_value_changes&#x60;   * &#x60;watch_delete_value_changes&#x60;   * &#x60;watch_create_file_changes&#x60; |  |

### Return type

[**RulegroupsRulesResponse**](RulegroupsRulesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_scheduled_exclusions

> <ScheduledexclusionsResponse> update_scheduled_exclusions(body)

Updates the provided scheduled exclusion configuration within the provided policy.

Updates the provided scheduled exclusion configuration within the provided policy.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Filevantage.new
body = Falcon::ScheduledexclusionsUpdateRequest.new({id: 'id_example', name: 'name_example', timezone: 'timezone_example'}) # ScheduledexclusionsUpdateRequest | Update an existing scheduled exclusion for the specified policy.      * `policy_id` to add the scheduled exclusion to.   * `name` must be between 1 and 100 characters.   * `description` can be between 0 and 500 characters.   * `users` can be between 0 and 500 characters representing a comma separated list of user to exclude their changes.      *  admin* excludes changes made by all usernames that begin with admin. Falon GLOB syntax is supported.   * `processes` can be between 0 and 500 characters representing a comma separated list of processes to exclude their changes.      * **\\RunMe.exe or **/RunMe.sh excludes changes made by RunMe.exe or RunMe.sh in any location.   * `schedule_start` must be provided to indicate the start of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * `schedule_end` optionally provided to indicate the end of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * `timezone`  must be provided to indicate the TimeZone Name set for the provided `scheduled_start` and `scheduled_end` values. See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.   * `repeated` optionally provided to indicate that the exclusion is applied repeatedly within the `scheduled_start` and `scheduled_end` time.      * `start_time` must be the hour(00-23) and minute(00-59) of the day formatted as `HH:MM`. Required if `all_day` is not set to `true`      * `end_time` must be the hour(00-23) and minute(00-59) of the day formatted as `HH:MM`. Required if `all_day` is not set to `true`      * `all_day` must be `true` or `false` to indicate the exclusion is applied all day.       * `frequency` must be one of `daily`, `weekly` or `monthly`.       * `occurrence` must be one of the following when `frequency` is set to `monthly`:        * `1st`, `2nd`, `3rd`, `4th` or `Last` represents the week.        * `Days` represents specific calendar days.      * `weekly_days` must be one or more of `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` or `Sunday` when `frequency` is set to `weekly` or `frequency` is set to `monthly` and `occurrence` is NOT set to `Days`.       * `monthly_days` must be set to one or more calendar days, between 1 and 31  when `frequency` is set to `monthly` and `occurrence` is set to `Days`. 

begin
  # Updates the provided scheduled exclusion configuration within the provided policy.
  result = api_instance.update_scheduled_exclusions(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_scheduled_exclusions: #{e}"
end
```

#### Using the update_scheduled_exclusions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledexclusionsResponse>, Integer, Hash)> update_scheduled_exclusions_with_http_info(body)

```ruby
begin
  # Updates the provided scheduled exclusion configuration within the provided policy.
  data, status_code, headers = api_instance.update_scheduled_exclusions_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledexclusionsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Filevantage->update_scheduled_exclusions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ScheduledexclusionsUpdateRequest**](ScheduledexclusionsUpdateRequest.md) | Update an existing scheduled exclusion for the specified policy.      * &#x60;policy_id&#x60; to add the scheduled exclusion to.   * &#x60;name&#x60; must be between 1 and 100 characters.   * &#x60;description&#x60; can be between 0 and 500 characters.   * &#x60;users&#x60; can be between 0 and 500 characters representing a comma separated list of user to exclude their changes.      *  admin* excludes changes made by all usernames that begin with admin. Falon GLOB syntax is supported.   * &#x60;processes&#x60; can be between 0 and 500 characters representing a comma separated list of processes to exclude their changes.      * **\\RunMe.exe or **/RunMe.sh excludes changes made by RunMe.exe or RunMe.sh in any location.   * &#x60;schedule_start&#x60; must be provided to indicate the start of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * &#x60;schedule_end&#x60; optionally provided to indicate the end of the schedule. This date/time must be an rfc3339 formatted string  https://datatracker.ietf.org/doc/html/rfc3339.   * &#x60;timezone&#x60;  must be provided to indicate the TimeZone Name set for the provided &#x60;scheduled_start&#x60; and &#x60;scheduled_end&#x60; values. See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.   * &#x60;repeated&#x60; optionally provided to indicate that the exclusion is applied repeatedly within the &#x60;scheduled_start&#x60; and &#x60;scheduled_end&#x60; time.      * &#x60;start_time&#x60; must be the hour(00-23) and minute(00-59) of the day formatted as &#x60;HH:MM&#x60;. Required if &#x60;all_day&#x60; is not set to &#x60;true&#x60;      * &#x60;end_time&#x60; must be the hour(00-23) and minute(00-59) of the day formatted as &#x60;HH:MM&#x60;. Required if &#x60;all_day&#x60; is not set to &#x60;true&#x60;      * &#x60;all_day&#x60; must be &#x60;true&#x60; or &#x60;false&#x60; to indicate the exclusion is applied all day.       * &#x60;frequency&#x60; must be one of &#x60;daily&#x60;, &#x60;weekly&#x60; or &#x60;monthly&#x60;.       * &#x60;occurrence&#x60; must be one of the following when &#x60;frequency&#x60; is set to &#x60;monthly&#x60;:        * &#x60;1st&#x60;, &#x60;2nd&#x60;, &#x60;3rd&#x60;, &#x60;4th&#x60; or &#x60;Last&#x60; represents the week.        * &#x60;Days&#x60; represents specific calendar days.      * &#x60;weekly_days&#x60; must be one or more of &#x60;Monday&#x60;, &#x60;Tuesday&#x60;, &#x60;Wednesday&#x60;, &#x60;Thursday&#x60;, &#x60;Friday&#x60;, &#x60;Saturday&#x60; or &#x60;Sunday&#x60; when &#x60;frequency&#x60; is set to &#x60;weekly&#x60; or &#x60;frequency&#x60; is set to &#x60;monthly&#x60; and &#x60;occurrence&#x60; is NOT set to &#x60;Days&#x60;.       * &#x60;monthly_days&#x60; must be set to one or more calendar days, between 1 and 31  when &#x60;frequency&#x60; is set to &#x60;monthly&#x60; and &#x60;occurrence&#x60; is set to &#x60;Days&#x60;.  |  |

### Return type

[**ScheduledexclusionsResponse**](ScheduledexclusionsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


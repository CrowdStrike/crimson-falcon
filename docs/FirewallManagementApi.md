# Falcon::FirewallManagementApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_events**](FirewallManagementApi.md#aggregate_events) | **POST** /fwmgr/aggregates/events/GET/v1 | Aggregate events for customer |
| [**aggregate_policy_rules**](FirewallManagementApi.md#aggregate_policy_rules) | **POST** /fwmgr/aggregates/policy-rules/GET/v1 | Aggregate rules within a policy for customer |
| [**aggregate_rule_groups**](FirewallManagementApi.md#aggregate_rule_groups) | **POST** /fwmgr/aggregates/rule-groups/GET/v1 | Aggregate rule groups for customer |
| [**aggregate_rules**](FirewallManagementApi.md#aggregate_rules) | **POST** /fwmgr/aggregates/rules/GET/v1 | Aggregate rules for customer |
| [**create_rule_group**](FirewallManagementApi.md#create_rule_group) | **POST** /fwmgr/entities/rule-groups/v1 | Create new rule group on a platform for a customer with a name and description, and return the ID |
| [**delete_rule_groups**](FirewallManagementApi.md#delete_rule_groups) | **DELETE** /fwmgr/entities/rule-groups/v1 | Delete rule group entities by ID |
| [**get_events**](FirewallManagementApi.md#get_events) | **GET** /fwmgr/entities/events/v1 | Get events entities by ID and optionally version |
| [**get_firewall_fields**](FirewallManagementApi.md#get_firewall_fields) | **GET** /fwmgr/entities/firewall-fields/v1 | Get the firewall field specifications by ID |
| [**get_platforms**](FirewallManagementApi.md#get_platforms) | **GET** /fwmgr/entities/platforms/v1 | Get platforms by ID, e.g., windows or mac or droid |
| [**get_policy_containers**](FirewallManagementApi.md#get_policy_containers) | **GET** /fwmgr/entities/policies/v1 | Get policy container entities by policy ID |
| [**get_rule_groups**](FirewallManagementApi.md#get_rule_groups) | **GET** /fwmgr/entities/rule-groups/v1 | Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order. |
| [**get_rules**](FirewallManagementApi.md#get_rules) | **GET** /fwmgr/entities/rules/v1 | Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string) |
| [**query_events**](FirewallManagementApi.md#query_events) | **GET** /fwmgr/queries/events/v1 | Find all event IDs matching the query with filter |
| [**query_firewall_fields**](FirewallManagementApi.md#query_firewall_fields) | **GET** /fwmgr/queries/firewall-fields/v1 | Get the firewall field specification IDs for the provided platform |
| [**query_platforms**](FirewallManagementApi.md#query_platforms) | **GET** /fwmgr/queries/platforms/v1 | Get the list of platform names |
| [**query_policy_rules**](FirewallManagementApi.md#query_policy_rules) | **GET** /fwmgr/queries/policy-rules/v1 | Find all firewall rule IDs matching the query with filter, and return them in precedence order |
| [**query_rule_groups**](FirewallManagementApi.md#query_rule_groups) | **GET** /fwmgr/queries/rule-groups/v1 | Find all rule group IDs matching the query with filter |
| [**query_rules**](FirewallManagementApi.md#query_rules) | **GET** /fwmgr/queries/rules/v1 | Find all rule IDs matching the query with filter |
| [**update_policy_container**](FirewallManagementApi.md#update_policy_container) | **PUT** /fwmgr/entities/policies/v1 | Update an identified policy container |
| [**update_rule_group**](FirewallManagementApi.md#update_rule_group) | **PATCH** /fwmgr/entities/rule-groups/v1 | Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules |


## aggregate_events

> <FwmgrApiAggregatesResponse> aggregate_events(body)

Aggregate events for customer

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
body = [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<FwmgrMsaAggregateQueryRequest> | Query criteria and settings

begin
  # Aggregate events for customer
  result = api_instance.aggregate_events(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->aggregate_events: #{e}"
end
```

#### Using the aggregate_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiAggregatesResponse>, Integer, Hash)> aggregate_events_with_http_info(body)

```ruby
begin
  # Aggregate events for customer
  data, status_code, headers = api_instance.aggregate_events_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->aggregate_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**FwmgrApiAggregatesResponse**](FwmgrApiAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_policy_rules

> <FwmgrApiAggregatesResponse> aggregate_policy_rules(body)

Aggregate rules within a policy for customer

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
body = [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<FwmgrMsaAggregateQueryRequest> | Query criteria and settings

begin
  # Aggregate rules within a policy for customer
  result = api_instance.aggregate_policy_rules(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->aggregate_policy_rules: #{e}"
end
```

#### Using the aggregate_policy_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiAggregatesResponse>, Integer, Hash)> aggregate_policy_rules_with_http_info(body)

```ruby
begin
  # Aggregate rules within a policy for customer
  data, status_code, headers = api_instance.aggregate_policy_rules_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->aggregate_policy_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**FwmgrApiAggregatesResponse**](FwmgrApiAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_rule_groups

> <FwmgrApiAggregatesResponse> aggregate_rule_groups(body)

Aggregate rule groups for customer

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
body = [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<FwmgrMsaAggregateQueryRequest> | Query criteria and settings

begin
  # Aggregate rule groups for customer
  result = api_instance.aggregate_rule_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->aggregate_rule_groups: #{e}"
end
```

#### Using the aggregate_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiAggregatesResponse>, Integer, Hash)> aggregate_rule_groups_with_http_info(body)

```ruby
begin
  # Aggregate rule groups for customer
  data, status_code, headers = api_instance.aggregate_rule_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->aggregate_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**FwmgrApiAggregatesResponse**](FwmgrApiAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_rules

> <FwmgrApiAggregatesResponse> aggregate_rules(body)

Aggregate rules for customer

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
body = [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<FwmgrMsaAggregateQueryRequest> | Query criteria and settings

begin
  # Aggregate rules for customer
  result = api_instance.aggregate_rules(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->aggregate_rules: #{e}"
end
```

#### Using the aggregate_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiAggregatesResponse>, Integer, Hash)> aggregate_rules_with_http_info(body)

```ruby
begin
  # Aggregate rules for customer
  data, status_code, headers = api_instance.aggregate_rules_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->aggregate_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**FwmgrApiAggregatesResponse**](FwmgrApiAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rule_group

> <FwmgrApiQueryResponse> create_rule_group(body, opts)

Create new rule group on a platform for a customer with a name and description, and return the ID

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
body = Falcon::FwmgrApiRuleGroupCreateRequestV1.new({description: 'description_example', enabled: false, name: 'name_example', rules: [Falcon::FwmgrApiRuleCreateRequestV1.new({action: 'action_example', address_family: 'address_family_example', description: 'description_example', direction: 'direction_example', enabled: false, fields: [Falcon::FwmgrApiWorkaroundUIFieldValue.new({name: 'name_example'})], icmp: Falcon::FwmgrDomainICMP.new({icmp_code: 'icmp_code_example', icmp_type: 'icmp_type_example'}), local_address: [Falcon::FwmgrDomainAddressRange.new({address: 'address_example'})], local_port: [Falcon::FwmgrDomainPortRange.new({_end: 37, start: 37})], log: false, monitor: Falcon::FwmgrDomainMonitoring.new({count: 'count_example', period_ms: 'period_ms_example'}), name: 'name_example', platform_ids: ['platform_ids_example'], protocol: 'protocol_example', remote_address: [Falcon::FwmgrDomainAddressRange.new({address: 'address_example'})], remote_port: [Falcon::FwmgrDomainPortRange.new({_end: 37, start: 37})], temp_id: 'temp_id_example'})]}) # FwmgrApiRuleGroupCreateRequestV1 | 
opts = {
  clone_id: 'clone_id_example', # String | A rule group ID from which to copy rules. If this is provided then the 'rules' property of the body is ignored.
  library: 'library_example', # String | If this flag is set to true then the rules will be cloned from the clone_id from the CrowdStrike Firewal Rule Groups Library.
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Create new rule group on a platform for a customer with a name and description, and return the ID
  result = api_instance.create_rule_group(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->create_rule_group: #{e}"
end
```

#### Using the create_rule_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiQueryResponse>, Integer, Hash)> create_rule_group_with_http_info(body, opts)

```ruby
begin
  # Create new rule group on a platform for a customer with a name and description, and return the ID
  data, status_code, headers = api_instance.create_rule_group_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->create_rule_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiRuleGroupCreateRequestV1**](FwmgrApiRuleGroupCreateRequestV1.md) |  |  |
| **clone_id** | **String** | A rule group ID from which to copy rules. If this is provided then the &#39;rules&#39; property of the body is ignored. | [optional] |
| **library** | **String** | If this flag is set to true then the rules will be cloned from the clone_id from the CrowdStrike Firewal Rule Groups Library. | [optional] |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrApiQueryResponse**](FwmgrApiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_rule_groups

> <FwmgrApiQueryResponse> delete_rule_groups(ids, opts)

Delete rule group entities by ID

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
ids = ['inner_example'] # Array<String> | The IDs of the rule groups to be deleted
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Delete rule group entities by ID
  result = api_instance.delete_rule_groups(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->delete_rule_groups: #{e}"
end
```

#### Using the delete_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiQueryResponse>, Integer, Hash)> delete_rule_groups_with_http_info(ids, opts)

```ruby
begin
  # Delete rule group entities by ID
  data, status_code, headers = api_instance.delete_rule_groups_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->delete_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the rule groups to be deleted |  |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrApiQueryResponse**](FwmgrApiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <FwmgrApiEventsResponse> get_events(ids)

Get events entities by ID and optionally version

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
ids = ['inner_example'] # Array<String> | The events to retrieve, identified by ID

begin
  # Get events entities by ID and optionally version
  result = api_instance.get_events(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiEventsResponse>, Integer, Hash)> get_events_with_http_info(ids)

```ruby
begin
  # Get events entities by ID and optionally version
  data, status_code, headers = api_instance.get_events_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiEventsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The events to retrieve, identified by ID |  |

### Return type

[**FwmgrApiEventsResponse**](FwmgrApiEventsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewall_fields

> <FwmgrApiFirewallFieldsResponse> get_firewall_fields(ids)

Get the firewall field specifications by ID

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
ids = ['inner_example'] # Array<String> | The IDs of the rule types to retrieve

begin
  # Get the firewall field specifications by ID
  result = api_instance.get_firewall_fields(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_firewall_fields: #{e}"
end
```

#### Using the get_firewall_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiFirewallFieldsResponse>, Integer, Hash)> get_firewall_fields_with_http_info(ids)

```ruby
begin
  # Get the firewall field specifications by ID
  data, status_code, headers = api_instance.get_firewall_fields_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiFirewallFieldsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_firewall_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the rule types to retrieve |  |

### Return type

[**FwmgrApiFirewallFieldsResponse**](FwmgrApiFirewallFieldsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_platforms

> <FwmgrApiPlatformsResponse> get_platforms(ids)

Get platforms by ID, e.g., windows or mac or droid

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
ids = ['inner_example'] # Array<String> | The IDs of the platforms to retrieve

begin
  # Get platforms by ID, e.g., windows or mac or droid
  result = api_instance.get_platforms(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_platforms: #{e}"
end
```

#### Using the get_platforms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiPlatformsResponse>, Integer, Hash)> get_platforms_with_http_info(ids)

```ruby
begin
  # Get platforms by ID, e.g., windows or mac or droid
  data, status_code, headers = api_instance.get_platforms_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiPlatformsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_platforms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the platforms to retrieve |  |

### Return type

[**FwmgrApiPlatformsResponse**](FwmgrApiPlatformsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy_containers

> <FwmgrApiPolicyContainersResponse> get_policy_containers(ids)

Get policy container entities by policy ID

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
ids = ['inner_example'] # Array<String> | The policy container(s) to retrieve, identified by policy ID

begin
  # Get policy container entities by policy ID
  result = api_instance.get_policy_containers(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_policy_containers: #{e}"
end
```

#### Using the get_policy_containers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiPolicyContainersResponse>, Integer, Hash)> get_policy_containers_with_http_info(ids)

```ruby
begin
  # Get policy container entities by policy ID
  data, status_code, headers = api_instance.get_policy_containers_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiPolicyContainersResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_policy_containers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The policy container(s) to retrieve, identified by policy ID |  |

### Return type

[**FwmgrApiPolicyContainersResponse**](FwmgrApiPolicyContainersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rule_groups

> <FwmgrApiRuleGroupsResponse> get_rule_groups(ids)

Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
ids = ['inner_example'] # Array<String> | The IDs of the rule groups to retrieve

begin
  # Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order.
  result = api_instance.get_rule_groups(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_rule_groups: #{e}"
end
```

#### Using the get_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiRuleGroupsResponse>, Integer, Hash)> get_rule_groups_with_http_info(ids)

```ruby
begin
  # Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order.
  data, status_code, headers = api_instance.get_rule_groups_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiRuleGroupsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the rule groups to retrieve |  |

### Return type

[**FwmgrApiRuleGroupsResponse**](FwmgrApiRuleGroupsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rules

> <FwmgrApiRulesResponse> get_rules(ids)

Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string)

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
ids = ['inner_example'] # Array<String> | The rules to retrieve, identified by ID

begin
  # Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string)
  result = api_instance.get_rules(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_rules: #{e}"
end
```

#### Using the get_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiRulesResponse>, Integer, Hash)> get_rules_with_http_info(ids)

```ruby
begin
  # Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string)
  data, status_code, headers = api_instance.get_rules_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->get_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The rules to retrieve, identified by ID |  |

### Return type

[**FwmgrApiRulesResponse**](FwmgrApiRulesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_events

> <FwmgrApiQueryResponse> query_events(opts)

Find all event IDs matching the query with filter

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
opts = {
  sort: 'sort_example', # String | Possible order by fields: 
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: enabled, platform, name, description, etc TODO. Filter range criteria: created_on, modified_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields, plus TODO
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Find all event IDs matching the query with filter
  result = api_instance.query_events(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_events: #{e}"
end
```

#### Using the query_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiQueryResponse>, Integer, Hash)> query_events_with_http_info(opts)

```ruby
begin
  # Find all event IDs matching the query with filter
  data, status_code, headers = api_instance.query_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields:  | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: enabled, platform, name, description, etc TODO. Filter range criteria: created_on, modified_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields, plus TODO | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrApiQueryResponse**](FwmgrApiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_firewall_fields

> <FwmgrMsaQueryResponse> query_firewall_fields(opts)

Get the firewall field specification IDs for the provided platform

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
opts = {
  platform_id: 'platform_id_example', # String | Get fields configuration for this platform
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Get the firewall field specification IDs for the provided platform
  result = api_instance.query_firewall_fields(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_firewall_fields: #{e}"
end
```

#### Using the query_firewall_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaQueryResponse>, Integer, Hash)> query_firewall_fields_with_http_info(opts)

```ruby
begin
  # Get the firewall field specification IDs for the provided platform
  data, status_code, headers = api_instance.query_firewall_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_firewall_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_id** | **String** | Get fields configuration for this platform | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrMsaQueryResponse**](FwmgrMsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_platforms

> <FwmgrMsaQueryResponse> query_platforms(opts)

Get the list of platform names

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Get the list of platform names
  result = api_instance.query_platforms(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_platforms: #{e}"
end
```

#### Using the query_platforms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaQueryResponse>, Integer, Hash)> query_platforms_with_http_info(opts)

```ruby
begin
  # Get the list of platform names
  data, status_code, headers = api_instance.query_platforms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_platforms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrMsaQueryResponse**](FwmgrMsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_policy_rules

> <FwmgrApiQueryResponse> query_policy_rules(opts)

Find all firewall rule IDs matching the query with filter, and return them in precedence order

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
opts = {
  id: 'id_example', # String | The ID of the policy container within which to query
  sort: 'sort_example', # String | Possible order by fields: 
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: enabled, platform, name, description, etc TODO. Filter range criteria: created_on, modified_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields, plus TODO
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Find all firewall rule IDs matching the query with filter, and return them in precedence order
  result = api_instance.query_policy_rules(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_policy_rules: #{e}"
end
```

#### Using the query_policy_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiQueryResponse>, Integer, Hash)> query_policy_rules_with_http_info(opts)

```ruby
begin
  # Find all firewall rule IDs matching the query with filter, and return them in precedence order
  data, status_code, headers = api_instance.query_policy_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_policy_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the policy container within which to query | [optional] |
| **sort** | **String** | Possible order by fields:  | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: enabled, platform, name, description, etc TODO. Filter range criteria: created_on, modified_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields, plus TODO | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrApiQueryResponse**](FwmgrApiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rule_groups

> <FwmgrApiQueryResponse> query_rule_groups(opts)

Find all rule group IDs matching the query with filter

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
opts = {
  sort: 'sort_example', # String | Possible order by fields: 
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: enabled, platform, name, description, etc TODO. Filter range criteria: created_on, modified_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields, plus TODO
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Find all rule group IDs matching the query with filter
  result = api_instance.query_rule_groups(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_rule_groups: #{e}"
end
```

#### Using the query_rule_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiQueryResponse>, Integer, Hash)> query_rule_groups_with_http_info(opts)

```ruby
begin
  # Find all rule group IDs matching the query with filter
  data, status_code, headers = api_instance.query_rule_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields:  | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: enabled, platform, name, description, etc TODO. Filter range criteria: created_on, modified_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields, plus TODO | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrApiQueryResponse**](FwmgrApiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rules

> <FwmgrApiQueryResponse> query_rules(opts)

Find all rule IDs matching the query with filter

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
opts = {
  sort: 'sort_example', # String | Possible order by fields: 
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: enabled, platform, name, description, etc TODO. Filter range criteria: created_on, modified_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields, plus TODO
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Find all rule IDs matching the query with filter
  result = api_instance.query_rules(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_rules: #{e}"
end
```

#### Using the query_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiQueryResponse>, Integer, Hash)> query_rules_with_http_info(opts)

```ruby
begin
  # Find all rule IDs matching the query with filter
  data, status_code, headers = api_instance.query_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->query_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields:  | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: enabled, platform, name, description, etc TODO. Filter range criteria: created_on, modified_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields, plus TODO | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrApiQueryResponse**](FwmgrApiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_policy_container

> <FwmgrMsaReplyMetaOnly> update_policy_container(body)

Update an identified policy container

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
body = Falcon::FwmgrApiPolicyContainerUpsertRequestV1.new({default_inbound: 'default_inbound_example', default_outbound: 'default_outbound_example', enforce: false, platform_id: 'platform_id_example', policy_id: 'policy_id_example', rule_group_ids: ['rule_group_ids_example'], test_mode: false}) # FwmgrApiPolicyContainerUpsertRequestV1 | 

begin
  # Update an identified policy container
  result = api_instance.update_policy_container(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->update_policy_container: #{e}"
end
```

#### Using the update_policy_container_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaReplyMetaOnly>, Integer, Hash)> update_policy_container_with_http_info(body)

```ruby
begin
  # Update an identified policy container
  data, status_code, headers = api_instance.update_policy_container_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->update_policy_container_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiPolicyContainerUpsertRequestV1**](FwmgrApiPolicyContainerUpsertRequestV1.md) |  |  |

### Return type

[**FwmgrMsaReplyMetaOnly**](FwmgrMsaReplyMetaOnly.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rule_group

> <FwmgrApiQueryResponse> update_rule_group(body, opts)

Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FirewallManagementApi.new
body = Falcon::FwmgrApiRuleGroupModifyRequestV1.new({diff_operations: [Falcon::FwmgrApiJsonDiff.new({op: 'op_example', path: 'path_example', value: 3.56})], diff_type: 'diff_type_example', id: 'id_example', rule_ids: ['rule_ids_example'], rule_versions: [37], tracking: 'tracking_example'}) # FwmgrApiRuleGroupModifyRequestV1 | 
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules
  result = api_instance.update_rule_group(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->update_rule_group: #{e}"
end
```

#### Using the update_rule_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiQueryResponse>, Integer, Hash)> update_rule_group_with_http_info(body, opts)

```ruby
begin
  # Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules
  data, status_code, headers = api_instance.update_rule_group_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagementApi->update_rule_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiRuleGroupModifyRequestV1**](FwmgrApiRuleGroupModifyRequestV1.md) |  |  |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrApiQueryResponse**](FwmgrApiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


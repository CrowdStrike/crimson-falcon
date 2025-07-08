# Falcon::FirewallManagement

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_events**](FirewallManagement.md#aggregate_events) | **POST** /fwmgr/aggregates/events/GET/v1 | Aggregate events for customer |
| [**aggregate_policy_rules**](FirewallManagement.md#aggregate_policy_rules) | **POST** /fwmgr/aggregates/policy-rules/GET/v1 | Aggregate rules within a policy for customer |
| [**aggregate_rule_groups**](FirewallManagement.md#aggregate_rule_groups) | **POST** /fwmgr/aggregates/rule-groups/GET/v1 | Aggregate rule groups for customer |
| [**aggregate_rules**](FirewallManagement.md#aggregate_rules) | **POST** /fwmgr/aggregates/rules/GET/v1 | Aggregate rules for customer |
| [**create_network_locations**](FirewallManagement.md#create_network_locations) | **POST** /fwmgr/entities/network-locations/v1 | Create new network locations provided, and return the ID. |
| [**create_rule_group**](FirewallManagement.md#create_rule_group) | **POST** /fwmgr/entities/rule-groups/v1 | Create new rule group on a platform for a customer with a name and description, and return the ID |
| [**create_rule_group_validation**](FirewallManagement.md#create_rule_group_validation) | **POST** /fwmgr/entities/rule-groups/validation/v1 | Validates the request of creating a new rule group on a platform for a customer with a name and description |
| [**delete_network_locations**](FirewallManagement.md#delete_network_locations) | **DELETE** /fwmgr/entities/network-locations/v1 | Delete network location entities by ID. |
| [**delete_rule_groups**](FirewallManagement.md#delete_rule_groups) | **DELETE** /fwmgr/entities/rule-groups/v1 | Delete rule group entities by ID |
| [**get_events**](FirewallManagement.md#get_events) | **GET** /fwmgr/entities/events/v1 | Get events entities by ID and optionally version |
| [**get_firewall_fields**](FirewallManagement.md#get_firewall_fields) | **GET** /fwmgr/entities/firewall-fields/v1 | Get the firewall field specifications by ID |
| [**get_network_locations**](FirewallManagement.md#get_network_locations) | **GET** /fwmgr/entities/network-locations/v1 | Get a summary of network locations entities by ID |
| [**get_network_locations_details**](FirewallManagement.md#get_network_locations_details) | **GET** /fwmgr/entities/network-locations-details/v1 | Get network locations entities by ID |
| [**get_platforms**](FirewallManagement.md#get_platforms) | **GET** /fwmgr/entities/platforms/v1 | Get platforms by ID, e.g., windows or mac or droid |
| [**get_policy_containers**](FirewallManagement.md#get_policy_containers) | **GET** /fwmgr/entities/policies/v1 | Get policy container entities by policy ID |
| [**get_rule_groups**](FirewallManagement.md#get_rule_groups) | **GET** /fwmgr/entities/rule-groups/v1 | Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order. |
| [**get_rules**](FirewallManagement.md#get_rules) | **GET** /fwmgr/entities/rules/v1 | Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string) |
| [**query_events**](FirewallManagement.md#query_events) | **GET** /fwmgr/queries/events/v1 | Find all event IDs matching the query with filter |
| [**query_firewall_fields**](FirewallManagement.md#query_firewall_fields) | **GET** /fwmgr/queries/firewall-fields/v1 | Get the firewall field specification IDs for the provided platform |
| [**query_network_locations**](FirewallManagement.md#query_network_locations) | **GET** /fwmgr/queries/network-locations/v1 | Get a list of network location IDs |
| [**query_platforms**](FirewallManagement.md#query_platforms) | **GET** /fwmgr/queries/platforms/v1 | Get the list of platform names |
| [**query_policy_rules**](FirewallManagement.md#query_policy_rules) | **GET** /fwmgr/queries/policy-rules/v1 | Find all firewall rule IDs matching the query with filter, and return them in precedence order |
| [**query_rule_groups**](FirewallManagement.md#query_rule_groups) | **GET** /fwmgr/queries/rule-groups/v1 | Find all rule group IDs matching the query with filter |
| [**query_rules**](FirewallManagement.md#query_rules) | **GET** /fwmgr/queries/rules/v1 | Find all rule IDs matching the query with filter |
| [**update_network_locations**](FirewallManagement.md#update_network_locations) | **PATCH** /fwmgr/entities/network-locations/v1 | Updates the network locations provided, and return the ID. |
| [**update_network_locations_metadata**](FirewallManagement.md#update_network_locations_metadata) | **POST** /fwmgr/entities/network-locations-metadata/v1 | Updates the network locations metadata such as polling_intervals for the cid |
| [**update_network_locations_precedence**](FirewallManagement.md#update_network_locations_precedence) | **POST** /fwmgr/entities/network-locations-precedence/v1 | Updates the network locations precedence according to the list of ids provided. |
| [**update_policy_container**](FirewallManagement.md#update_policy_container) | **PUT** /fwmgr/entities/policies/v2 | Update an identified policy container, including local logging functionality. |
| [**update_policy_container_v1**](FirewallManagement.md#update_policy_container_v1) | **PUT** /fwmgr/entities/policies/v1 | Update an identified policy container. WARNING: This endpoint is deprecated in favor of v2, using this endpoint could disable your local logging setting. |
| [**update_rule_group**](FirewallManagement.md#update_rule_group) | **PATCH** /fwmgr/entities/rule-groups/v1 | Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules |
| [**update_rule_group_validation**](FirewallManagement.md#update_rule_group_validation) | **PATCH** /fwmgr/entities/rule-groups/validation/v1 | Validates the request of updating name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules |
| [**upsert_network_locations**](FirewallManagement.md#upsert_network_locations) | **PUT** /fwmgr/entities/network-locations/v1 | Updates the network locations provided, and return the ID. |
| [**validate_filepath_pattern**](FirewallManagement.md#validate_filepath_pattern) | **POST** /fwmgr/entities/rules/validate-filepath/v1 | Validates that the test pattern matches the executable filepath glob pattern. |


## aggregate_events

> <FwmgrApiAggregatesResponse> aggregate_events(body)

Aggregate events for customer

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

api_instance = Falcon::FirewallManagement.new
body = [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<FwmgrMsaAggregateQueryRequest> | Query criteria and settings

begin
  # Aggregate events for customer
  result = api_instance.aggregate_events(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->aggregate_events: #{e}"
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
  puts "Error when calling FirewallManagement->aggregate_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**FwmgrApiAggregatesResponse**](FwmgrApiAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_policy_rules

> <FwmgrApiAggregatesResponse> aggregate_policy_rules(body)

Aggregate rules within a policy for customer

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

api_instance = Falcon::FirewallManagement.new
body = [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<FwmgrMsaAggregateQueryRequest> | Query criteria and settings

begin
  # Aggregate rules within a policy for customer
  result = api_instance.aggregate_policy_rules(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->aggregate_policy_rules: #{e}"
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
  puts "Error when calling FirewallManagement->aggregate_policy_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**FwmgrApiAggregatesResponse**](FwmgrApiAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_rule_groups

> <FwmgrApiAggregatesResponse> aggregate_rule_groups(body)

Aggregate rule groups for customer

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

api_instance = Falcon::FirewallManagement.new
body = [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<FwmgrMsaAggregateQueryRequest> | Query criteria and settings

begin
  # Aggregate rule groups for customer
  result = api_instance.aggregate_rule_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->aggregate_rule_groups: #{e}"
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
  puts "Error when calling FirewallManagement->aggregate_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**FwmgrApiAggregatesResponse**](FwmgrApiAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_rules

> <FwmgrApiAggregatesResponse> aggregate_rules(body)

Aggregate rules for customer

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

api_instance = Falcon::FirewallManagement.new
body = [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::FwmgrMsaAggregateQueryRequest.new({date_ranges: [Falcon::FwmgrMsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::FwmgrMsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<FwmgrMsaAggregateQueryRequest> | Query criteria and settings

begin
  # Aggregate rules for customer
  result = api_instance.aggregate_rules(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->aggregate_rules: #{e}"
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
  puts "Error when calling FirewallManagement->aggregate_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**FwmgrApiAggregatesResponse**](FwmgrApiAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_network_locations

> <FwmgrApiNetworkLocationsResponse> create_network_locations(body, opts)

Create new network locations provided, and return the ID.

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiNetworkLocationCreateRequestV1.new({connection_types: Falcon::FwmgrDomainConnectionType.new({wired: false, wireless: Falcon::FwmgrDomainWirelessType.new({enabled: false, require_encryption: false, ssids: ['ssids_example']})}), default_gateways: ['default_gateways_example'], description: 'description_example', dhcp_servers: ['dhcp_servers_example'], dns_resolution_targets: Falcon::FwmgrDomainDNSResolutionTargets.new({targets: [Falcon::FwmgrDomainDNSTarget.new({hostname: 'hostname_example'})]}), dns_servers: ['dns_servers_example'], enabled: false, host_addresses: ['host_addresses_example'], https_reachable_hosts: Falcon::FwmgrDomainHTTPSHosts.new({hostnames: ['hostnames_example']}), icmp_request_targets: Falcon::FwmgrDomainICMPTargets.new({targets: ['targets_example']}), name: 'name_example'}) # FwmgrApiNetworkLocationCreateRequestV1 | 
opts = {
  clone_id: 'clone_id_example', # String | A network location ID from which to copy location. If this is provided then the body of the request is ignored.
  add_fw_rules: true, # Boolean | A boolean to determine whether the cloned location needs to be added to the same firewall rules that original location is added to.
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Create new network locations provided, and return the ID.
  result = api_instance.create_network_locations(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->create_network_locations: #{e}"
end
```

#### Using the create_network_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiNetworkLocationsResponse>, Integer, Hash)> create_network_locations_with_http_info(body, opts)

```ruby
begin
  # Create new network locations provided, and return the ID.
  data, status_code, headers = api_instance.create_network_locations_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiNetworkLocationsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->create_network_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiNetworkLocationCreateRequestV1**](FwmgrApiNetworkLocationCreateRequestV1.md) |  |  |
| **clone_id** | **String** | A network location ID from which to copy location. If this is provided then the body of the request is ignored. | [optional] |
| **add_fw_rules** | **Boolean** | A boolean to determine whether the cloned location needs to be added to the same firewall rules that original location is added to. | [optional] |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrApiNetworkLocationsResponse**](FwmgrApiNetworkLocationsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rule_group

> <FwmgrApiQueryResponse> create_rule_group(body, opts)

Create new rule group on a platform for a customer with a name and description, and return the ID

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiRuleGroupCreateRequestV1.new({description: 'description_example', enabled: false, name: 'name_example', platform: 'platform_example', rules: [Falcon::FwmgrApiRuleCreateRequestV1.new({action: 'action_example', address_family: 'address_family_example', description: 'description_example', direction: 'direction_example', enabled: false, fields: [Falcon::FwmgrApiWorkaroundUIFieldValue.new({name: 'name_example'})], fqdn: 'fqdn_example', fqdn_enabled: false, icmp: Falcon::FwmgrDomainICMP.new({icmp_code: 'icmp_code_example', icmp_type: 'icmp_type_example'}), local_address: [Falcon::FwmgrDomainAddressRange.new({address: 'address_example'})], local_port: [Falcon::FwmgrDomainPortRange.new({_end: 37, start: 37})], log: false, monitor: Falcon::FwmgrDomainMonitoring.new({count: 'count_example', period_ms: 'period_ms_example'}), name: 'name_example', protocol: 'protocol_example', remote_address: [Falcon::FwmgrDomainAddressRange.new({address: 'address_example'})], remote_port: [Falcon::FwmgrDomainPortRange.new({_end: 37, start: 37})], temp_id: 'temp_id_example'})]}) # FwmgrApiRuleGroupCreateRequestV1 | 
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
  puts "Error when calling FirewallManagement->create_rule_group: #{e}"
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
  puts "Error when calling FirewallManagement->create_rule_group_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rule_group_validation

> <FwmgrMsaspecQueryResponse> create_rule_group_validation(body, opts)

Validates the request of creating a new rule group on a platform for a customer with a name and description

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiRuleGroupCreateRequestV1.new({description: 'description_example', enabled: false, name: 'name_example', platform: 'platform_example', rules: [Falcon::FwmgrApiRuleCreateRequestV1.new({action: 'action_example', address_family: 'address_family_example', description: 'description_example', direction: 'direction_example', enabled: false, fields: [Falcon::FwmgrApiWorkaroundUIFieldValue.new({name: 'name_example'})], fqdn: 'fqdn_example', fqdn_enabled: false, icmp: Falcon::FwmgrDomainICMP.new({icmp_code: 'icmp_code_example', icmp_type: 'icmp_type_example'}), local_address: [Falcon::FwmgrDomainAddressRange.new({address: 'address_example'})], local_port: [Falcon::FwmgrDomainPortRange.new({_end: 37, start: 37})], log: false, monitor: Falcon::FwmgrDomainMonitoring.new({count: 'count_example', period_ms: 'period_ms_example'}), name: 'name_example', protocol: 'protocol_example', remote_address: [Falcon::FwmgrDomainAddressRange.new({address: 'address_example'})], remote_port: [Falcon::FwmgrDomainPortRange.new({_end: 37, start: 37})], temp_id: 'temp_id_example'})]}) # FwmgrApiRuleGroupCreateRequestV1 | 
opts = {
  clone_id: 'clone_id_example', # String | A rule group ID from which to copy rules. If this is provided then the 'rules' property of the body is ignored.
  library: 'library_example', # String | If this flag is set to true then the rules will be cloned from the clone_id from the CrowdStrike Firewall Rule Groups Library.
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Validates the request of creating a new rule group on a platform for a customer with a name and description
  result = api_instance.create_rule_group_validation(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->create_rule_group_validation: #{e}"
end
```

#### Using the create_rule_group_validation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> create_rule_group_validation_with_http_info(body, opts)

```ruby
begin
  # Validates the request of creating a new rule group on a platform for a customer with a name and description
  data, status_code, headers = api_instance.create_rule_group_validation_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->create_rule_group_validation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiRuleGroupCreateRequestV1**](FwmgrApiRuleGroupCreateRequestV1.md) |  |  |
| **clone_id** | **String** | A rule group ID from which to copy rules. If this is provided then the &#39;rules&#39; property of the body is ignored. | [optional] |
| **library** | **String** | If this flag is set to true then the rules will be cloned from the clone_id from the CrowdStrike Firewall Rule Groups Library. | [optional] |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_network_locations

> <FwmgrMsaspecQueryResponse> delete_network_locations(ids)

Delete network location entities by ID.

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The IDs of the network locations to be deleted

begin
  # Delete network location entities by ID.
  result = api_instance.delete_network_locations(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->delete_network_locations: #{e}"
end
```

#### Using the delete_network_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> delete_network_locations_with_http_info(ids)

```ruby
begin
  # Delete network location entities by ID.
  data, status_code, headers = api_instance.delete_network_locations_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->delete_network_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the network locations to be deleted |  |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_rule_groups

> <FwmgrApiQueryResponse> delete_rule_groups(ids, opts)

Delete rule group entities by ID

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The IDs of the rule groups to be deleted
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Delete rule group entities by ID
  result = api_instance.delete_rule_groups(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->delete_rule_groups: #{e}"
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
  puts "Error when calling FirewallManagement->delete_rule_groups_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <FwmgrApiEventsResponse> get_events(ids)

Get events entities by ID and optionally version

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The events to retrieve, identified by ID

begin
  # Get events entities by ID and optionally version
  result = api_instance.get_events(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_events: #{e}"
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
  puts "Error when calling FirewallManagement->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The events to retrieve, identified by ID |  |

### Return type

[**FwmgrApiEventsResponse**](FwmgrApiEventsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewall_fields

> <FwmgrApiFirewallFieldsResponse> get_firewall_fields(ids)

Get the firewall field specifications by ID

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The IDs of the rule types to retrieve

begin
  # Get the firewall field specifications by ID
  result = api_instance.get_firewall_fields(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_firewall_fields: #{e}"
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
  puts "Error when calling FirewallManagement->get_firewall_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the rule types to retrieve |  |

### Return type

[**FwmgrApiFirewallFieldsResponse**](FwmgrApiFirewallFieldsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_network_locations

> <FwmgrApiNetworkLocationSummariesResponse> get_network_locations(ids)

Get a summary of network locations entities by ID

This endpoint returns a summary of network locations that includes name, description, enabled/disabled status, a count of associated rules etc

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The events to retrieve, identified by ID

begin
  # Get a summary of network locations entities by ID
  result = api_instance.get_network_locations(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_network_locations: #{e}"
end
```

#### Using the get_network_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiNetworkLocationSummariesResponse>, Integer, Hash)> get_network_locations_with_http_info(ids)

```ruby
begin
  # Get a summary of network locations entities by ID
  data, status_code, headers = api_instance.get_network_locations_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiNetworkLocationSummariesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_network_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The events to retrieve, identified by ID |  |

### Return type

[**FwmgrApiNetworkLocationSummariesResponse**](FwmgrApiNetworkLocationSummariesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_network_locations_details

> <FwmgrApiNetworkLocationsResponse> get_network_locations_details(ids)

Get network locations entities by ID

This endpoint returns the complete network locations objects that includes all the network location conditions.

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The events to retrieve, identified by ID

begin
  # Get network locations entities by ID
  result = api_instance.get_network_locations_details(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_network_locations_details: #{e}"
end
```

#### Using the get_network_locations_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiNetworkLocationsResponse>, Integer, Hash)> get_network_locations_details_with_http_info(ids)

```ruby
begin
  # Get network locations entities by ID
  data, status_code, headers = api_instance.get_network_locations_details_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiNetworkLocationsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_network_locations_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The events to retrieve, identified by ID |  |

### Return type

[**FwmgrApiNetworkLocationsResponse**](FwmgrApiNetworkLocationsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_platforms

> <FwmgrApiPlatformsResponse> get_platforms(ids)

Get platforms by ID, e.g., windows or mac or droid

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The IDs of the platforms to retrieve

begin
  # Get platforms by ID, e.g., windows or mac or droid
  result = api_instance.get_platforms(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_platforms: #{e}"
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
  puts "Error when calling FirewallManagement->get_platforms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the platforms to retrieve |  |

### Return type

[**FwmgrApiPlatformsResponse**](FwmgrApiPlatformsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy_containers

> <FwmgrApiPolicyContainersResponse> get_policy_containers(ids)

Get policy container entities by policy ID

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The policy container(s) to retrieve, identified by policy ID

begin
  # Get policy container entities by policy ID
  result = api_instance.get_policy_containers(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_policy_containers: #{e}"
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
  puts "Error when calling FirewallManagement->get_policy_containers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The policy container(s) to retrieve, identified by policy ID |  |

### Return type

[**FwmgrApiPolicyContainersResponse**](FwmgrApiPolicyContainersResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rule_groups

> <FwmgrApiRuleGroupsResponse> get_rule_groups(ids)

Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order.

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The IDs of the rule groups to retrieve

begin
  # Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order.
  result = api_instance.get_rule_groups(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_rule_groups: #{e}"
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
  puts "Error when calling FirewallManagement->get_rule_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the rule groups to retrieve |  |

### Return type

[**FwmgrApiRuleGroupsResponse**](FwmgrApiRuleGroupsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rules

> <FwmgrApiRulesResponse> get_rules(ids)

Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string)

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

api_instance = Falcon::FirewallManagement.new
ids = ['inner_example'] # Array<String> | The rules to retrieve, identified by ID

begin
  # Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string)
  result = api_instance.get_rules(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->get_rules: #{e}"
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
  puts "Error when calling FirewallManagement->get_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The rules to retrieve, identified by ID |  |

### Return type

[**FwmgrApiRulesResponse**](FwmgrApiRulesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_events

> <FwmgrApiQueryResponse> query_events(opts)

Find all event IDs matching the query with filter

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

api_instance = Falcon::FirewallManagement.new
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
  puts "Error when calling FirewallManagement->query_events: #{e}"
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
  puts "Error when calling FirewallManagement->query_events_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_firewall_fields

> <FwmgrMsaspecQueryResponse> query_firewall_fields(opts)

Get the firewall field specification IDs for the provided platform

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

api_instance = Falcon::FirewallManagement.new
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
  puts "Error when calling FirewallManagement->query_firewall_fields: #{e}"
end
```

#### Using the query_firewall_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> query_firewall_fields_with_http_info(opts)

```ruby
begin
  # Get the firewall field specification IDs for the provided platform
  data, status_code, headers = api_instance.query_firewall_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->query_firewall_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_id** | **String** | Get fields configuration for this platform | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_network_locations

> <FwmgrApiQueryResponse> query_network_locations(opts)

Get a list of network location IDs

This endpoint returns a list of network location IDs based of query parameter.

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

api_instance = Falcon::FirewallManagement.new
opts = {
  sort: 'sort_example', # String | Possible order by fields: 
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: name
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Get a list of network location IDs
  result = api_instance.query_network_locations(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->query_network_locations: #{e}"
end
```

#### Using the query_network_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiQueryResponse>, Integer, Hash)> query_network_locations_with_http_info(opts)

```ruby
begin
  # Get a list of network location IDs
  data, status_code, headers = api_instance.query_network_locations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->query_network_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields:  | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: name | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrApiQueryResponse**](FwmgrApiQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_platforms

> <FwmgrMsaspecQueryResponse> query_platforms(opts)

Get the list of platform names

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

api_instance = Falcon::FirewallManagement.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Get the list of platform names
  result = api_instance.query_platforms(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->query_platforms: #{e}"
end
```

#### Using the query_platforms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> query_platforms_with_http_info(opts)

```ruby
begin
  # Get the list of platform names
  data, status_code, headers = api_instance.query_platforms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->query_platforms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_policy_rules

> <FwmgrApiQueryResponse> query_policy_rules(opts)

Find all firewall rule IDs matching the query with filter, and return them in precedence order

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

api_instance = Falcon::FirewallManagement.new
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
  puts "Error when calling FirewallManagement->query_policy_rules: #{e}"
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
  puts "Error when calling FirewallManagement->query_policy_rules_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rule_groups

> <FwmgrApiQueryResponse> query_rule_groups(opts)

Find all rule group IDs matching the query with filter

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

api_instance = Falcon::FirewallManagement.new
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
  puts "Error when calling FirewallManagement->query_rule_groups: #{e}"
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
  puts "Error when calling FirewallManagement->query_rule_groups_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rules

> <FwmgrApiQueryResponse> query_rules(opts)

Find all rule IDs matching the query with filter

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

api_instance = Falcon::FirewallManagement.new
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
  puts "Error when calling FirewallManagement->query_rules: #{e}"
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
  puts "Error when calling FirewallManagement->query_rules_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_network_locations

> <FwmgrMsaspecQueryResponse> update_network_locations(body, opts)

Updates the network locations provided, and return the ID.

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiNetworkLocationModifyRequestV1.new({connection_types: Falcon::FwmgrDomainConnectionType.new({wired: false, wireless: Falcon::FwmgrDomainWirelessType.new({enabled: false, require_encryption: false, ssids: ['ssids_example']})}), default_gateways: ['default_gateways_example'], description: 'description_example', dhcp_servers: ['dhcp_servers_example'], dns_resolution_targets: Falcon::FwmgrDomainDNSResolutionTargets.new({targets: [Falcon::FwmgrDomainDNSTarget.new({hostname: 'hostname_example'})]}), dns_servers: ['dns_servers_example'], enabled: false, host_addresses: ['host_addresses_example'], https_reachable_hosts: Falcon::FwmgrDomainHTTPSHosts.new({hostnames: ['hostnames_example']}), icmp_request_targets: Falcon::FwmgrDomainICMPTargets.new({targets: ['targets_example']}), id: 'id_example', name: 'name_example'}) # FwmgrApiNetworkLocationModifyRequestV1 | 
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Updates the network locations provided, and return the ID.
  result = api_instance.update_network_locations(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_network_locations: #{e}"
end
```

#### Using the update_network_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> update_network_locations_with_http_info(body, opts)

```ruby
begin
  # Updates the network locations provided, and return the ID.
  data, status_code, headers = api_instance.update_network_locations_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_network_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiNetworkLocationModifyRequestV1**](FwmgrApiNetworkLocationModifyRequestV1.md) |  |  |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_network_locations_metadata

> <FwmgrMsaspecQueryResponse> update_network_locations_metadata(body, opts)

Updates the network locations metadata such as polling_intervals for the cid

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiNetworkLocationModifyMetadataRequestV1.new({cid: 'cid_example', dns_resolution_targets_polling_interval: 37, https_reachable_hosts_polling_interval: 37, icmp_request_targets_polling_interval: 37, location_precedence: ['location_precedence_example']}) # FwmgrApiNetworkLocationModifyMetadataRequestV1 | 
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Updates the network locations metadata such as polling_intervals for the cid
  result = api_instance.update_network_locations_metadata(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_network_locations_metadata: #{e}"
end
```

#### Using the update_network_locations_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> update_network_locations_metadata_with_http_info(body, opts)

```ruby
begin
  # Updates the network locations metadata such as polling_intervals for the cid
  data, status_code, headers = api_instance.update_network_locations_metadata_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_network_locations_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiNetworkLocationModifyMetadataRequestV1**](FwmgrApiNetworkLocationModifyMetadataRequestV1.md) |  |  |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_network_locations_precedence

> <FwmgrMsaspecQueryResponse> update_network_locations_precedence(body, opts)

Updates the network locations precedence according to the list of ids provided.

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiNetworkLocationModifyPrecedenceRequestV1.new({cid: 'cid_example', location_precedence: ['location_precedence_example']}) # FwmgrApiNetworkLocationModifyPrecedenceRequestV1 | 
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Updates the network locations precedence according to the list of ids provided.
  result = api_instance.update_network_locations_precedence(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_network_locations_precedence: #{e}"
end
```

#### Using the update_network_locations_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> update_network_locations_precedence_with_http_info(body, opts)

```ruby
begin
  # Updates the network locations precedence according to the list of ids provided.
  data, status_code, headers = api_instance.update_network_locations_precedence_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_network_locations_precedence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiNetworkLocationModifyPrecedenceRequestV1**](FwmgrApiNetworkLocationModifyPrecedenceRequestV1.md) |  |  |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy_container

> <FwmgrMsaspecResponseFields> update_policy_container(body)

Update an identified policy container, including local logging functionality.

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiPolicyContainerUpsertRequestV1.new({default_inbound: 'default_inbound_example', default_outbound: 'default_outbound_example', enforce: false, local_logging: false, platform_id: 'platform_id_example', policy_id: 'policy_id_example', rule_group_ids: ['rule_group_ids_example'], test_mode: false}) # FwmgrApiPolicyContainerUpsertRequestV1 | 

begin
  # Update an identified policy container, including local logging functionality.
  result = api_instance.update_policy_container(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_policy_container: #{e}"
end
```

#### Using the update_policy_container_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecResponseFields>, Integer, Hash)> update_policy_container_with_http_info(body)

```ruby
begin
  # Update an identified policy container, including local logging functionality.
  data, status_code, headers = api_instance.update_policy_container_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_policy_container_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiPolicyContainerUpsertRequestV1**](FwmgrApiPolicyContainerUpsertRequestV1.md) |  |  |

### Return type

[**FwmgrMsaspecResponseFields**](FwmgrMsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy_container_v1

> <FwmgrMsaspecResponseFields> update_policy_container_v1(body)

Update an identified policy container. WARNING: This endpoint is deprecated in favor of v2, using this endpoint could disable your local logging setting.

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiPolicyContainerUpsertRequestV1.new({default_inbound: 'default_inbound_example', default_outbound: 'default_outbound_example', enforce: false, local_logging: false, platform_id: 'platform_id_example', policy_id: 'policy_id_example', rule_group_ids: ['rule_group_ids_example'], test_mode: false}) # FwmgrApiPolicyContainerUpsertRequestV1 | 

begin
  # Update an identified policy container. WARNING: This endpoint is deprecated in favor of v2, using this endpoint could disable your local logging setting.
  result = api_instance.update_policy_container_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_policy_container_v1: #{e}"
end
```

#### Using the update_policy_container_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecResponseFields>, Integer, Hash)> update_policy_container_v1_with_http_info(body)

```ruby
begin
  # Update an identified policy container. WARNING: This endpoint is deprecated in favor of v2, using this endpoint could disable your local logging setting.
  data, status_code, headers = api_instance.update_policy_container_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_policy_container_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiPolicyContainerUpsertRequestV1**](FwmgrApiPolicyContainerUpsertRequestV1.md) |  |  |

### Return type

[**FwmgrMsaspecResponseFields**](FwmgrMsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rule_group

> <FwmgrApiQueryResponse> update_rule_group(body, opts)

Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiRuleGroupModifyRequestV1.new({diff_operations: [Falcon::FwmgrApiJSONDiff.new({op: 'op_example', path: 'path_example', value: 3.56})], diff_type: 'diff_type_example', id: 'id_example', rule_ids: ['rule_ids_example'], rule_versions: [37], tracking: 'tracking_example'}) # FwmgrApiRuleGroupModifyRequestV1 | 
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules
  result = api_instance.update_rule_group(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_rule_group: #{e}"
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
  puts "Error when calling FirewallManagement->update_rule_group_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rule_group_validation

> <FwmgrMsaspecQueryResponse> update_rule_group_validation(body, opts)

Validates the request of updating name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiRuleGroupModifyRequestV1.new({diff_operations: [Falcon::FwmgrApiJSONDiff.new({op: 'op_example', path: 'path_example', value: 3.56})], diff_type: 'diff_type_example', id: 'id_example', rule_ids: ['rule_ids_example'], rule_versions: [37], tracking: 'tracking_example'}) # FwmgrApiRuleGroupModifyRequestV1 | 
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Validates the request of updating name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules
  result = api_instance.update_rule_group_validation(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_rule_group_validation: #{e}"
end
```

#### Using the update_rule_group_validation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> update_rule_group_validation_with_http_info(body, opts)

```ruby
begin
  # Validates the request of updating name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules
  data, status_code, headers = api_instance.update_rule_group_validation_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->update_rule_group_validation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiRuleGroupModifyRequestV1**](FwmgrApiRuleGroupModifyRequestV1.md) |  |  |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upsert_network_locations

> <FwmgrMsaspecQueryResponse> upsert_network_locations(body, opts)

Updates the network locations provided, and return the ID.

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiNetworkLocationModifyRequestV1.new({connection_types: Falcon::FwmgrDomainConnectionType.new({wired: false, wireless: Falcon::FwmgrDomainWirelessType.new({enabled: false, require_encryption: false, ssids: ['ssids_example']})}), default_gateways: ['default_gateways_example'], description: 'description_example', dhcp_servers: ['dhcp_servers_example'], dns_resolution_targets: Falcon::FwmgrDomainDNSResolutionTargets.new({targets: [Falcon::FwmgrDomainDNSTarget.new({hostname: 'hostname_example'})]}), dns_servers: ['dns_servers_example'], enabled: false, host_addresses: ['host_addresses_example'], https_reachable_hosts: Falcon::FwmgrDomainHTTPSHosts.new({hostnames: ['hostnames_example']}), icmp_request_targets: Falcon::FwmgrDomainICMPTargets.new({targets: ['targets_example']}), id: 'id_example', name: 'name_example'}) # FwmgrApiNetworkLocationModifyRequestV1 | 
opts = {
  comment: 'comment_example' # String | Audit log comment for this action
}

begin
  # Updates the network locations provided, and return the ID.
  result = api_instance.upsert_network_locations(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->upsert_network_locations: #{e}"
end
```

#### Using the upsert_network_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrMsaspecQueryResponse>, Integer, Hash)> upsert_network_locations_with_http_info(body, opts)

```ruby
begin
  # Updates the network locations provided, and return the ID.
  data, status_code, headers = api_instance.upsert_network_locations_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrMsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->upsert_network_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiNetworkLocationModifyRequestV1**](FwmgrApiNetworkLocationModifyRequestV1.md) |  |  |
| **comment** | **String** | Audit log comment for this action | [optional] |

### Return type

[**FwmgrMsaspecQueryResponse**](FwmgrMsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_filepath_pattern

> <FwmgrApiValidateFilepathResponse> validate_filepath_pattern(body)

Validates that the test pattern matches the executable filepath glob pattern.

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

api_instance = Falcon::FirewallManagement.new
body = Falcon::FwmgrApiFilepathTestRequest.new({filepath_pattern: 'filepath_pattern_example', filepath_test_string: 'filepath_test_string_example'}) # FwmgrApiFilepathTestRequest | 

begin
  # Validates that the test pattern matches the executable filepath glob pattern.
  result = api_instance.validate_filepath_pattern(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->validate_filepath_pattern: #{e}"
end
```

#### Using the validate_filepath_pattern_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwmgrApiValidateFilepathResponse>, Integer, Hash)> validate_filepath_pattern_with_http_info(body)

```ruby
begin
  # Validates that the test pattern matches the executable filepath glob pattern.
  data, status_code, headers = api_instance.validate_filepath_pattern_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwmgrApiValidateFilepathResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallManagement->validate_filepath_pattern_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FwmgrApiFilepathTestRequest**](FwmgrApiFilepathTestRequest.md) |  |  |

### Return type

[**FwmgrApiValidateFilepathResponse**](FwmgrApiValidateFilepathResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


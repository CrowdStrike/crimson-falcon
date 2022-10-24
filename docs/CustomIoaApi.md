# Falcon::CustomIoaApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rule**](CustomIoaApi.md#create_rule) | **POST** /ioarules/entities/rules/v1 | Create a rule within a rule group. Returns the rule. |
| [**create_rule_group_mixin0**](CustomIoaApi.md#create_rule_group_mixin0) | **POST** /ioarules/entities/rule-groups/v1 | Create a rule group for a platform with a name and an optional description. Returns the rule group. |
| [**delete_rule_groups_mixin0**](CustomIoaApi.md#delete_rule_groups_mixin0) | **DELETE** /ioarules/entities/rule-groups/v1 | Delete rule groups by ID. |
| [**delete_rules**](CustomIoaApi.md#delete_rules) | **DELETE** /ioarules/entities/rules/v1 | Delete rules from a rule group by ID. |
| [**get_patterns**](CustomIoaApi.md#get_patterns) | **GET** /ioarules/entities/pattern-severities/v1 | Get pattern severities by ID. |
| [**get_platforms_mixin0**](CustomIoaApi.md#get_platforms_mixin0) | **GET** /ioarules/entities/platforms/v1 | Get platforms by ID. |
| [**get_rule_groups_mixin0**](CustomIoaApi.md#get_rule_groups_mixin0) | **GET** /ioarules/entities/rule-groups/v1 | Get rule groups by ID. |
| [**get_rule_types**](CustomIoaApi.md#get_rule_types) | **GET** /ioarules/entities/rule-types/v1 | Get rule types by ID. |
| [**get_rules_get**](CustomIoaApi.md#get_rules_get) | **POST** /ioarules/entities/rules/GET/v1 | Get rules by ID and optionally version in the following format: &#x60;ID[:version]&#x60;. |
| [**get_rules_mixin0**](CustomIoaApi.md#get_rules_mixin0) | **GET** /ioarules/entities/rules/v1 | Get rules by ID and optionally version in the following format: &#x60;ID[:version]&#x60;. The max number of IDs is constrained by URL size. |
| [**query_patterns**](CustomIoaApi.md#query_patterns) | **GET** /ioarules/queries/pattern-severities/v1 | Get all pattern severity IDs. |
| [**query_platforms_mixin0**](CustomIoaApi.md#query_platforms_mixin0) | **GET** /ioarules/queries/platforms/v1 | Get all platform IDs. |
| [**query_rule_groups_full**](CustomIoaApi.md#query_rule_groups_full) | **GET** /ioarules/queries/rule-groups-full/v1 | Find all rule groups matching the query with optional filter. |
| [**query_rule_groups_mixin0**](CustomIoaApi.md#query_rule_groups_mixin0) | **GET** /ioarules/queries/rule-groups/v1 | Finds all rule group IDs matching the query with optional filter. |
| [**query_rule_types**](CustomIoaApi.md#query_rule_types) | **GET** /ioarules/queries/rule-types/v1 | Get all rule type IDs. |
| [**query_rules_mixin0**](CustomIoaApi.md#query_rules_mixin0) | **GET** /ioarules/queries/rules/v1 | Finds all rule IDs matching the query with optional filter. |
| [**update_rule_group_mixin0**](CustomIoaApi.md#update_rule_group_mixin0) | **PATCH** /ioarules/entities/rule-groups/v1 | Update a rule group. The following properties can be modified: name, description, enabled. |
| [**update_rules**](CustomIoaApi.md#update_rules) | **PATCH** /ioarules/entities/rules/v1 | Update rules within a rule group. Return the updated rules. |
| [**validate**](CustomIoaApi.md#validate) | **POST** /ioarules/entities/rules/validate/v1 | Validates field values and checks for matches if a test string is provided. |


## create_rule

> <ApiRulesResponse> create_rule(body)

Create a rule within a rule group. Returns the rule.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
body = Falcon::ApiRuleCreateV1.new({comment: 'comment_example', description: 'description_example', disposition_id: 37, field_values: [Falcon::DomainFieldValue.new({name: 'name_example', type: 'type_example', value: 'value_example', values: [Falcon::DomainValueItem.new({label: 'label_example', value: 'value_example'})]})], name: 'name_example', pattern_severity: 'pattern_severity_example', rulegroup_id: 'rulegroup_id_example', ruletype_id: 'ruletype_id_example'}) # ApiRuleCreateV1 | 

begin
  # Create a rule within a rule group. Returns the rule.
  result = api_instance.create_rule(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->create_rule: #{e}"
end
```

#### Using the create_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRulesResponse>, Integer, Hash)> create_rule_with_http_info(body)

```ruby
begin
  # Create a rule within a rule group. Returns the rule.
  data, status_code, headers = api_instance.create_rule_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->create_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRuleCreateV1**](ApiRuleCreateV1.md) |  |  |

### Return type

[**ApiRulesResponse**](ApiRulesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rule_group_mixin0

> <ApiRuleGroupsResponse> create_rule_group_mixin0(body)

Create a rule group for a platform with a name and an optional description. Returns the rule group.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
body = Falcon::ApiRuleGroupCreateRequestV1.new({comment: 'comment_example', description: 'description_example', name: 'name_example', platform: 'platform_example'}) # ApiRuleGroupCreateRequestV1 | 

begin
  # Create a rule group for a platform with a name and an optional description. Returns the rule group.
  result = api_instance.create_rule_group_mixin0(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->create_rule_group_mixin0: #{e}"
end
```

#### Using the create_rule_group_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRuleGroupsResponse>, Integer, Hash)> create_rule_group_mixin0_with_http_info(body)

```ruby
begin
  # Create a rule group for a platform with a name and an optional description. Returns the rule group.
  data, status_code, headers = api_instance.create_rule_group_mixin0_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRuleGroupsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->create_rule_group_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRuleGroupCreateRequestV1**](ApiRuleGroupCreateRequestV1.md) |  |  |

### Return type

[**ApiRuleGroupsResponse**](ApiRuleGroupsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_rule_groups_mixin0

> <MsaReplyMetaOnly> delete_rule_groups_mixin0(ids, opts)

Delete rule groups by ID.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
ids = ['inner_example'] # Array<String> | The IDs of the entities
opts = {
  comment: 'comment_example' # String | Explains why the entity is being deleted
}

begin
  # Delete rule groups by ID.
  result = api_instance.delete_rule_groups_mixin0(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->delete_rule_groups_mixin0: #{e}"
end
```

#### Using the delete_rule_groups_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> delete_rule_groups_mixin0_with_http_info(ids, opts)

```ruby
begin
  # Delete rule groups by ID.
  data, status_code, headers = api_instance.delete_rule_groups_mixin0_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->delete_rule_groups_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the entities |  |
| **comment** | **String** | Explains why the entity is being deleted | [optional] |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_rules

> <MsaReplyMetaOnly> delete_rules(rule_group_id, ids, opts)

Delete rules from a rule group by ID.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
rule_group_id = 'rule_group_id_example' # String | The parent rule group
ids = ['inner_example'] # Array<String> | The IDs of the entities
opts = {
  comment: 'comment_example' # String | Explains why the entity is being deleted
}

begin
  # Delete rules from a rule group by ID.
  result = api_instance.delete_rules(rule_group_id, ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->delete_rules: #{e}"
end
```

#### Using the delete_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> delete_rules_with_http_info(rule_group_id, ids, opts)

```ruby
begin
  # Delete rules from a rule group by ID.
  data, status_code, headers = api_instance.delete_rules_with_http_info(rule_group_id, ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->delete_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_group_id** | **String** | The parent rule group |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the entities |  |
| **comment** | **String** | Explains why the entity is being deleted | [optional] |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_patterns

> <ApiPatternsResponse> get_patterns(ids)

Get pattern severities by ID.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
ids = ['inner_example'] # Array<String> | The IDs of the entities

begin
  # Get pattern severities by ID.
  result = api_instance.get_patterns(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_patterns: #{e}"
end
```

#### Using the get_patterns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiPatternsResponse>, Integer, Hash)> get_patterns_with_http_info(ids)

```ruby
begin
  # Get pattern severities by ID.
  data, status_code, headers = api_instance.get_patterns_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiPatternsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_patterns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the entities |  |

### Return type

[**ApiPatternsResponse**](ApiPatternsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_platforms_mixin0

> <ApiPlatformsResponse> get_platforms_mixin0(ids)

Get platforms by ID.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
ids = ['inner_example'] # Array<String> | The IDs of the entities

begin
  # Get platforms by ID.
  result = api_instance.get_platforms_mixin0(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_platforms_mixin0: #{e}"
end
```

#### Using the get_platforms_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiPlatformsResponse>, Integer, Hash)> get_platforms_mixin0_with_http_info(ids)

```ruby
begin
  # Get platforms by ID.
  data, status_code, headers = api_instance.get_platforms_mixin0_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiPlatformsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_platforms_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the entities |  |

### Return type

[**ApiPlatformsResponse**](ApiPlatformsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rule_groups_mixin0

> <ApiRuleGroupsResponse> get_rule_groups_mixin0(ids)

Get rule groups by ID.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
ids = ['inner_example'] # Array<String> | The IDs of the entities

begin
  # Get rule groups by ID.
  result = api_instance.get_rule_groups_mixin0(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_rule_groups_mixin0: #{e}"
end
```

#### Using the get_rule_groups_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRuleGroupsResponse>, Integer, Hash)> get_rule_groups_mixin0_with_http_info(ids)

```ruby
begin
  # Get rule groups by ID.
  data, status_code, headers = api_instance.get_rule_groups_mixin0_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRuleGroupsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_rule_groups_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the entities |  |

### Return type

[**ApiRuleGroupsResponse**](ApiRuleGroupsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rule_types

> <ApiRuleTypesResponse> get_rule_types(ids)

Get rule types by ID.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
ids = ['inner_example'] # Array<String> | The IDs of the entities

begin
  # Get rule types by ID.
  result = api_instance.get_rule_types(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_rule_types: #{e}"
end
```

#### Using the get_rule_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRuleTypesResponse>, Integer, Hash)> get_rule_types_with_http_info(ids)

```ruby
begin
  # Get rule types by ID.
  data, status_code, headers = api_instance.get_rule_types_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRuleTypesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_rule_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the entities |  |

### Return type

[**ApiRuleTypesResponse**](ApiRuleTypesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rules_get

> <ApiRulesResponse> get_rules_get(body)

Get rules by ID and optionally version in the following format: `ID[:version]`.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
body = Falcon::ApiRulesGetRequestV1.new({ids: ['ids_example']}) # ApiRulesGetRequestV1 | The \"ids\" field contains a list of the rules to retrieve.

begin
  # Get rules by ID and optionally version in the following format: `ID[:version]`.
  result = api_instance.get_rules_get(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_rules_get: #{e}"
end
```

#### Using the get_rules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRulesResponse>, Integer, Hash)> get_rules_get_with_http_info(body)

```ruby
begin
  # Get rules by ID and optionally version in the following format: `ID[:version]`.
  data, status_code, headers = api_instance.get_rules_get_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_rules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRulesGetRequestV1**](ApiRulesGetRequestV1.md) | The \&quot;ids\&quot; field contains a list of the rules to retrieve. |  |

### Return type

[**ApiRulesResponse**](ApiRulesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_rules_mixin0

> <ApiRulesResponse> get_rules_mixin0(ids)

Get rules by ID and optionally version in the following format: `ID[:version]`. The max number of IDs is constrained by URL size.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
ids = ['inner_example'] # Array<String> | The IDs of the entities

begin
  # Get rules by ID and optionally version in the following format: `ID[:version]`. The max number of IDs is constrained by URL size.
  result = api_instance.get_rules_mixin0(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_rules_mixin0: #{e}"
end
```

#### Using the get_rules_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRulesResponse>, Integer, Hash)> get_rules_mixin0_with_http_info(ids)

```ruby
begin
  # Get rules by ID and optionally version in the following format: `ID[:version]`. The max number of IDs is constrained by URL size.
  data, status_code, headers = api_instance.get_rules_mixin0_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->get_rules_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the entities |  |

### Return type

[**ApiRulesResponse**](ApiRulesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_patterns

> <MsaQueryResponse> query_patterns(opts)

Get all pattern severity IDs.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return IDs
  limit: 56 # Integer | Number of IDs to return
}

begin
  # Get all pattern severity IDs.
  result = api_instance.query_patterns(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_patterns: #{e}"
end
```

#### Using the query_patterns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_patterns_with_http_info(opts)

```ruby
begin
  # Get all pattern severity IDs.
  data, status_code, headers = api_instance.query_patterns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_patterns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return IDs | [optional] |
| **limit** | **Integer** | Number of IDs to return | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_platforms_mixin0

> <MsaQueryResponse> query_platforms_mixin0(opts)

Get all platform IDs.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return IDs
  limit: 56 # Integer | Number of IDs to return
}

begin
  # Get all platform IDs.
  result = api_instance.query_platforms_mixin0(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_platforms_mixin0: #{e}"
end
```

#### Using the query_platforms_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_platforms_mixin0_with_http_info(opts)

```ruby
begin
  # Get all platform IDs.
  data, status_code, headers = api_instance.query_platforms_mixin0_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_platforms_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return IDs | [optional] |
| **limit** | **Integer** | Number of IDs to return | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rule_groups_full

> <MsaQueryResponse> query_rule_groups_full(opts)

Find all rule groups matching the query with optional filter.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
opts = {
  sort: 'created_by', # String | Possible order by fields: {created_by, created_on, modified_by, modified_on, enabled, name, description}
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: [enabled platform name description rules.action_label rules.name rules.description rules.pattern_severity rules.ruletype_name rules.enabled]. Filter range criteria: created_on, modified_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields
  offset: 'offset_example', # String | Starting index of overall result set from which to return IDs
  limit: 56 # Integer | Number of IDs to return
}

begin
  # Find all rule groups matching the query with optional filter.
  result = api_instance.query_rule_groups_full(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_rule_groups_full: #{e}"
end
```

#### Using the query_rule_groups_full_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_rule_groups_full_with_http_info(opts)

```ruby
begin
  # Find all rule groups matching the query with optional filter.
  data, status_code, headers = api_instance.query_rule_groups_full_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_rule_groups_full_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields: {created_by, created_on, modified_by, modified_on, enabled, name, description} | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: [enabled platform name description rules.action_label rules.name rules.description rules.pattern_severity rules.ruletype_name rules.enabled]. Filter range criteria: created_on, modified_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return IDs | [optional] |
| **limit** | **Integer** | Number of IDs to return | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rule_groups_mixin0

> <MsaQueryResponse> query_rule_groups_mixin0(opts)

Finds all rule group IDs matching the query with optional filter.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
opts = {
  sort: 'created_by', # String | Possible order by fields: {created_by, created_on, modified_by, modified_on, enabled, name, description}
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: [enabled platform name description rules.action_label rules.name rules.description rules.pattern_severity rules.ruletype_name rules.enabled]. Filter range criteria: created_on, modified_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields
  offset: 'offset_example', # String | Starting index of overall result set from which to return IDs
  limit: 56 # Integer | Number of IDs to return
}

begin
  # Finds all rule group IDs matching the query with optional filter.
  result = api_instance.query_rule_groups_mixin0(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_rule_groups_mixin0: #{e}"
end
```

#### Using the query_rule_groups_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_rule_groups_mixin0_with_http_info(opts)

```ruby
begin
  # Finds all rule group IDs matching the query with optional filter.
  data, status_code, headers = api_instance.query_rule_groups_mixin0_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_rule_groups_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields: {created_by, created_on, modified_by, modified_on, enabled, name, description} | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: [enabled platform name description rules.action_label rules.name rules.description rules.pattern_severity rules.ruletype_name rules.enabled]. Filter range criteria: created_on, modified_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return IDs | [optional] |
| **limit** | **Integer** | Number of IDs to return | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rule_types

> <MsaQueryResponse> query_rule_types(opts)

Get all rule type IDs.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return IDs
  limit: 56 # Integer | Number of IDs to return
}

begin
  # Get all rule type IDs.
  result = api_instance.query_rule_types(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_rule_types: #{e}"
end
```

#### Using the query_rule_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_rule_types_with_http_info(opts)

```ruby
begin
  # Get all rule type IDs.
  data, status_code, headers = api_instance.query_rule_types_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_rule_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return IDs | [optional] |
| **limit** | **Integer** | Number of IDs to return | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rules_mixin0

> <MsaQueryResponse> query_rules_mixin0(opts)

Finds all rule IDs matching the query with optional filter.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
opts = {
  sort: 'rules.created_by', # String | Possible order by fields: {rules.ruletype_name, rules.enabled, rules.created_by, rules.current_version.name, rules.current_version.modified_by, rules.created_on, rules.current_version.description, rules.current_version.pattern_severity, rules.current_version.action_label, rules.current_version.modified_on}
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: [enabled platform name description rules.action_label rules.name rules.description rules.pattern_severity rules.ruletype_name rules.enabled]. Filter range criteria: created_on, modified_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields
  offset: 'offset_example', # String | Starting index of overall result set from which to return IDs
  limit: 56 # Integer | Number of IDs to return
}

begin
  # Finds all rule IDs matching the query with optional filter.
  result = api_instance.query_rules_mixin0(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_rules_mixin0: #{e}"
end
```

#### Using the query_rules_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_rules_mixin0_with_http_info(opts)

```ruby
begin
  # Finds all rule IDs matching the query with optional filter.
  data, status_code, headers = api_instance.query_rules_mixin0_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->query_rules_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields: {rules.ruletype_name, rules.enabled, rules.created_by, rules.current_version.name, rules.current_version.modified_by, rules.created_on, rules.current_version.description, rules.current_version.pattern_severity, rules.current_version.action_label, rules.current_version.modified_on} | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: [enabled platform name description rules.action_label rules.name rules.description rules.pattern_severity rules.ruletype_name rules.enabled]. Filter range criteria: created_on, modified_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return IDs | [optional] |
| **limit** | **Integer** | Number of IDs to return | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rule_group_mixin0

> <ApiRuleGroupsResponse> update_rule_group_mixin0(body)

Update a rule group. The following properties can be modified: name, description, enabled.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
body = Falcon::ApiRuleGroupModifyRequestV1.new({comment: 'comment_example', description: 'description_example', enabled: false, id: 'id_example', name: 'name_example', rulegroup_version: 3.56}) # ApiRuleGroupModifyRequestV1 | 

begin
  # Update a rule group. The following properties can be modified: name, description, enabled.
  result = api_instance.update_rule_group_mixin0(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->update_rule_group_mixin0: #{e}"
end
```

#### Using the update_rule_group_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRuleGroupsResponse>, Integer, Hash)> update_rule_group_mixin0_with_http_info(body)

```ruby
begin
  # Update a rule group. The following properties can be modified: name, description, enabled.
  data, status_code, headers = api_instance.update_rule_group_mixin0_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRuleGroupsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->update_rule_group_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRuleGroupModifyRequestV1**](ApiRuleGroupModifyRequestV1.md) |  |  |

### Return type

[**ApiRuleGroupsResponse**](ApiRuleGroupsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rules

> <ApiRulesResponse> update_rules(body)

Update rules within a rule group. Return the updated rules.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
body = Falcon::ApiRuleUpdatesRequestV1.new({comment: 'comment_example', rule_updates: [Falcon::ApiRuleUpdateV1.new({description: 'description_example', disposition_id: 37, enabled: false, field_values: [Falcon::DomainFieldValue.new({name: 'name_example', type: 'type_example', value: 'value_example', values: [Falcon::DomainValueItem.new({label: 'label_example', value: 'value_example'})]})], instance_id: 'instance_id_example', name: 'name_example', pattern_severity: 'pattern_severity_example', rulegroup_version: 3.56})], rulegroup_id: 'rulegroup_id_example', rulegroup_version: 3.56}) # ApiRuleUpdatesRequestV1 | 

begin
  # Update rules within a rule group. Return the updated rules.
  result = api_instance.update_rules(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->update_rules: #{e}"
end
```

#### Using the update_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRulesResponse>, Integer, Hash)> update_rules_with_http_info(body)

```ruby
begin
  # Update rules within a rule group. Return the updated rules.
  data, status_code, headers = api_instance.update_rules_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->update_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRuleUpdatesRequestV1**](ApiRuleUpdatesRequestV1.md) |  |  |

### Return type

[**ApiRulesResponse**](ApiRulesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate

> <ApiValidationResponseV1> validate(body)

Validates field values and checks for matches if a test string is provided.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::CustomIoaApi.new
body = Falcon::ApiValidationRequestV1.new({fields: [Falcon::ApiValidationRequestFieldV1.new({name: 'name_example', test_data: 'test_data_example', type: 'type_example', values: [Falcon::DomainValueItem.new({label: 'label_example', value: 'value_example'})]})]}) # ApiValidationRequestV1 | 

begin
  # Validates field values and checks for matches if a test string is provided.
  result = api_instance.validate(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->validate: #{e}"
end
```

#### Using the validate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiValidationResponseV1>, Integer, Hash)> validate_with_http_info(body)

```ruby
begin
  # Validates field values and checks for matches if a test string is provided.
  data, status_code, headers = api_instance.validate_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiValidationResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CustomIoaApi->validate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiValidationRequestV1**](ApiValidationRequestV1.md) |  |  |

### Return type

[**ApiValidationResponseV1**](ApiValidationResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


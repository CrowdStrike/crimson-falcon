# Falcon::CorrelationRules

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**combined_rules_get_v1**](CorrelationRules.md#combined_rules_get_v1) | **GET** /correlation-rules/combined/rules/v1 | Find all rules matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on |
| [**entities_rule_versions_delete_v1**](CorrelationRules.md#entities_rule_versions_delete_v1) | **DELETE** /correlation-rules/entities/rule-versions/v1 | Delete versions by IDs |
| [**entities_rules_delete_v1**](CorrelationRules.md#entities_rules_delete_v1) | **DELETE** /correlation-rules/entities/rules/v1 | Delete rules by IDs |
| [**entities_rules_get_v1**](CorrelationRules.md#entities_rules_get_v1) | **GET** /correlation-rules/entities/rules/v1 | Retrieve rules by IDs |
| [**entities_rules_patch_v1**](CorrelationRules.md#entities_rules_patch_v1) | **PATCH** /correlation-rules/entities/rules/v1 | Update rules |
| [**entities_rules_post_v1**](CorrelationRules.md#entities_rules_post_v1) | **POST** /correlation-rules/entities/rules/v1 | Create rule |
| [**queries_rules_get_v1**](CorrelationRules.md#queries_rules_get_v1) | **GET** /correlation-rules/queries/rules/v1 | Find all rule IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on |


## combined_rules_get_v1

> <ApiGetEntitiesRulesResponseV1> combined_rules_get_v1(opts)

Find all rules matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on

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

api_instance = Falcon::CorrelationRules.new
opts = {
  filter: 'filter_example', # String | FQL query specifying the filter parameters
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields
  sort: 'created_on', # String | Rule property to sort on
  offset: 56, # Integer | Starting index of overall result set from which to return IDs
  limit: 56 # Integer | Number of IDs to return
}

begin
  # Find all rules matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on
  result = api_instance.combined_rules_get_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->combined_rules_get_v1: #{e}"
end
```

#### Using the combined_rules_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetEntitiesRulesResponseV1>, Integer, Hash)> combined_rules_get_v1_with_http_info(opts)

```ruby
begin
  # Find all rules matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on
  data, status_code, headers = api_instance.combined_rules_get_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRulesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->combined_rules_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL query specifying the filter parameters | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields | [optional] |
| **sort** | **String** | Rule property to sort on | [optional][default to &#39;created_on&#39;] |
| **offset** | **Integer** | Starting index of overall result set from which to return IDs | [optional][default to 0] |
| **limit** | **Integer** | Number of IDs to return | [optional][default to 100] |

### Return type

[**ApiGetEntitiesRulesResponseV1**](ApiGetEntitiesRulesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_rule_versions_delete_v1

> <MsaspecQueryResponse> entities_rule_versions_delete_v1(ids)

Delete versions by IDs

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

api_instance = Falcon::CorrelationRules.new
ids = ['inner_example'] # Array<String> | The IDs

begin
  # Delete versions by IDs
  result = api_instance.entities_rule_versions_delete_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rule_versions_delete_v1: #{e}"
end
```

#### Using the entities_rule_versions_delete_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> entities_rule_versions_delete_v1_with_http_info(ids)

```ruby
begin
  # Delete versions by IDs
  data, status_code, headers = api_instance.entities_rule_versions_delete_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rule_versions_delete_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_rules_delete_v1

> <MsaspecQueryResponse> entities_rules_delete_v1(ids)

Delete rules by IDs

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

api_instance = Falcon::CorrelationRules.new
ids = ['inner_example'] # Array<String> | The IDs

begin
  # Delete rules by IDs
  result = api_instance.entities_rules_delete_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_delete_v1: #{e}"
end
```

#### Using the entities_rules_delete_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> entities_rules_delete_v1_with_http_info(ids)

```ruby
begin
  # Delete rules by IDs
  data, status_code, headers = api_instance.entities_rules_delete_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_delete_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_rules_get_v1

> <ApiGetEntitiesRulesResponseV1> entities_rules_get_v1(ids)

Retrieve rules by IDs

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

api_instance = Falcon::CorrelationRules.new
ids = ['inner_example'] # Array<String> | The IDs

begin
  # Retrieve rules by IDs
  result = api_instance.entities_rules_get_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_get_v1: #{e}"
end
```

#### Using the entities_rules_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetEntitiesRulesResponseV1>, Integer, Hash)> entities_rules_get_v1_with_http_info(ids)

```ruby
begin
  # Retrieve rules by IDs
  data, status_code, headers = api_instance.entities_rules_get_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRulesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs |  |

### Return type

[**ApiGetEntitiesRulesResponseV1**](ApiGetEntitiesRulesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_rules_patch_v1

> <ApiGetEntitiesRulesResponseV1> entities_rules_patch_v1(body)

Update rules

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

api_instance = Falcon::CorrelationRules.new
body = [Falcon::ApiRulePatchRequestV1.new({id: 'id_example'})] # Array<ApiRulePatchRequestV1> | 

begin
  # Update rules
  result = api_instance.entities_rules_patch_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_patch_v1: #{e}"
end
```

#### Using the entities_rules_patch_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetEntitiesRulesResponseV1>, Integer, Hash)> entities_rules_patch_v1_with_http_info(body)

```ruby
begin
  # Update rules
  data, status_code, headers = api_instance.entities_rules_patch_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRulesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_patch_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;ApiRulePatchRequestV1&gt;**](ApiRulePatchRequestV1.md) |  |  |

### Return type

[**ApiGetEntitiesRulesResponseV1**](ApiGetEntitiesRulesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## entities_rules_post_v1

> <MsaspecQueryResponse> entities_rules_post_v1(body)

Create rule

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

api_instance = Falcon::CorrelationRules.new
body = Falcon::ApiRuleCreateRequestV1.new({customer_id: 'customer_id_example', name: 'name_example', operation: Falcon::ApiCreateRuleOperationV1.new({schedule: Falcon::ApiRuleScheduleV1.new({definition: 'definition_example'})}), search: Falcon::ApiRuleSearchV1.new({filter: 'filter_example', lookback: 'lookback_example', outcome: 'outcome_example'}), severity: 37, status: 'status_example'}) # ApiRuleCreateRequestV1 | 

begin
  # Create rule
  result = api_instance.entities_rules_post_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_post_v1: #{e}"
end
```

#### Using the entities_rules_post_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> entities_rules_post_v1_with_http_info(body)

```ruby
begin
  # Create rule
  data, status_code, headers = api_instance.entities_rules_post_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_post_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRuleCreateRequestV1**](ApiRuleCreateRequestV1.md) |  |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## queries_rules_get_v1

> <MsaspecQueryResponse> queries_rules_get_v1(opts)

Find all rule IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on

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

api_instance = Falcon::CorrelationRules.new
opts = {
  filter: 'filter_example', # String | FQL query specifying the filter parameters
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields
  sort: 'created_on', # String | Rule property to sort on
  offset: 56, # Integer | Starting index of overall result set from which to return IDs
  limit: 56 # Integer | Number of IDs to return
}

begin
  # Find all rule IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on
  result = api_instance.queries_rules_get_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->queries_rules_get_v1: #{e}"
end
```

#### Using the queries_rules_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> queries_rules_get_v1_with_http_info(opts)

```ruby
begin
  # Find all rule IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on
  data, status_code, headers = api_instance.queries_rules_get_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->queries_rules_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL query specifying the filter parameters | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields | [optional] |
| **sort** | **String** | Rule property to sort on | [optional][default to &#39;created_on&#39;] |
| **offset** | **Integer** | Starting index of overall result set from which to return IDs | [optional][default to 0] |
| **limit** | **Integer** | Number of IDs to return | [optional][default to 100] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


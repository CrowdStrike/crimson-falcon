# Falcon::CorrelationRules

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregates_rule_versions_post_v1**](CorrelationRules.md#aggregates_rule_versions_post_v1) | **POST** /correlation-rules/aggregates/rule-versions/v1 | Get rules aggregates as specified via json in the request body. |
| [**combined_rules_get_v1**](CorrelationRules.md#combined_rules_get_v1) | **GET** /correlation-rules/combined/rules/v1 | Find all rules matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on |
| [**combined_rules_get_v2**](CorrelationRules.md#combined_rules_get_v2) | **GET** /correlation-rules/combined/rules/v2 | Find all rules matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on |
| [**entities_latest_rules_get_v1**](CorrelationRules.md#entities_latest_rules_get_v1) | **GET** /correlation-rules/entities/latest-rules/v1 | Retrieve latest rule versions by rule IDs |
| [**entities_rule_versions_delete_v1**](CorrelationRules.md#entities_rule_versions_delete_v1) | **DELETE** /correlation-rules/entities/rule-versions/v1 | Delete versions by IDs |
| [**entities_rule_versions_export_post_v1**](CorrelationRules.md#entities_rule_versions_export_post_v1) | **POST** /correlation-rules/entities/rule-versions/export/v1 | Export rule versions |
| [**entities_rule_versions_import_post_v1**](CorrelationRules.md#entities_rule_versions_import_post_v1) | **POST** /correlation-rules/entities/rule-versions/import/v1 | Import rule versions |
| [**entities_rule_versions_publish_patch_v1**](CorrelationRules.md#entities_rule_versions_publish_patch_v1) | **PATCH** /correlation-rules/entities/rule-versions/publish/v1 | Publish existing rule version |
| [**entities_rules_delete_v1**](CorrelationRules.md#entities_rules_delete_v1) | **DELETE** /correlation-rules/entities/rules/v1 | Delete rules by IDs |
| [**entities_rules_get_v1**](CorrelationRules.md#entities_rules_get_v1) | **GET** /correlation-rules/entities/rules/v1 | Retrieve rules by IDs |
| [**entities_rules_get_v2**](CorrelationRules.md#entities_rules_get_v2) | **GET** /correlation-rules/entities/rules/v2 | Retrieve rule versions by IDs |
| [**entities_rules_patch_v1**](CorrelationRules.md#entities_rules_patch_v1) | **PATCH** /correlation-rules/entities/rules/v1 | Update rules |
| [**entities_rules_post_v1**](CorrelationRules.md#entities_rules_post_v1) | **POST** /correlation-rules/entities/rules/v1 | Create rule |
| [**queries_rules_get_v1**](CorrelationRules.md#queries_rules_get_v1) | **GET** /correlation-rules/queries/rules/v1 | Find all rule IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on |
| [**queries_rules_get_v2**](CorrelationRules.md#queries_rules_get_v2) | **GET** /correlation-rules/queries/rules/v2 | Find all rule version IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on,state,version,rule_id Supported range filters: created_on,last_updated_on |


## aggregates_rule_versions_post_v1

> <ApiAggregatesResponseV1> aggregates_rule_versions_post_v1(ids, body, opts)

Get rules aggregates as specified via json in the request body.

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
body = [3.56] # Array<Object> | 
opts = {
  filter: 'filter_example' # String | FQL query specifying the filter parameters
}

begin
  # Get rules aggregates as specified via json in the request body.
  result = api_instance.aggregates_rule_versions_post_v1(ids, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->aggregates_rule_versions_post_v1: #{e}"
end
```

#### Using the aggregates_rule_versions_post_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiAggregatesResponseV1>, Integer, Hash)> aggregates_rule_versions_post_v1_with_http_info(ids, body, opts)

```ruby
begin
  # Get rules aggregates as specified via json in the request body.
  data, status_code, headers = api_instance.aggregates_rule_versions_post_v1_with_http_info(ids, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiAggregatesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->aggregates_rule_versions_post_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs |  |
| **body** | [**Array&lt;Object&gt;**](Object.md) |  |  |
| **filter** | **String** | FQL query specifying the filter parameters | [optional] |

### Return type

[**ApiAggregatesResponseV1**](ApiAggregatesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


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


## combined_rules_get_v2

> <ApiGetEntitiesRulesResponseV1> combined_rules_get_v2(opts)

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
  result = api_instance.combined_rules_get_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->combined_rules_get_v2: #{e}"
end
```

#### Using the combined_rules_get_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetEntitiesRulesResponseV1>, Integer, Hash)> combined_rules_get_v2_with_http_info(opts)

```ruby
begin
  # Find all rules matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on Supported range filters: created_on,last_updated_on
  data, status_code, headers = api_instance.combined_rules_get_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRulesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->combined_rules_get_v2_with_http_info: #{e}"
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


## entities_latest_rules_get_v1

> <ApiGetEntitiesRulesResponseV1> entities_latest_rules_get_v1(rule_ids)

Retrieve latest rule versions by rule IDs

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
rule_ids = ['inner_example'] # Array<String> | The rule IDs

begin
  # Retrieve latest rule versions by rule IDs
  result = api_instance.entities_latest_rules_get_v1(rule_ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_latest_rules_get_v1: #{e}"
end
```

#### Using the entities_latest_rules_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetEntitiesRulesResponseV1>, Integer, Hash)> entities_latest_rules_get_v1_with_http_info(rule_ids)

```ruby
begin
  # Retrieve latest rule versions by rule IDs
  data, status_code, headers = api_instance.entities_latest_rules_get_v1_with_http_info(rule_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRulesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_latest_rules_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_ids** | [**Array&lt;String&gt;**](String.md) | The rule IDs |  |

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


## entities_rule_versions_export_post_v1

> <ApiJobLinkResponseV1> entities_rule_versions_export_post_v1(body)

Export rule versions

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
body = Falcon::ApiRuleVersionReportRequest.new({report_format: 'report_format_example', search: Falcon::ApiRuleVersionSortedSearch.new({filter: 'filter_example', sort: 'sort_example'})}) # ApiRuleVersionReportRequest | 

begin
  # Export rule versions
  result = api_instance.entities_rule_versions_export_post_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rule_versions_export_post_v1: #{e}"
end
```

#### Using the entities_rule_versions_export_post_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiJobLinkResponseV1>, Integer, Hash)> entities_rule_versions_export_post_v1_with_http_info(body)

```ruby
begin
  # Export rule versions
  data, status_code, headers = api_instance.entities_rule_versions_export_post_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiJobLinkResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rule_versions_export_post_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRuleVersionReportRequest**](ApiRuleVersionReportRequest.md) |  |  |

### Return type

[**ApiJobLinkResponseV1**](ApiJobLinkResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## entities_rule_versions_import_post_v1

> <ApiGetEntitiesRuleVersionsResponseV1> entities_rule_versions_import_post_v1

Import rule versions

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

begin
  # Import rule versions
  result = api_instance.entities_rule_versions_import_post_v1
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rule_versions_import_post_v1: #{e}"
end
```

#### Using the entities_rule_versions_import_post_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetEntitiesRuleVersionsResponseV1>, Integer, Hash)> entities_rule_versions_import_post_v1_with_http_info

```ruby
begin
  # Import rule versions
  data, status_code, headers = api_instance.entities_rule_versions_import_post_v1_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRuleVersionsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rule_versions_import_post_v1_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiGetEntitiesRuleVersionsResponseV1**](ApiGetEntitiesRuleVersionsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_rule_versions_publish_patch_v1

> <ApiGetEntitiesRuleVersionsResponseV1> entities_rule_versions_publish_patch_v1(body)

Publish existing rule version

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
body = Falcon::ApiRuleVersionPublishRequestV1.new({id: 'id_example'}) # ApiRuleVersionPublishRequestV1 | 

begin
  # Publish existing rule version
  result = api_instance.entities_rule_versions_publish_patch_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rule_versions_publish_patch_v1: #{e}"
end
```

#### Using the entities_rule_versions_publish_patch_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetEntitiesRuleVersionsResponseV1>, Integer, Hash)> entities_rule_versions_publish_patch_v1_with_http_info(body)

```ruby
begin
  # Publish existing rule version
  data, status_code, headers = api_instance.entities_rule_versions_publish_patch_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRuleVersionsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rule_versions_publish_patch_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRuleVersionPublishRequestV1**](ApiRuleVersionPublishRequestV1.md) |  |  |

### Return type

[**ApiGetEntitiesRuleVersionsResponseV1**](ApiGetEntitiesRuleVersionsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
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


## entities_rules_get_v2

> <ApiGetEntitiesRulesResponseV1> entities_rules_get_v2(ids)

Retrieve rule versions by IDs

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
  # Retrieve rule versions by IDs
  result = api_instance.entities_rules_get_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_get_v2: #{e}"
end
```

#### Using the entities_rules_get_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetEntitiesRulesResponseV1>, Integer, Hash)> entities_rules_get_v2_with_http_info(ids)

```ruby
begin
  # Retrieve rule versions by IDs
  data, status_code, headers = api_instance.entities_rules_get_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRulesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_get_v2_with_http_info: #{e}"
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

> <ApiGetEntitiesRulesResponseV1> entities_rules_post_v1(body)

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
body = Falcon::ApiRuleCreateRequestV1.new({customer_id: 'customer_id_example', name: 'name_example', operation: Falcon::ApiCreateRuleOperationV1.new({schedule: Falcon::ApiRuleScheduleV1.new({definition: 'definition_example'})}), search: Falcon::ApiRuleSearchV1.new({filter: 'filter_example', lookback: 'lookback_example', outcome: 'outcome_example'}), severity: 37, status: 'status_example', template_id: 'template_id_example'}) # ApiRuleCreateRequestV1 | 

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

> <Array(<ApiGetEntitiesRulesResponseV1>, Integer, Hash)> entities_rules_post_v1_with_http_info(body)

```ruby
begin
  # Create rule
  data, status_code, headers = api_instance.entities_rules_post_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetEntitiesRulesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->entities_rules_post_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiRuleCreateRequestV1**](ApiRuleCreateRequestV1.md) |  |  |

### Return type

[**ApiGetEntitiesRulesResponseV1**](ApiGetEntitiesRulesResponseV1.md)

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


## queries_rules_get_v2

> <MsaspecQueryResponse> queries_rules_get_v2(opts)

Find all rule version IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on,state,version,rule_id Supported range filters: created_on,last_updated_on

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
  # Find all rule version IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on,state,version,rule_id Supported range filters: created_on,last_updated_on
  result = api_instance.queries_rules_get_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->queries_rules_get_v2: #{e}"
end
```

#### Using the queries_rules_get_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> queries_rules_get_v2_with_http_info(opts)

```ruby
begin
  # Find all rule version IDs matching the query and filter. Supported filters: customer_id,user_id,user_uuid,status,name,created_on,last_updated_on,state,version,rule_id Supported range filters: created_on,last_updated_on
  data, status_code, headers = api_instance.queries_rules_get_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CorrelationRules->queries_rules_get_v2_with_http_info: #{e}"
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


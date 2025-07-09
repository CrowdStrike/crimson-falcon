# Falcon::IdentityProtection

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_preempt_proxy_delete_policy_rules**](IdentityProtection.md#api_preempt_proxy_delete_policy_rules) | **DELETE** /identity-protection/entities/policy-rules/v1 | Delete policy rules |
| [**api_preempt_proxy_get_policy_rules**](IdentityProtection.md#api_preempt_proxy_get_policy_rules) | **GET** /identity-protection/entities/policy-rules/v1 | Get policy rules |
| [**api_preempt_proxy_get_policy_rules_query**](IdentityProtection.md#api_preempt_proxy_get_policy_rules_query) | **GET** /identity-protection/queries/policy-rules/v1 | Query policy rule IDs |
| [**api_preempt_proxy_post_graphql**](IdentityProtection.md#api_preempt_proxy_post_graphql) | **POST** /identity-protection/combined/graphql/v1 | Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents. |
| [**api_preempt_proxy_post_policy_rules**](IdentityProtection.md#api_preempt_proxy_post_policy_rules) | **POST** /identity-protection/entities/policy-rules/v1 | Create policy rule |


## api_preempt_proxy_delete_policy_rules

> api_preempt_proxy_delete_policy_rules(authorization, ids)

Delete policy rules

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

api_instance = Falcon::IdentityProtection.new
authorization = 'authorization_example' # String | Authorization Header
ids = ['inner_example'] # Array<String> | Rule IDs

begin
  # Delete policy rules
  api_instance.api_preempt_proxy_delete_policy_rules(authorization, ids)
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_delete_policy_rules: #{e}"
end
```

#### Using the api_preempt_proxy_delete_policy_rules_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_preempt_proxy_delete_policy_rules_with_http_info(authorization, ids)

```ruby
begin
  # Delete policy rules
  data, status_code, headers = api_instance.api_preempt_proxy_delete_policy_rules_with_http_info(authorization, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_delete_policy_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Header |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | Rule IDs |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/json; charset=utf-8


## api_preempt_proxy_get_policy_rules

> api_preempt_proxy_get_policy_rules(authorization, ids)

Get policy rules

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

api_instance = Falcon::IdentityProtection.new
authorization = 'authorization_example' # String | Authorization Header
ids = ['inner_example'] # Array<String> | Rule IDs

begin
  # Get policy rules
  api_instance.api_preempt_proxy_get_policy_rules(authorization, ids)
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_get_policy_rules: #{e}"
end
```

#### Using the api_preempt_proxy_get_policy_rules_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_preempt_proxy_get_policy_rules_with_http_info(authorization, ids)

```ruby
begin
  # Get policy rules
  data, status_code, headers = api_instance.api_preempt_proxy_get_policy_rules_with_http_info(authorization, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_get_policy_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Header |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | Rule IDs |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/json; charset=utf-8


## api_preempt_proxy_get_policy_rules_query

> api_preempt_proxy_get_policy_rules_query(authorization, opts)

Query policy rule IDs

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

api_instance = Falcon::IdentityProtection.new
authorization = 'authorization_example' # String | Authorization Header
opts = {
  enabled: true, # Boolean | Whether the rule is enabled
  simulation_mode: true, # Boolean | Whether the rule is in simulation mode
  name: 'name_example' # String | Rule name
}

begin
  # Query policy rule IDs
  api_instance.api_preempt_proxy_get_policy_rules_query(authorization, opts)
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_get_policy_rules_query: #{e}"
end
```

#### Using the api_preempt_proxy_get_policy_rules_query_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_preempt_proxy_get_policy_rules_query_with_http_info(authorization, opts)

```ruby
begin
  # Query policy rule IDs
  data, status_code, headers = api_instance.api_preempt_proxy_get_policy_rules_query_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_get_policy_rules_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Header |  |
| **enabled** | **Boolean** | Whether the rule is enabled | [optional] |
| **simulation_mode** | **Boolean** | Whether the rule is in simulation mode | [optional] |
| **name** | **String** | Rule name | [optional] |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/json; charset=utf-8


## api_preempt_proxy_post_graphql

> api_preempt_proxy_post_graphql(authorization)

Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents.

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

api_instance = Falcon::IdentityProtection.new
authorization = 'authorization_example' # String | Authorization Header

begin
  # Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents.
  api_instance.api_preempt_proxy_post_graphql(authorization)
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_post_graphql: #{e}"
end
```

#### Using the api_preempt_proxy_post_graphql_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_preempt_proxy_post_graphql_with_http_info(authorization)

```ruby
begin
  # Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents.
  data, status_code, headers = api_instance.api_preempt_proxy_post_graphql_with_http_info(authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_post_graphql_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Header |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/json; charset=utf-8


## api_preempt_proxy_post_policy_rules

> api_preempt_proxy_post_policy_rules(authorization, body)

Create policy rule

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

api_instance = Falcon::IdentityProtection.new
authorization = 'authorization_example' # String | Authorization Header
body = Falcon::TypesPolicyRulesCreateBody.new({action: 'action_example', enabled: false, name: 'name_example', simulation_mode: false, trigger: 'trigger_example'}) # TypesPolicyRulesCreateBody | 

begin
  # Create policy rule
  api_instance.api_preempt_proxy_post_policy_rules(authorization, body)
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_post_policy_rules: #{e}"
end
```

#### Using the api_preempt_proxy_post_policy_rules_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_preempt_proxy_post_policy_rules_with_http_info(authorization, body)

```ruby
begin
  # Create policy rule
  data, status_code, headers = api_instance.api_preempt_proxy_post_policy_rules_with_http_info(authorization, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtection->api_preempt_proxy_post_policy_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Header |  |
| **body** | [**TypesPolicyRulesCreateBody**](TypesPolicyRulesCreateBody.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/json; charset=utf-8


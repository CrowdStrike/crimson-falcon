# Falcon::IdentityProtectionApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_preempt_proxy_post_graphql**](IdentityProtectionApi.md#api_preempt_proxy_post_graphql) | **POST** /identity-protection/combined/graphql/v1 | Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents. |


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

api_instance = Falcon::IdentityProtectionApi.new
authorization = 'authorization_example' # String | Authorization Header

begin
  # Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents.
  api_instance.api_preempt_proxy_post_graphql(authorization)
rescue Falcon::ApiError => e
  puts "Error when calling IdentityProtectionApi->api_preempt_proxy_post_graphql: #{e}"
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
  puts "Error when calling IdentityProtectionApi->api_preempt_proxy_post_graphql_with_http_info: #{e}"
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


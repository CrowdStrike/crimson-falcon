# Falcon::Default

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_graphql_query_mixin0**](Default.md#post_graphql_query_mixin0) | **POST** /cloud-data-protection/entities/schedules/graphql/v2 |  |


## post_graphql_query_mixin0

> Hash&lt;String, Object&gt; post_graphql_query_mixin0



- request graphql query

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

api_instance = Falcon::Default.new

begin
  
  result = api_instance.post_graphql_query_mixin0
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Default->post_graphql_query_mixin0: #{e}"
end
```

#### Using the post_graphql_query_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> post_graphql_query_mixin0_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.post_graphql_query_mixin0_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue Falcon::ApiError => e
  puts "Error when calling Default->post_graphql_query_mixin0_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


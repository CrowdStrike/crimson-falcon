# Falcon::Default

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_rules_metadata_by_id**](Default.md#get_rules_metadata_by_id) | **GET** /container-compliance/combined/rule-details-by-rule-ids/v1 | Retrieve detailed compliance rule information including descriptions, remediation steps, and audit procedures by specifying rule identifiers. |
| [**post_graphql_query_mixin0**](Default.md#post_graphql_query_mixin0) | **POST** /cloud-data-protection/entities/schedules/graphql/v2 |  |


## get_rules_metadata_by_id

> <DomainRuleMetadataResponse> get_rules_metadata_by_id(ids)

Retrieve detailed compliance rule information including descriptions, remediation steps, and audit procedures by specifying rule identifiers.

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
ids = ['inner_example'] # Array<String> | comma separated list of rule ids

begin
  # Retrieve detailed compliance rule information including descriptions, remediation steps, and audit procedures by specifying rule identifiers.
  result = api_instance.get_rules_metadata_by_id(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Default->get_rules_metadata_by_id: #{e}"
end
```

#### Using the get_rules_metadata_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRuleMetadataResponse>, Integer, Hash)> get_rules_metadata_by_id_with_http_info(ids)

```ruby
begin
  # Retrieve detailed compliance rule information including descriptions, remediation steps, and audit procedures by specifying rule identifiers.
  data, status_code, headers = api_instance.get_rules_metadata_by_id_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRuleMetadataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Default->get_rules_metadata_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | comma separated list of rule ids |  |

### Return type

[**DomainRuleMetadataResponse**](DomainRuleMetadataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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


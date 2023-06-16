# Falcon::FieldSchemaApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fdrschema_entities_field_get**](FieldSchemaApi.md#fdrschema_entities_field_get) | **GET** /fdr/entities/schema-fields/v1 | Fetch field schema by ID |
| [**fdrschema_queries_field_get**](FieldSchemaApi.md#fdrschema_queries_field_get) | **GET** /fdr/queries/schema-fields/v1 | Get list of field IDs given a particular query. |


## fdrschema_entities_field_get

> <SchemaSensorFieldResponseV1> fdrschema_entities_field_get(opts)

Fetch field schema by ID

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FieldSchemaApi.new
opts = {
  ids: ['inner_example'] # Array<String> | Specify feed IDs to fetch
}

begin
  # Fetch field schema by ID
  result = api_instance.fdrschema_entities_field_get(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FieldSchemaApi->fdrschema_entities_field_get: #{e}"
end
```

#### Using the fdrschema_entities_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemaSensorFieldResponseV1>, Integer, Hash)> fdrschema_entities_field_get_with_http_info(opts)

```ruby
begin
  # Fetch field schema by ID
  data, status_code, headers = api_instance.fdrschema_entities_field_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemaSensorFieldResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling FieldSchemaApi->fdrschema_entities_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Specify feed IDs to fetch | [optional] |

### Return type

[**SchemaSensorFieldResponseV1**](SchemaSensorFieldResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fdrschema_queries_field_get

> <MsaspecQueryResponse> fdrschema_queries_field_get(opts)

Get list of field IDs given a particular query.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FieldSchemaApi.new
opts = {
  limit: 56, # Integer | Limit of the data
  offset: 56, # Integer | Offset into the data
  filter: 'filter_example', # String | FQL filter of the data
  sort: 'sort_example' # String | Sort the data
}

begin
  # Get list of field IDs given a particular query.
  result = api_instance.fdrschema_queries_field_get(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FieldSchemaApi->fdrschema_queries_field_get: #{e}"
end
```

#### Using the fdrschema_queries_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> fdrschema_queries_field_get_with_http_info(opts)

```ruby
begin
  # Get list of field IDs given a particular query.
  data, status_code, headers = api_instance.fdrschema_queries_field_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FieldSchemaApi->fdrschema_queries_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit of the data | [optional] |
| **offset** | **Integer** | Offset into the data | [optional] |
| **filter** | **String** | FQL filter of the data | [optional] |
| **sort** | **String** | Sort the data | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


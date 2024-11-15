# Falcon::EventSchemaApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fdrschema_combined_event_get**](EventSchemaApi.md#fdrschema_combined_event_get) | **GET** /fdr/combined/schema-members/v1 | Fetch combined schema |
| [**fdrschema_entities_event_get**](EventSchemaApi.md#fdrschema_entities_event_get) | **GET** /fdr/entities/schema-events/v1 | Fetch event schema by ID |
| [**fdrschema_queries_event_get**](EventSchemaApi.md#fdrschema_queries_event_get) | **GET** /fdr/queries/schema-events/v1 | Get list of event IDs given a particular query. |


## fdrschema_combined_event_get

> <SchemaSensorEventResponseV1> fdrschema_combined_event_get

Fetch combined schema

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

api_instance = Falcon::EventSchemaApi.new

begin
  # Fetch combined schema
  result = api_instance.fdrschema_combined_event_get
  p result
rescue Falcon::ApiError => e
  puts "Error when calling EventSchemaApi->fdrschema_combined_event_get: #{e}"
end
```

#### Using the fdrschema_combined_event_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemaSensorEventResponseV1>, Integer, Hash)> fdrschema_combined_event_get_with_http_info

```ruby
begin
  # Fetch combined schema
  data, status_code, headers = api_instance.fdrschema_combined_event_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemaSensorEventResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling EventSchemaApi->fdrschema_combined_event_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SchemaSensorEventResponseV1**](SchemaSensorEventResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fdrschema_entities_event_get

> <SchemaSensorEventResponseV1> fdrschema_entities_event_get(opts)

Fetch event schema by ID

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

api_instance = Falcon::EventSchemaApi.new
opts = {
  ids: ['inner_example'] # Array<String> | Specify feed IDs to fetch
}

begin
  # Fetch event schema by ID
  result = api_instance.fdrschema_entities_event_get(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling EventSchemaApi->fdrschema_entities_event_get: #{e}"
end
```

#### Using the fdrschema_entities_event_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemaSensorEventResponseV1>, Integer, Hash)> fdrschema_entities_event_get_with_http_info(opts)

```ruby
begin
  # Fetch event schema by ID
  data, status_code, headers = api_instance.fdrschema_entities_event_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemaSensorEventResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling EventSchemaApi->fdrschema_entities_event_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Specify feed IDs to fetch | [optional] |

### Return type

[**SchemaSensorEventResponseV1**](SchemaSensorEventResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fdrschema_queries_event_get

> <MsaspecQueryResponse> fdrschema_queries_event_get(opts)

Get list of event IDs given a particular query.

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

api_instance = Falcon::EventSchemaApi.new
opts = {
  limit: 56, # Integer | Limit of the data
  offset: 56, # Integer | Offset into the data
  filter: 'filter_example', # String | FQL filter of the data
  sort: 'sort_example' # String | Sort the data
}

begin
  # Get list of event IDs given a particular query.
  result = api_instance.fdrschema_queries_event_get(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling EventSchemaApi->fdrschema_queries_event_get: #{e}"
end
```

#### Using the fdrschema_queries_event_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> fdrschema_queries_event_get_with_http_info(opts)

```ruby
begin
  # Get list of event IDs given a particular query.
  data, status_code, headers = api_instance.fdrschema_queries_event_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling EventSchemaApi->fdrschema_queries_event_get_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


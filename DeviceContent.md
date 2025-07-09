# Falcon::DeviceContent

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**entities_states_v1**](DeviceContent.md#entities_states_v1) | **GET** /device-content/entities/states/v1 | Retrieve the host content state for a number of ids between 1 and 100. |
| [**queries_states_v1**](DeviceContent.md#queries_states_v1) | **GET** /device-content/queries/states/v1 | Query for the content state of the host. |


## entities_states_v1

> <DevicecontentapiEntitiesResponseV1> entities_states_v1(ids)

Retrieve the host content state for a number of ids between 1 and 100.

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

api_instance = Falcon::DeviceContent.new
ids = ['inner_example'] # Array<String> | The ids of the devices to fetch the content state of.

begin
  # Retrieve the host content state for a number of ids between 1 and 100.
  result = api_instance.entities_states_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceContent->entities_states_v1: #{e}"
end
```

#### Using the entities_states_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DevicecontentapiEntitiesResponseV1>, Integer, Hash)> entities_states_v1_with_http_info(ids)

```ruby
begin
  # Retrieve the host content state for a number of ids between 1 and 100.
  data, status_code, headers = api_instance.entities_states_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DevicecontentapiEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceContent->entities_states_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the devices to fetch the content state of. |  |

### Return type

[**DevicecontentapiEntitiesResponseV1**](DevicecontentapiEntitiesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## queries_states_v1

> <DevicecontentapiQueryResponseV1> queries_states_v1(opts)

Query for the content state of the host.

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

api_instance = Falcon::DeviceContent.new
opts = {
  limit: 56, # Integer | The max number of resource ids to return.
  sort: 'sort_example', # String | What field to sort the results on.
  offset: 56, # Integer | The offset token returned from the previous query. If none was returned, there are no more pages to the result set.
  filter: 'filter_example' # String | The FQL search filter
}

begin
  # Query for the content state of the host.
  result = api_instance.queries_states_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceContent->queries_states_v1: #{e}"
end
```

#### Using the queries_states_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DevicecontentapiQueryResponseV1>, Integer, Hash)> queries_states_v1_with_http_info(opts)

```ruby
begin
  # Query for the content state of the host.
  data, status_code, headers = api_instance.queries_states_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DevicecontentapiQueryResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceContent->queries_states_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The max number of resource ids to return. | [optional][default to 100] |
| **sort** | **String** | What field to sort the results on. | [optional][default to &#39;last_seen.desc&#39;] |
| **offset** | **Integer** | The offset token returned from the previous query. If none was returned, there are no more pages to the result set. | [optional] |
| **filter** | **String** | The FQL search filter | [optional] |

### Return type

[**DevicecontentapiQueryResponseV1**](DevicecontentapiQueryResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


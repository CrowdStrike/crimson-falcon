# Falcon::EventStreams

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_available_streams_o_auth2**](EventStreams.md#list_available_streams_o_auth2) | **GET** /sensors/entities/datafeed/v2 | Discover all event streams in your environment |
| [**refresh_active_stream_session**](EventStreams.md#refresh_active_stream_session) | **POST** /sensors/entities/datafeed-actions/v1/{partition} | Refresh an active event stream. Use the URL shown in a GET /sensors/entities/datafeed/v2 response. |


## list_available_streams_o_auth2

> <MainDiscoveryResponseV2> list_available_streams_o_auth2(app_id, opts)

Discover all event streams in your environment

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

api_instance = Falcon::EventStreams.new
app_id = 'app_id_example' # String | Label that identifies your connection. Max: 32 alphanumeric characters (a-z, A-Z, 0-9).
opts = {
  format: 'format_example' # String | Format for streaming events. Valid values: json, flatjson
}

begin
  # Discover all event streams in your environment
  result = api_instance.list_available_streams_o_auth2(app_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling EventStreams->list_available_streams_o_auth2: #{e}"
end
```

#### Using the list_available_streams_o_auth2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainDiscoveryResponseV2>, Integer, Hash)> list_available_streams_o_auth2_with_http_info(app_id, opts)

```ruby
begin
  # Discover all event streams in your environment
  data, status_code, headers = api_instance.list_available_streams_o_auth2_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainDiscoveryResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling EventStreams->list_available_streams_o_auth2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Label that identifies your connection. Max: 32 alphanumeric characters (a-z, A-Z, 0-9). |  |
| **format** | **String** | Format for streaming events. Valid values: json, flatjson | [optional] |

### Return type

[**MainDiscoveryResponseV2**](MainDiscoveryResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_active_stream_session

> <MsaReplyMetaOnly> refresh_active_stream_session(action_name, app_id, partition)

Refresh an active event stream. Use the URL shown in a GET /sensors/entities/datafeed/v2 response.

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

api_instance = Falcon::EventStreams.new
action_name = 'action_name_example' # String | Action name. Allowed value is refresh_active_stream_session.
app_id = 'app_id_example' # String | Label that identifies your connection. Max: 32 alphanumeric characters (a-z, A-Z, 0-9).
partition = 56 # Integer | Partition to request data for.

begin
  # Refresh an active event stream. Use the URL shown in a GET /sensors/entities/datafeed/v2 response.
  result = api_instance.refresh_active_stream_session(action_name, app_id, partition)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling EventStreams->refresh_active_stream_session: #{e}"
end
```

#### Using the refresh_active_stream_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> refresh_active_stream_session_with_http_info(action_name, app_id, partition)

```ruby
begin
  # Refresh an active event stream. Use the URL shown in a GET /sensors/entities/datafeed/v2 response.
  data, status_code, headers = api_instance.refresh_active_stream_session_with_http_info(action_name, app_id, partition)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling EventStreams->refresh_active_stream_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | Action name. Allowed value is refresh_active_stream_session. |  |
| **app_id** | **String** | Label that identifies your connection. Max: 32 alphanumeric characters (a-z, A-Z, 0-9). |  |
| **partition** | **Integer** | Partition to request data for. |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# Falcon::IocsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**devices_count**](IocsApi.md#devices_count) | **GET** /indicators/aggregates/devices-count/v1 | Number of hosts in your customer account that have observed a given custom IOC |
| [**devices_ran_on**](IocsApi.md#devices_ran_on) | **GET** /indicators/queries/devices/v1 | Find hosts that have observed a given custom IOC. For details about those hosts, use GET /devices/entities/devices/v1 |
| [**entities_processes**](IocsApi.md#entities_processes) | **GET** /processes/entities/processes/v1 | For the provided ProcessID retrieve the process details |
| [**processes_ran_on**](IocsApi.md#processes_ran_on) | **GET** /indicators/queries/processes/v1 | Search for processes associated with a custom IOC |


## devices_count

> <IocapiMsaReplyIOCDevicesCount> devices_count(type, value)

Number of hosts in your customer account that have observed a given custom IOC

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocsApi.new
type = 'type_example' # String |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address. 
value = 'value_example' # String | The string representation of the indicator

begin
  # Number of hosts in your customer account that have observed a given custom IOC
  result = api_instance.devices_count(type, value)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocsApi->devices_count: #{e}"
end
```

#### Using the devices_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IocapiMsaReplyIOCDevicesCount>, Integer, Hash)> devices_count_with_http_info(type, value)

```ruby
begin
  # Number of hosts in your customer account that have observed a given custom IOC
  data, status_code, headers = api_instance.devices_count_with_http_info(type, value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IocapiMsaReplyIOCDevicesCount>
rescue Falcon::ApiError => e
  puts "Error when calling IocsApi->devices_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address.  |  |
| **value** | **String** | The string representation of the indicator |  |

### Return type

[**IocapiMsaReplyIOCDevicesCount**](IocapiMsaReplyIOCDevicesCount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## devices_ran_on

> <IocapiMsaReplyDevicesRanOn> devices_ran_on(type, value, opts)

Find hosts that have observed a given custom IOC. For details about those hosts, use GET /devices/entities/devices/v1

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocsApi.new
type = 'type_example' # String |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address. 
value = 'value_example' # String | The string representation of the indicator
opts = {
  limit: 'limit_example', # String | The first process to return, where 0 is the latest offset. Use with the offset parameter to manage pagination of results.
  offset: 'offset_example' # String | The first process to return, where 0 is the latest offset. Use with the limit parameter to manage pagination of results.
}

begin
  # Find hosts that have observed a given custom IOC. For details about those hosts, use GET /devices/entities/devices/v1
  result = api_instance.devices_ran_on(type, value, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocsApi->devices_ran_on: #{e}"
end
```

#### Using the devices_ran_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IocapiMsaReplyDevicesRanOn>, Integer, Hash)> devices_ran_on_with_http_info(type, value, opts)

```ruby
begin
  # Find hosts that have observed a given custom IOC. For details about those hosts, use GET /devices/entities/devices/v1
  data, status_code, headers = api_instance.devices_ran_on_with_http_info(type, value, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IocapiMsaReplyDevicesRanOn>
rescue Falcon::ApiError => e
  puts "Error when calling IocsApi->devices_ran_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address.  |  |
| **value** | **String** | The string representation of the indicator |  |
| **limit** | **String** | The first process to return, where 0 is the latest offset. Use with the offset parameter to manage pagination of results. | [optional] |
| **offset** | **String** | The first process to return, where 0 is the latest offset. Use with the limit parameter to manage pagination of results. | [optional] |

### Return type

[**IocapiMsaReplyDevicesRanOn**](IocapiMsaReplyDevicesRanOn.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_processes

> <ProcessesapiMsaProcessDetailResponse> entities_processes(ids)

For the provided ProcessID retrieve the process details

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocsApi.new
ids = ['inner_example'] # Array<String> | ProcessID for the running process you want to lookup

begin
  # For the provided ProcessID retrieve the process details
  result = api_instance.entities_processes(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocsApi->entities_processes: #{e}"
end
```

#### Using the entities_processes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcessesapiMsaProcessDetailResponse>, Integer, Hash)> entities_processes_with_http_info(ids)

```ruby
begin
  # For the provided ProcessID retrieve the process details
  data, status_code, headers = api_instance.entities_processes_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcessesapiMsaProcessDetailResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IocsApi->entities_processes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | ProcessID for the running process you want to lookup |  |

### Return type

[**ProcessesapiMsaProcessDetailResponse**](ProcessesapiMsaProcessDetailResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## processes_ran_on

> <IocapiMsaReplyProcessesRanOn> processes_ran_on(type, value, device_id, opts)

Search for processes associated with a custom IOC

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocsApi.new
type = 'type_example' # String |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address. 
value = 'value_example' # String | The string representation of the indicator
device_id = 'device_id_example' # String | Specify a host's ID to return only processes from that host. Get a host's ID from GET /devices/queries/devices/v1, the Falcon console, or the Streaming API.
opts = {
  limit: 'limit_example', # String | The first process to return, where 0 is the latest offset. Use with the offset parameter to manage pagination of results.
  offset: 'offset_example' # String | The first process to return, where 0 is the latest offset. Use with the limit parameter to manage pagination of results.
}

begin
  # Search for processes associated with a custom IOC
  result = api_instance.processes_ran_on(type, value, device_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocsApi->processes_ran_on: #{e}"
end
```

#### Using the processes_ran_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IocapiMsaReplyProcessesRanOn>, Integer, Hash)> processes_ran_on_with_http_info(type, value, device_id, opts)

```ruby
begin
  # Search for processes associated with a custom IOC
  data, status_code, headers = api_instance.processes_ran_on_with_http_info(type, value, device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IocapiMsaReplyProcessesRanOn>
rescue Falcon::ApiError => e
  puts "Error when calling IocsApi->processes_ran_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address.  |  |
| **value** | **String** | The string representation of the indicator |  |
| **device_id** | **String** | Specify a host&#39;s ID to return only processes from that host. Get a host&#39;s ID from GET /devices/queries/devices/v1, the Falcon console, or the Streaming API. |  |
| **limit** | **String** | The first process to return, where 0 is the latest offset. Use with the offset parameter to manage pagination of results. | [optional] |
| **offset** | **String** | The first process to return, where 0 is the latest offset. Use with the limit parameter to manage pagination of results. | [optional] |

### Return type

[**IocapiMsaReplyProcessesRanOn**](IocapiMsaReplyProcessesRanOn.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


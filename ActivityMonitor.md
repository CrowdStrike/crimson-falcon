# Falcon::ActivityMonitor

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_activity_monitor_v3**](ActivityMonitor.md#get_activity_monitor_v3) | **GET** /saas-security/entities/monitor/v3 | GET Activity Monitor |


## get_activity_monitor_v3

> <GetActivityMonitor> get_activity_monitor_v3(opts)

GET Activity Monitor

Get a list of all events in monitor

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

api_instance = Falcon::ActivityMonitor.new
opts = {
  integration_id: 'integration_id_example', # String | Integration ID
  actor: 'actor_example', # String | Actor
  category: 'category_example', # String | Comma separated list of categories
  projection: 'projection_example', # String | Comma separated list of projections
  from_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | From Date
  to_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | To Date
  limit: 56, # Integer | Max number of logs to fetch
  skip: 56 # Integer | Number of logs to skip
}

begin
  # GET Activity Monitor
  result = api_instance.get_activity_monitor_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ActivityMonitor->get_activity_monitor_v3: #{e}"
end
```

#### Using the get_activity_monitor_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActivityMonitor>, Integer, Hash)> get_activity_monitor_v3_with_http_info(opts)

```ruby
begin
  # GET Activity Monitor
  data, status_code, headers = api_instance.get_activity_monitor_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActivityMonitor>
rescue Falcon::ApiError => e
  puts "Error when calling ActivityMonitor->get_activity_monitor_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | Integration ID | [optional] |
| **actor** | **String** | Actor | [optional] |
| **category** | **String** | Comma separated list of categories | [optional] |
| **projection** | **String** | Comma separated list of projections | [optional] |
| **from_date** | **Time** | From Date | [optional] |
| **to_date** | **Time** | To Date | [optional] |
| **limit** | **Integer** | Max number of logs to fetch | [optional] |
| **skip** | **Integer** | Number of logs to skip | [optional] |

### Return type

[**GetActivityMonitor**](GetActivityMonitor.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


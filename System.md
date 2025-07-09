# Falcon::System

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_system_logs_v3**](System.md#get_system_logs_v3) | **GET** /saas-security/entities/system-logs/v3 | GET System Logs |
| [**get_system_users_v3**](System.md#get_system_users_v3) | **GET** /saas-security/entities/system-users/v3 | GET System Users |


## get_system_logs_v3

> <GetSystemLogs> get_system_logs_v3(opts)

GET System Logs

Get a list of all system logs

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

api_instance = Falcon::System.new
opts = {
  from_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | From Date (in YYYY-MM-DD format)
  limit: 56, # Integer | The maximum number of objects to return
  offset: 56, # Integer | The starting index of the results
  to_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | To Date (in YYYY-MM-DD format)
  total_count: true # Boolean | Fetch Total Count?
}

begin
  # GET System Logs
  result = api_instance.get_system_logs_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling System->get_system_logs_v3: #{e}"
end
```

#### Using the get_system_logs_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSystemLogs>, Integer, Hash)> get_system_logs_v3_with_http_info(opts)

```ruby
begin
  # GET System Logs
  data, status_code, headers = api_instance.get_system_logs_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSystemLogs>
rescue Falcon::ApiError => e
  puts "Error when calling System->get_system_logs_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Time** | From Date (in YYYY-MM-DD format) | [optional] |
| **limit** | **Integer** | The maximum number of objects to return | [optional] |
| **offset** | **Integer** | The starting index of the results | [optional] |
| **to_date** | **Time** | To Date (in YYYY-MM-DD format) | [optional] |
| **total_count** | **Boolean** | Fetch Total Count? | [optional] |

### Return type

[**GetSystemLogs**](GetSystemLogs.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_system_users_v3

> <GetSystemUsers> get_system_users_v3

GET System Users

Get a list of system users

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

api_instance = Falcon::System.new

begin
  # GET System Users
  result = api_instance.get_system_users_v3
  p result
rescue Falcon::ApiError => e
  puts "Error when calling System->get_system_users_v3: #{e}"
end
```

#### Using the get_system_users_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSystemUsers>, Integer, Hash)> get_system_users_v3_with_http_info

```ruby
begin
  # GET System Users
  data, status_code, headers = api_instance.get_system_users_v3_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSystemUsers>
rescue Falcon::ApiError => e
  puts "Error when calling System->get_system_users_v3_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetSystemUsers**](GetSystemUsers.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


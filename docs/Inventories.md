# Falcon::Inventories

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_device_inventory_v3**](Inventories.md#get_device_inventory_v3) | **GET** /saas-security/entities/devices/v3 | GET Device Inventory |
| [**get_user_inventory_v3**](Inventories.md#get_user_inventory_v3) | **GET** /saas-security/entities/users/v3 | GET User Inventory |


## get_device_inventory_v3

> <GetDeviceInventory> get_device_inventory_v3(opts)

GET Device Inventory

Get a list of all devices

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

api_instance = Falcon::Inventories.new
opts = {
  integration_id: 'integration_id_example', # String | Comma separated integration ID's
  limit: 56, # Integer | The maximum number of objects to return
  offset: 56, # Integer | The starting index of the results
  email: 'email_example', # String | Email
  privileged_only: true, # Boolean | Privileged Only
  unassociated_devices: true # Boolean | Unassociated Devices
}

begin
  # GET Device Inventory
  result = api_instance.get_device_inventory_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Inventories->get_device_inventory_v3: #{e}"
end
```

#### Using the get_device_inventory_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeviceInventory>, Integer, Hash)> get_device_inventory_v3_with_http_info(opts)

```ruby
begin
  # GET Device Inventory
  data, status_code, headers = api_instance.get_device_inventory_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeviceInventory>
rescue Falcon::ApiError => e
  puts "Error when calling Inventories->get_device_inventory_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | Comma separated integration ID&#39;s | [optional] |
| **limit** | **Integer** | The maximum number of objects to return | [optional] |
| **offset** | **Integer** | The starting index of the results | [optional] |
| **email** | **String** | Email | [optional] |
| **privileged_only** | **Boolean** | Privileged Only | [optional] |
| **unassociated_devices** | **Boolean** | Unassociated Devices | [optional] |

### Return type

[**GetDeviceInventory**](GetDeviceInventory.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_inventory_v3

> <GetUserInventory> get_user_inventory_v3(opts)

GET User Inventory

Get a list of all users 

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

api_instance = Falcon::Inventories.new
opts = {
  integration_id: 'integration_id_example', # String | Comma separated integration ID's
  limit: 56, # Integer | The maximum number of objects to return
  offset: 56, # Integer | The starting index of the results
  email: 'email_example', # String | Email
  privileged_only: true # Boolean | Privileged Only
}

begin
  # GET User Inventory
  result = api_instance.get_user_inventory_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Inventories->get_user_inventory_v3: #{e}"
end
```

#### Using the get_user_inventory_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserInventory>, Integer, Hash)> get_user_inventory_v3_with_http_info(opts)

```ruby
begin
  # GET User Inventory
  data, status_code, headers = api_instance.get_user_inventory_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserInventory>
rescue Falcon::ApiError => e
  puts "Error when calling Inventories->get_user_inventory_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | Comma separated integration ID&#39;s | [optional] |
| **limit** | **Integer** | The maximum number of objects to return | [optional] |
| **offset** | **Integer** | The starting index of the results | [optional] |
| **email** | **String** | Email | [optional] |
| **privileged_only** | **Boolean** | Privileged Only | [optional] |

### Return type

[**GetUserInventory**](GetUserInventory.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


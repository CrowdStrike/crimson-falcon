# Falcon::DeviceControlWithBluetooth

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_default_device_control_settings**](DeviceControlWithBluetooth.md#get_default_device_control_settings) | **GET** /policy/entities/device-control-default-settings/v1 | Get default device control settings (USB and Bluetooth) |
| [**get_device_control_policies_v2**](DeviceControlWithBluetooth.md#get_device_control_policies_v2) | **GET** /policy/entities/device-control/v2 | Get device control policies for the given filter criteria. (USB and Bluetooth) |
| [**patch_device_control_policies_classes_v1**](DeviceControlWithBluetooth.md#patch_device_control_policies_classes_v1) | **PATCH** /policy/entities/device-control-classes/v1 | Update device control policy&#39;s classes (USB and Bluetooth) |
| [**patch_device_control_policies_v2**](DeviceControlWithBluetooth.md#patch_device_control_policies_v2) | **PATCH** /policy/entities/device-control/v2 | Update device control policy base (USB and Bluetooth) |
| [**post_device_control_policies_v2**](DeviceControlWithBluetooth.md#post_device_control_policies_v2) | **POST** /policy/entities/device-control/v2 | Create/clone a device control policy (USB and Bluetooth) |
| [**update_default_device_control_settings**](DeviceControlWithBluetooth.md#update_default_device_control_settings) | **PATCH** /policy/entities/device-control-default-settings/v1 | Update the configuration for Default Device Control Settings |


## get_default_device_control_settings

> <DeviceControlRespDefaultSettingV1> get_default_device_control_settings

Get default device control settings (USB and Bluetooth)

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

api_instance = Falcon::DeviceControlWithBluetooth.new

begin
  # Get default device control settings (USB and Bluetooth)
  result = api_instance.get_default_device_control_settings
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->get_default_device_control_settings: #{e}"
end
```

#### Using the get_default_device_control_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespDefaultSettingV1>, Integer, Hash)> get_default_device_control_settings_with_http_info

```ruby
begin
  # Get default device control settings (USB and Bluetooth)
  data, status_code, headers = api_instance.get_default_device_control_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespDefaultSettingV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->get_default_device_control_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DeviceControlRespDefaultSettingV1**](DeviceControlRespDefaultSettingV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_device_control_policies_v2

> <DevicecontrolapiRespPoliciesV2> get_device_control_policies_v2(ids)

Get device control policies for the given filter criteria. (USB and Bluetooth)

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

api_instance = Falcon::DeviceControlWithBluetooth.new
ids = ['inner_example'] # Array<String> | The IDs of the policies to get

begin
  # Get device control policies for the given filter criteria. (USB and Bluetooth)
  result = api_instance.get_device_control_policies_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->get_device_control_policies_v2: #{e}"
end
```

#### Using the get_device_control_policies_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DevicecontrolapiRespPoliciesV2>, Integer, Hash)> get_device_control_policies_v2_with_http_info(ids)

```ruby
begin
  # Get device control policies for the given filter criteria. (USB and Bluetooth)
  data, status_code, headers = api_instance.get_device_control_policies_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DevicecontrolapiRespPoliciesV2>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->get_device_control_policies_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the policies to get |  |

### Return type

[**DevicecontrolapiRespPoliciesV2**](DevicecontrolapiRespPoliciesV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_device_control_policies_classes_v1

> <DevicecontrolapiRespPoliciesV2> patch_device_control_policies_classes_v1(body)

Update device control policy's classes (USB and Bluetooth)

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

api_instance = Falcon::DeviceControlWithBluetooth.new
body = Falcon::DevicecontrolapiReqUpdatePoliciesClassesV1.new({policies: [Falcon::DevicecontrolapiReqUpdatePolicyClassesV1.new({id: 'id_example'})]}) # DevicecontrolapiReqUpdatePoliciesClassesV1 | 

begin
  # Update device control policy's classes (USB and Bluetooth)
  result = api_instance.patch_device_control_policies_classes_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->patch_device_control_policies_classes_v1: #{e}"
end
```

#### Using the patch_device_control_policies_classes_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DevicecontrolapiRespPoliciesV2>, Integer, Hash)> patch_device_control_policies_classes_v1_with_http_info(body)

```ruby
begin
  # Update device control policy's classes (USB and Bluetooth)
  data, status_code, headers = api_instance.patch_device_control_policies_classes_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DevicecontrolapiRespPoliciesV2>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->patch_device_control_policies_classes_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DevicecontrolapiReqUpdatePoliciesClassesV1**](DevicecontrolapiReqUpdatePoliciesClassesV1.md) |  |  |

### Return type

[**DevicecontrolapiRespPoliciesV2**](DevicecontrolapiRespPoliciesV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_device_control_policies_v2

> <DevicecontrolapiRespPoliciesV2> patch_device_control_policies_v2(body)

Update device control policy base (USB and Bluetooth)

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

api_instance = Falcon::DeviceControlWithBluetooth.new
body = Falcon::DevicecontrolapiReqUpdateBasesV1External.new({policies: [Falcon::DevicecontrolapiReqUpdateBaseV1External.new({id: 'id_example'})]}) # DevicecontrolapiReqUpdateBasesV1External | 

begin
  # Update device control policy base (USB and Bluetooth)
  result = api_instance.patch_device_control_policies_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->patch_device_control_policies_v2: #{e}"
end
```

#### Using the patch_device_control_policies_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DevicecontrolapiRespPoliciesV2>, Integer, Hash)> patch_device_control_policies_v2_with_http_info(body)

```ruby
begin
  # Update device control policy base (USB and Bluetooth)
  data, status_code, headers = api_instance.patch_device_control_policies_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DevicecontrolapiRespPoliciesV2>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->patch_device_control_policies_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DevicecontrolapiReqUpdateBasesV1External**](DevicecontrolapiReqUpdateBasesV1External.md) |  |  |

### Return type

[**DevicecontrolapiRespPoliciesV2**](DevicecontrolapiRespPoliciesV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_device_control_policies_v2

> <DevicecontrolapiRespPoliciesV2> post_device_control_policies_v2(body)

Create/clone a device control policy (USB and Bluetooth)

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

api_instance = Falcon::DeviceControlWithBluetooth.new
body = Falcon::DevicecontrolapiReqCreatePoliciesV1.new({policies: [Falcon::DevicecontrolapiReqCreatePolicyV1.new]}) # DevicecontrolapiReqCreatePoliciesV1 | 

begin
  # Create/clone a device control policy (USB and Bluetooth)
  result = api_instance.post_device_control_policies_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->post_device_control_policies_v2: #{e}"
end
```

#### Using the post_device_control_policies_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DevicecontrolapiRespPoliciesV2>, Integer, Hash)> post_device_control_policies_v2_with_http_info(body)

```ruby
begin
  # Create/clone a device control policy (USB and Bluetooth)
  data, status_code, headers = api_instance.post_device_control_policies_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DevicecontrolapiRespPoliciesV2>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->post_device_control_policies_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DevicecontrolapiReqCreatePoliciesV1**](DevicecontrolapiReqCreatePoliciesV1.md) |  |  |

### Return type

[**DevicecontrolapiRespPoliciesV2**](DevicecontrolapiRespPoliciesV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_default_device_control_settings

> <DeviceControlRespDefaultSettingV1> update_default_device_control_settings(body)

Update the configuration for Default Device Control Settings

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

api_instance = Falcon::DeviceControlWithBluetooth.new
body = Falcon::DeviceControlReqUpdateDefaultSettingsV1.new # DeviceControlReqUpdateDefaultSettingsV1 | 

begin
  # Update the configuration for Default Device Control Settings
  result = api_instance.update_default_device_control_settings(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->update_default_device_control_settings: #{e}"
end
```

#### Using the update_default_device_control_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespDefaultSettingV1>, Integer, Hash)> update_default_device_control_settings_with_http_info(body)

```ruby
begin
  # Update the configuration for Default Device Control Settings
  data, status_code, headers = api_instance.update_default_device_control_settings_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespDefaultSettingV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlWithBluetooth->update_default_device_control_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DeviceControlReqUpdateDefaultSettingsV1**](DeviceControlReqUpdateDefaultSettingsV1.md) |  |  |

### Return type

[**DeviceControlRespDefaultSettingV1**](DeviceControlRespDefaultSettingV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


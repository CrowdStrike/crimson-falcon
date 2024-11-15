# Falcon::DeliverySettingsApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_delivery_settings**](DeliverySettingsApi.md#get_delivery_settings) | **GET** /delivery-settings/entities/delivery-settings/v1 | Get Delivery Settings |
| [**post_delivery_settings**](DeliverySettingsApi.md#post_delivery_settings) | **POST** /delivery-settings/entities/delivery-settings/v1 | Create Delivery Settings |


## get_delivery_settings

> <ModelsDeliverySettingsEntityResponse> get_delivery_settings

Get Delivery Settings

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

api_instance = Falcon::DeliverySettingsApi.new

begin
  # Get Delivery Settings
  result = api_instance.get_delivery_settings
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeliverySettingsApi->get_delivery_settings: #{e}"
end
```

#### Using the get_delivery_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsDeliverySettingsEntityResponse>, Integer, Hash)> get_delivery_settings_with_http_info

```ruby
begin
  # Get Delivery Settings
  data, status_code, headers = api_instance.get_delivery_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsDeliverySettingsEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DeliverySettingsApi->get_delivery_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelsDeliverySettingsEntityResponse**](ModelsDeliverySettingsEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_delivery_settings

> <ModelsDeliverySettingsEntityResponse> post_delivery_settings(body)

Create Delivery Settings

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

api_instance = Falcon::DeliverySettingsApi.new
body = Falcon::ModelsDeliverySettingsRequest.new({delivery_settings: [Falcon::ModelsDeliverySettingsInput.new({delivery_cadence: 'delivery_cadence_example', delivery_type: 'delivery_type_example'})]}) # ModelsDeliverySettingsRequest | 

begin
  # Create Delivery Settings
  result = api_instance.post_delivery_settings(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeliverySettingsApi->post_delivery_settings: #{e}"
end
```

#### Using the post_delivery_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsDeliverySettingsEntityResponse>, Integer, Hash)> post_delivery_settings_with_http_info(body)

```ruby
begin
  # Create Delivery Settings
  data, status_code, headers = api_instance.post_delivery_settings_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsDeliverySettingsEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DeliverySettingsApi->post_delivery_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsDeliverySettingsRequest**](ModelsDeliverySettingsRequest.md) |  |  |

### Return type

[**ModelsDeliverySettingsEntityResponse**](ModelsDeliverySettingsEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


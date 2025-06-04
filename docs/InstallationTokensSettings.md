# Falcon::InstallationTokensSettings

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**customer_settings_update**](InstallationTokensSettings.md#customer_settings_update) | **PATCH** /installation-tokens/entities/customer-settings/v1 | Update installation token settings. |


## customer_settings_update

> <ApiCustomerSettingsResponseV1> customer_settings_update(body)

Update installation token settings.

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

api_instance = Falcon::InstallationTokensSettings.new
body = Falcon::ApiCustomerSettingsPatchRequestV1.new # ApiCustomerSettingsPatchRequestV1 | 

begin
  # Update installation token settings.
  result = api_instance.customer_settings_update(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokensSettings->customer_settings_update: #{e}"
end
```

#### Using the customer_settings_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCustomerSettingsResponseV1>, Integer, Hash)> customer_settings_update_with_http_info(body)

```ruby
begin
  # Update installation token settings.
  data, status_code, headers = api_instance.customer_settings_update_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCustomerSettingsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokensSettings->customer_settings_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiCustomerSettingsPatchRequestV1**](ApiCustomerSettingsPatchRequestV1.md) |  |  |

### Return type

[**ApiCustomerSettingsResponseV1**](ApiCustomerSettingsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


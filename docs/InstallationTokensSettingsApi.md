# Falcon::InstallationTokensSettingsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**customer_settings_update**](InstallationTokensSettingsApi.md#customer_settings_update) | **PATCH** /installation-tokens/entities/customer-settings/v1 | Update installation token settings. |


## customer_settings_update

> <MsaQueryResponse> customer_settings_update(body)

Update installation token settings.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::InstallationTokensSettingsApi.new
body = Falcon::ApiCustomerSettingsPatchRequestV1.new # ApiCustomerSettingsPatchRequestV1 | 

begin
  # Update installation token settings.
  result = api_instance.customer_settings_update(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokensSettingsApi->customer_settings_update: #{e}"
end
```

#### Using the customer_settings_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> customer_settings_update_with_http_info(body)

```ruby
begin
  # Update installation token settings.
  data, status_code, headers = api_instance.customer_settings_update_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokensSettingsApi->customer_settings_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiCustomerSettingsPatchRequestV1**](ApiCustomerSettingsPatchRequestV1.md) |  |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


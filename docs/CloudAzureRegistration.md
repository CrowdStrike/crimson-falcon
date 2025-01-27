# Falcon::CloudAzureRegistration

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cloud_registration_azure_download_script**](CloudAzureRegistration.md#cloud_registration_azure_download_script) | **POST** /cloud-security-registration-azure/entities/scripts/v1 | Retrieve script to create resources |


## cloud_registration_azure_download_script

> <RestAzureProvisionGetAccountScriptResponseV1> cloud_registration_azure_download_script(body)

Retrieve script to create resources

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

api_instance = Falcon::CloudAzureRegistration.new
body = Falcon::RestAzureDownloadScriptRequestV1.new({resources: [Falcon::RestAzureDownloadScriptRequestData.new({tenant_id: 'tenant_id_example'})]}) # RestAzureDownloadScriptRequestV1 | 

begin
  # Retrieve script to create resources
  result = api_instance.cloud_registration_azure_download_script(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_download_script: #{e}"
end
```

#### Using the cloud_registration_azure_download_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestAzureProvisionGetAccountScriptResponseV1>, Integer, Hash)> cloud_registration_azure_download_script_with_http_info(body)

```ruby
begin
  # Retrieve script to create resources
  data, status_code, headers = api_instance.cloud_registration_azure_download_script_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestAzureProvisionGetAccountScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_download_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RestAzureDownloadScriptRequestV1**](RestAzureDownloadScriptRequestV1.md) |  |  |

### Return type

[**RestAzureProvisionGetAccountScriptResponseV1**](RestAzureProvisionGetAccountScriptResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


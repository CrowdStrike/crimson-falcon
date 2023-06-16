# Falcon::FalconContainerCliApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_image_vulnerabilities**](FalconContainerCliApi.md#read_image_vulnerabilities) | **POST** /image-assessment/combined/vulnerability-lookups/v1 | Retrieve known vulnerabilities for the provided image |


## read_image_vulnerabilities

> <CoreEntitiesResponse> read_image_vulnerabilities(body)

Retrieve known vulnerabilities for the provided image

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconContainerCliApi.new
body = Falcon::ApiImageLookupRequest.new({osversion: 'osversion_example', packages: [Falcon::ModelsPackageInfoType.new]}) # ApiImageLookupRequest | 

begin
  # Retrieve known vulnerabilities for the provided image
  result = api_instance.read_image_vulnerabilities(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerCliApi->read_image_vulnerabilities: #{e}"
end
```

#### Using the read_image_vulnerabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoreEntitiesResponse>, Integer, Hash)> read_image_vulnerabilities_with_http_info(body)

```ruby
begin
  # Retrieve known vulnerabilities for the provided image
  data, status_code, headers = api_instance.read_image_vulnerabilities_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoreEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerCliApi->read_image_vulnerabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiImageLookupRequest**](ApiImageLookupRequest.md) |  |  |

### Return type

[**CoreEntitiesResponse**](CoreEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


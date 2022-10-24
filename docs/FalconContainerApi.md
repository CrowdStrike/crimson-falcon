# Falcon::FalconContainerApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_credentials**](FalconContainerApi.md#get_credentials) | **GET** /container-security/entities/image-registry-credentials/v1 | Gets the registry credentials |


## get_credentials

> <MsaEntitiesResponse> get_credentials

Gets the registry credentials

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconContainerApi.new

begin
  # Gets the registry credentials
  result = api_instance.get_credentials
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerApi->get_credentials: #{e}"
end
```

#### Using the get_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaEntitiesResponse>, Integer, Hash)> get_credentials_with_http_info

```ruby
begin
  # Gets the registry credentials
  data, status_code, headers = api_instance.get_credentials_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerApi->get_credentials_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MsaEntitiesResponse**](MsaEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


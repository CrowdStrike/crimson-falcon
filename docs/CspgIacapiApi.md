# Falcon::CspgIacapiApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_credentials_mixin0**](CspgIacapiApi.md#get_credentials_mixin0) | **GET** /iac/entities/image-registry-credentials/v1 | Gets the registry credentials (external endpoint) |


## get_credentials_mixin0

> <CommonRegistryCredentialsResponse> get_credentials_mixin0

Gets the registry credentials (external endpoint)

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

api_instance = Falcon::CspgIacapiApi.new

begin
  # Gets the registry credentials (external endpoint)
  result = api_instance.get_credentials_mixin0
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspgIacapiApi->get_credentials_mixin0: #{e}"
end
```

#### Using the get_credentials_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonRegistryCredentialsResponse>, Integer, Hash)> get_credentials_mixin0_with_http_info

```ruby
begin
  # Gets the registry credentials (external endpoint)
  data, status_code, headers = api_instance.get_credentials_mixin0_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonRegistryCredentialsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CspgIacapiApi->get_credentials_mixin0_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CommonRegistryCredentialsResponse**](CommonRegistryCredentialsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


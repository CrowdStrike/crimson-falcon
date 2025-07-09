# Falcon::CspgIac

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_credentials_mixin0**](CspgIac.md#get_credentials_mixin0) | **GET** /iac/entities/image-registry-credentials/v1 | Gets the registry credentials (external endpoint) |


## get_credentials_mixin0

> <ModelsRegistryCredentialsResponse> get_credentials_mixin0

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

api_instance = Falcon::CspgIac.new

begin
  # Gets the registry credentials (external endpoint)
  result = api_instance.get_credentials_mixin0
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspgIac->get_credentials_mixin0: #{e}"
end
```

#### Using the get_credentials_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsRegistryCredentialsResponse>, Integer, Hash)> get_credentials_mixin0_with_http_info

```ruby
begin
  # Gets the registry credentials (external endpoint)
  data, status_code, headers = api_instance.get_credentials_mixin0_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsRegistryCredentialsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CspgIac->get_credentials_mixin0_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelsRegistryCredentialsResponse**](ModelsRegistryCredentialsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


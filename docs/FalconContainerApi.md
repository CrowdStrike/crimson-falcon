# Falcon::FalconContainerApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_credentials**](FalconContainerApi.md#get_credentials) | **GET** /container-security/entities/image-registry-credentials/v1 | Gets the registry credentials |


## get_credentials

> <DomainRegistryCredentialsResponse> get_credentials

Gets the registry credentials

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

> <Array(<DomainRegistryCredentialsResponse>, Integer, Hash)> get_credentials_with_http_info

```ruby
begin
  # Gets the registry credentials
  data, status_code, headers = api_instance.get_credentials_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRegistryCredentialsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerApi->get_credentials_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DomainRegistryCredentialsResponse**](DomainRegistryCredentialsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# Falcon::SaaS

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_integrations_v3**](SaaS.md#get_integrations_v3) | **GET** /saas-security/entities/integrations/v3 | GET Integrations |
| [**get_supported_saas_v3**](SaaS.md#get_supported_saas_v3) | **GET** /saas-security/entities/supported-saas/v3 | GET Supported SaaS |


## get_integrations_v3

> <GetIntegrations> get_integrations_v3(opts)

GET Integrations

Get a list of connected integrations in your account

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

api_instance = Falcon::SaaS.new
opts = {
  saas_id: 'saas_id_example' # String | Comma separated SaaS ID's
}

begin
  # GET Integrations
  result = api_instance.get_integrations_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SaaS->get_integrations_v3: #{e}"
end
```

#### Using the get_integrations_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIntegrations>, Integer, Hash)> get_integrations_v3_with_http_info(opts)

```ruby
begin
  # GET Integrations
  data, status_code, headers = api_instance.get_integrations_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIntegrations>
rescue Falcon::ApiError => e
  puts "Error when calling SaaS->get_integrations_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **saas_id** | **String** | Comma separated SaaS ID&#39;s | [optional] |

### Return type

[**GetIntegrations**](GetIntegrations.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_supported_saas_v3

> <GetSupportedSaas> get_supported_saas_v3

GET Supported SaaS

Get a list of supported integrations

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

api_instance = Falcon::SaaS.new

begin
  # GET Supported SaaS
  result = api_instance.get_supported_saas_v3
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SaaS->get_supported_saas_v3: #{e}"
end
```

#### Using the get_supported_saas_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSupportedSaas>, Integer, Hash)> get_supported_saas_v3_with_http_info

```ruby
begin
  # GET Supported SaaS
  data, status_code, headers = api_instance.get_supported_saas_v3_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSupportedSaas>
rescue Falcon::ApiError => e
  puts "Error when calling SaaS->get_supported_saas_v3_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetSupportedSaas**](GetSupportedSaas.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


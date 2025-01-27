# Falcon::Deployments

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_deployments_external_v1**](Deployments.md#get_deployments_external_v1) | **GET** /deployment-coordinator/entities/deployments/external/v1 | Get deployment resources by ids |


## get_deployments_external_v1

> <DeploymentsAPIDeploymentViewWrapper> get_deployments_external_v1(authorization, ids, opts)

Get deployment resources by ids

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

api_instance = Falcon::Deployments.new
authorization = 'authorization_example' # String | authorization header
ids = ['inner_example'] # Array<String> | release version ids to retrieve deployment details
opts = {
  x_cs_username: 'x_cs_username_example' # String | user name
}

begin
  # Get deployment resources by ids
  result = api_instance.get_deployments_external_v1(authorization, ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Deployments->get_deployments_external_v1: #{e}"
end
```

#### Using the get_deployments_external_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentsAPIDeploymentViewWrapper>, Integer, Hash)> get_deployments_external_v1_with_http_info(authorization, ids, opts)

```ruby
begin
  # Get deployment resources by ids
  data, status_code, headers = api_instance.get_deployments_external_v1_with_http_info(authorization, ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentsAPIDeploymentViewWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling Deployments->get_deployments_external_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | authorization header |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | release version ids to retrieve deployment details |  |
| **x_cs_username** | **String** | user name | [optional] |

### Return type

[**DeploymentsAPIDeploymentViewWrapper**](DeploymentsAPIDeploymentViewWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


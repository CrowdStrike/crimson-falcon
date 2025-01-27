# Falcon::RuntimeDetections

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_runtime_detections_combined_v2**](RuntimeDetections.md#get_runtime_detections_combined_v2) | **GET** /container-security/combined/runtime-detections/v2 | Maximum offset &#x3D; 10000 - limit |


## get_runtime_detections_combined_v2

> <RuntimedetectionsDetectionsEntityResponse> get_runtime_detections_combined_v2(opts)

Maximum offset = 10000 - limit

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

api_instance = Falcon::RuntimeDetections.new
opts = {
  filter: 'filter_example', # String | Filter Container Runtime Detections using a query in Falcon Query Language (FQL). Supported filter fields: - `agent_type` - `aid` - `cid` - `cloud_name` - `cloud` - `cluster_name` - `computer_name` - `container_id` - `detect_timestamp` - `host_id` - `host_type` - `image_id` - `name` - `namespace` - `pod_name` - `severity`
  sort: 'sort_example', # String | The fields to sort the records on.
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.get_runtime_detections_combined_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RuntimeDetections->get_runtime_detections_combined_v2: #{e}"
end
```

#### Using the get_runtime_detections_combined_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RuntimedetectionsDetectionsEntityResponse>, Integer, Hash)> get_runtime_detections_combined_v2_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.get_runtime_detections_combined_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RuntimedetectionsDetectionsEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RuntimeDetections->get_runtime_detections_combined_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter Container Runtime Detections using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;agent_type&#x60; - &#x60;aid&#x60; - &#x60;cid&#x60; - &#x60;cloud_name&#x60; - &#x60;cloud&#x60; - &#x60;cluster_name&#x60; - &#x60;computer_name&#x60; - &#x60;container_id&#x60; - &#x60;detect_timestamp&#x60; - &#x60;host_id&#x60; - &#x60;host_type&#x60; - &#x60;image_id&#x60; - &#x60;name&#x60; - &#x60;namespace&#x60; - &#x60;pod_name&#x60; - &#x60;severity&#x60; | [optional] |
| **sort** | **String** | The fields to sort the records on. | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**RuntimedetectionsDetectionsEntityResponse**](RuntimedetectionsDetectionsEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


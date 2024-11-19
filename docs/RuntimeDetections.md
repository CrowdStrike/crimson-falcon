# Falcon::RuntimeDetections

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_runtime_detections_combined_v2**](RuntimeDetections.md#get_runtime_detections_combined_v2) | **GET** /container-security/combined/runtime-detections/v2 | Retrieve container runtime detections by the provided search criteria |


## get_runtime_detections_combined_v2

> <RuntimedetectionsDetectionsEntityResponse> get_runtime_detections_combined_v2(opts)

Retrieve container runtime detections by the provided search criteria

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
  filter: 'filter_example', # String | Filter Container Runtime Detections using a query in Falcon Query Language (FQL). Supported filters:  action_taken,aid,cid,cloud,cluster_name,command_line,computer_name,container_id,detect_timestamp,detection_description,detection_id,file_name,file_path,host_id,host_type,image_id,name,namespace,pod_name,severity,tactic
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The field to sort the records on.
}

begin
  # Retrieve container runtime detections by the provided search criteria
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
  # Retrieve container runtime detections by the provided search criteria
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
| **filter** | **String** | Filter Container Runtime Detections using a query in Falcon Query Language (FQL). Supported filters:  action_taken,aid,cid,cloud,cluster_name,command_line,computer_name,container_id,detect_timestamp,detection_description,detection_id,file_name,file_path,host_id,host_type,image_id,name,namespace,pod_name,severity,tactic | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The field to sort the records on. | [optional] |

### Return type

[**RuntimedetectionsDetectionsEntityResponse**](RuntimedetectionsDetectionsEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


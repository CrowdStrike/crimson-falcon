# Falcon::UnidentifiedContainers

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_unidentified_containers_by_date_range_count**](UnidentifiedContainers.md#read_unidentified_containers_by_date_range_count) | **GET** /container-security/aggregates/unidentified-containers/count-by-date/v1 | Returns the count of Unidentified Containers over the last 7 days |
| [**read_unidentified_containers_count**](UnidentifiedContainers.md#read_unidentified_containers_count) | **GET** /container-security/aggregates/unidentified-containers/count/v1 | Returns the total count of Unidentified Containers over a time period |
| [**search_and_read_unidentified_containers**](UnidentifiedContainers.md#search_and_read_unidentified_containers) | **GET** /container-security/combined/unidentified-containers/v1 | Maximum offset &#x3D; 10000 - limit |


## read_unidentified_containers_by_date_range_count

> <ModelsAggregateValuesByFieldResponse> read_unidentified_containers_by_date_range_count(opts)

Returns the count of Unidentified Containers over the last 7 days

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

api_instance = Falcon::UnidentifiedContainers.new
opts = {
  filter: 'filter_example' # String | Search Unidentified Containers using a query in Falcon Query Language (FQL). Supported filter fields: - `assessed_images_count` - `cid` - `cluster_name` - `containers_impacted_count` - `detections_count` - `image_assessment_detections_count` - `last_seen` - `namespace` - `node_name` - `severity` - `unassessed_images_count` - `visible_to_k8s`
}

begin
  # Returns the count of Unidentified Containers over the last 7 days
  result = api_instance.read_unidentified_containers_by_date_range_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UnidentifiedContainers->read_unidentified_containers_by_date_range_count: #{e}"
end
```

#### Using the read_unidentified_containers_by_date_range_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsAggregateValuesByFieldResponse>, Integer, Hash)> read_unidentified_containers_by_date_range_count_with_http_info(opts)

```ruby
begin
  # Returns the count of Unidentified Containers over the last 7 days
  data, status_code, headers = api_instance.read_unidentified_containers_by_date_range_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsAggregateValuesByFieldResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UnidentifiedContainers->read_unidentified_containers_by_date_range_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search Unidentified Containers using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;assessed_images_count&#x60; - &#x60;cid&#x60; - &#x60;cluster_name&#x60; - &#x60;containers_impacted_count&#x60; - &#x60;detections_count&#x60; - &#x60;image_assessment_detections_count&#x60; - &#x60;last_seen&#x60; - &#x60;namespace&#x60; - &#x60;node_name&#x60; - &#x60;severity&#x60; - &#x60;unassessed_images_count&#x60; - &#x60;visible_to_k8s&#x60; | [optional] |

### Return type

[**ModelsAggregateValuesByFieldResponse**](ModelsAggregateValuesByFieldResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_unidentified_containers_count

> <UnidentifiedcontainersUnidentifiedContainersCountValue> read_unidentified_containers_count(opts)

Returns the total count of Unidentified Containers over a time period

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

api_instance = Falcon::UnidentifiedContainers.new
opts = {
  filter: 'filter_example' # String | Search Unidentified Containers using a query in Falcon Query Language (FQL). Supported filter fields: - `assessed_images_count` - `cid` - `cluster_name` - `containers_impacted_count` - `detections_count` - `image_assessment_detections_count` - `last_seen` - `namespace` - `node_name` - `severity` - `unassessed_images_count` - `visible_to_k8s`
}

begin
  # Returns the total count of Unidentified Containers over a time period
  result = api_instance.read_unidentified_containers_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UnidentifiedContainers->read_unidentified_containers_count: #{e}"
end
```

#### Using the read_unidentified_containers_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnidentifiedcontainersUnidentifiedContainersCountValue>, Integer, Hash)> read_unidentified_containers_count_with_http_info(opts)

```ruby
begin
  # Returns the total count of Unidentified Containers over a time period
  data, status_code, headers = api_instance.read_unidentified_containers_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnidentifiedcontainersUnidentifiedContainersCountValue>
rescue Falcon::ApiError => e
  puts "Error when calling UnidentifiedContainers->read_unidentified_containers_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search Unidentified Containers using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;assessed_images_count&#x60; - &#x60;cid&#x60; - &#x60;cluster_name&#x60; - &#x60;containers_impacted_count&#x60; - &#x60;detections_count&#x60; - &#x60;image_assessment_detections_count&#x60; - &#x60;last_seen&#x60; - &#x60;namespace&#x60; - &#x60;node_name&#x60; - &#x60;severity&#x60; - &#x60;unassessed_images_count&#x60; - &#x60;visible_to_k8s&#x60; | [optional] |

### Return type

[**UnidentifiedcontainersUnidentifiedContainersCountValue**](UnidentifiedcontainersUnidentifiedContainersCountValue.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_and_read_unidentified_containers

> <UnidentifiedcontainersUnidentifiedContainerAPIResponse> search_and_read_unidentified_containers(opts)

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

api_instance = Falcon::UnidentifiedContainers.new
opts = {
  filter: 'filter_example', # String | Search Unidentified Containers using a query in Falcon Query Language (FQL). Supported filter fields: - `assessed_images_count` - `cid` - `cluster_name` - `containers_impacted_count` - `detections_count` - `image_assessment_detections_count` - `last_seen` - `namespace` - `node_name` - `severity` - `unassessed_images_count` - `visible_to_k8s`
  sort: 'sort_example', # String | The fields to sort the records on.
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.search_and_read_unidentified_containers(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UnidentifiedContainers->search_and_read_unidentified_containers: #{e}"
end
```

#### Using the search_and_read_unidentified_containers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnidentifiedcontainersUnidentifiedContainerAPIResponse>, Integer, Hash)> search_and_read_unidentified_containers_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.search_and_read_unidentified_containers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnidentifiedcontainersUnidentifiedContainerAPIResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UnidentifiedContainers->search_and_read_unidentified_containers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search Unidentified Containers using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;assessed_images_count&#x60; - &#x60;cid&#x60; - &#x60;cluster_name&#x60; - &#x60;containers_impacted_count&#x60; - &#x60;detections_count&#x60; - &#x60;image_assessment_detections_count&#x60; - &#x60;last_seen&#x60; - &#x60;namespace&#x60; - &#x60;node_name&#x60; - &#x60;severity&#x60; - &#x60;unassessed_images_count&#x60; - &#x60;visible_to_k8s&#x60; | [optional] |
| **sort** | **String** | The fields to sort the records on. | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**UnidentifiedcontainersUnidentifiedContainerAPIResponse**](UnidentifiedcontainersUnidentifiedContainerAPIResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


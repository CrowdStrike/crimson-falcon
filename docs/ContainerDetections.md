# Falcon::ContainerDetections

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_combined_detections**](ContainerDetections.md#read_combined_detections) | **GET** /container-security/combined/detections/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_detections**](ContainerDetections.md#read_detections) | **GET** /container-security/entities/detections/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_detections_count**](ContainerDetections.md#read_detections_count) | **GET** /container-security/aggregates/detections/count/v1 | Aggregate count of detections |
| [**read_detections_count_by_severity**](ContainerDetections.md#read_detections_count_by_severity) | **GET** /container-security/aggregates/detections/count-by-severity/v1 | Aggregate counts of detections by severity |
| [**read_detections_count_by_type**](ContainerDetections.md#read_detections_count_by_type) | **GET** /container-security/aggregates/detections/count-by-type/v1 | Aggregate counts of detections by detection type |
| [**search_detections**](ContainerDetections.md#search_detections) | **GET** /container-security/queries/detections/v1 | Maximum offset &#x3D; 10000 - limit |


## read_combined_detections

> <DetectionsApiCombinedDetections> read_combined_detections(opts)

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

api_instance = Falcon::ContainerDetections.new
opts = {
  filter: 'filter_example', # String | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `detection_type` - `image_registry` - `image_repository` - `image_tag`
  sort: 'sort_example', # String | The fields to sort the records on. Supported columns: - `containers_impacted` - `detection_name` - `detection_severity` - `detection_type` - `images_impacted` - `last_detected`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_combined_detections(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_combined_detections: #{e}"
end
```

#### Using the read_combined_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectionsApiCombinedDetections>, Integer, Hash)> read_combined_detections_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_combined_detections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectionsApiCombinedDetections>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_combined_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;detection_type&#x60; - &#x60;image_registry&#x60; - &#x60;image_repository&#x60; - &#x60;image_tag&#x60; | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns: - &#x60;containers_impacted&#x60; - &#x60;detection_name&#x60; - &#x60;detection_severity&#x60; - &#x60;detection_type&#x60; - &#x60;images_impacted&#x60; - &#x60;last_detected&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**DetectionsApiCombinedDetections**](DetectionsApiCombinedDetections.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_detections

> <DetectionsApiAssessmentDetections> read_detections(opts)

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

api_instance = Falcon::ContainerDetections.new
opts = {
  filter: 'filter_example', # String | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `detection_type` - `image_registry` - `image_repository` - `image_tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_detections(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_detections: #{e}"
end
```

#### Using the read_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectionsApiAssessmentDetections>, Integer, Hash)> read_detections_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_detections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectionsApiAssessmentDetections>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;detection_type&#x60; - &#x60;image_registry&#x60; - &#x60;image_repository&#x60; - &#x60;image_tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**DetectionsApiAssessmentDetections**](DetectionsApiAssessmentDetections.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_detections_count

> <DetectionsApiDetectionsCount> read_detections_count(opts)

Aggregate count of detections

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

api_instance = Falcon::ContainerDetections.new
opts = {
  filter: 'filter_example' # String | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `detection_type` - `image_registry` - `image_repository` - `image_tag`
}

begin
  # Aggregate count of detections
  result = api_instance.read_detections_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_detections_count: #{e}"
end
```

#### Using the read_detections_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectionsApiDetectionsCount>, Integer, Hash)> read_detections_count_with_http_info(opts)

```ruby
begin
  # Aggregate count of detections
  data, status_code, headers = api_instance.read_detections_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectionsApiDetectionsCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_detections_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;detection_type&#x60; - &#x60;image_registry&#x60; - &#x60;image_repository&#x60; - &#x60;image_tag&#x60; | [optional] |

### Return type

[**DetectionsApiDetectionsCount**](DetectionsApiDetectionsCount.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_detections_count_by_severity

> <DetectionsApiDetectionsBySeverity> read_detections_count_by_severity(opts)

Aggregate counts of detections by severity

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

api_instance = Falcon::ContainerDetections.new
opts = {
  filter: 'filter_example' # String | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `detection_type` - `image_registry` - `image_repository` - `image_tag`
}

begin
  # Aggregate counts of detections by severity
  result = api_instance.read_detections_count_by_severity(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_detections_count_by_severity: #{e}"
end
```

#### Using the read_detections_count_by_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectionsApiDetectionsBySeverity>, Integer, Hash)> read_detections_count_by_severity_with_http_info(opts)

```ruby
begin
  # Aggregate counts of detections by severity
  data, status_code, headers = api_instance.read_detections_count_by_severity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectionsApiDetectionsBySeverity>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_detections_count_by_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;detection_type&#x60; - &#x60;image_registry&#x60; - &#x60;image_repository&#x60; - &#x60;image_tag&#x60; | [optional] |

### Return type

[**DetectionsApiDetectionsBySeverity**](DetectionsApiDetectionsBySeverity.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_detections_count_by_type

> <DetectionsApiDetectionsByType> read_detections_count_by_type(opts)

Aggregate counts of detections by detection type

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

api_instance = Falcon::ContainerDetections.new
opts = {
  filter: 'filter_example' # String | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `detection_type` - `image_registry` - `image_repository` - `image_tag`
}

begin
  # Aggregate counts of detections by detection type
  result = api_instance.read_detections_count_by_type(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_detections_count_by_type: #{e}"
end
```

#### Using the read_detections_count_by_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectionsApiDetectionsByType>, Integer, Hash)> read_detections_count_by_type_with_http_info(opts)

```ruby
begin
  # Aggregate counts of detections by detection type
  data, status_code, headers = api_instance.read_detections_count_by_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectionsApiDetectionsByType>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->read_detections_count_by_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;detection_type&#x60; - &#x60;image_registry&#x60; - &#x60;image_repository&#x60; - &#x60;image_tag&#x60; | [optional] |

### Return type

[**DetectionsApiDetectionsByType**](DetectionsApiDetectionsByType.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_detections

> <CommonGenericEntityResponseString> search_detections(opts)

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

api_instance = Falcon::ContainerDetections.new
opts = {
  filter: 'filter_example', # String | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `detection_type` - `image_registry` - `image_repository` - `image_tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.search_detections(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->search_detections: #{e}"
end
```

#### Using the search_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonGenericEntityResponseString>, Integer, Hash)> search_detections_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.search_detections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonGenericEntityResponseString>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetections->search_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images detections using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;detection_type&#x60; - &#x60;image_registry&#x60; - &#x60;image_repository&#x60; - &#x60;image_tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**CommonGenericEntityResponseString**](CommonGenericEntityResponseString.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


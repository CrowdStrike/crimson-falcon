# Falcon::ContainerDetectionsApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_combined_detections**](ContainerDetectionsApi.md#read_combined_detections) | **GET** /container-security/combined/detections/v1 | Retrieve image assessment detections identified by the provided filter criteria |
| [**read_detections**](ContainerDetectionsApi.md#read_detections) | **GET** /container-security/entities/detections/v1 | Retrieve image assessment detection entities identified by the provided filter criteria |
| [**read_detections_count**](ContainerDetectionsApi.md#read_detections_count) | **GET** /container-security/aggregates/detections/count/v1 | Aggregate count of detections |
| [**read_detections_count_by_severity**](ContainerDetectionsApi.md#read_detections_count_by_severity) | **GET** /container-security/aggregates/detections/count-by-severity/v1 | Aggregate counts of detections by severity |
| [**read_detections_count_by_type**](ContainerDetectionsApi.md#read_detections_count_by_type) | **GET** /container-security/aggregates/detections/count-by-type/v1 | Aggregate counts of detections by detection type |
| [**search_detections**](ContainerDetectionsApi.md#search_detections) | **GET** /container-security/queries/detections/v1 | Retrieve image assessment detection entities identified by the provided filter criteria |


## read_combined_detections

> <DetectionsApiCombinedDetections> read_combined_detections(opts)

Retrieve image assessment detections identified by the provided filter criteria

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

api_instance = Falcon::ContainerDetectionsApi.new
opts = {
  filter: 'filter_example', # String | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on. Supported columns:  [containers_impacted detection_name detection_severity detection_type images_impacted last_detected]
}

begin
  # Retrieve image assessment detections identified by the provided filter criteria
  result = api_instance.read_combined_detections(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->read_combined_detections: #{e}"
end
```

#### Using the read_combined_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectionsApiCombinedDetections>, Integer, Hash)> read_combined_detections_with_http_info(opts)

```ruby
begin
  # Retrieve image assessment detections identified by the provided filter criteria
  data, status_code, headers = api_instance.read_combined_detections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectionsApiCombinedDetections>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->read_combined_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns:  [containers_impacted detection_name detection_severity detection_type images_impacted last_detected] | [optional] |

### Return type

[**DetectionsApiCombinedDetections**](DetectionsApiCombinedDetections.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_detections

> <DetectionsApiAssessmentDetections> read_detections(opts)

Retrieve image assessment detection entities identified by the provided filter criteria

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

api_instance = Falcon::ContainerDetectionsApi.new
opts = {
  filter: 'filter_example', # String | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,detection_type,image_registry,image_repository,image_tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Retrieve image assessment detection entities identified by the provided filter criteria
  result = api_instance.read_detections(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->read_detections: #{e}"
end
```

#### Using the read_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectionsApiAssessmentDetections>, Integer, Hash)> read_detections_with_http_info(opts)

```ruby
begin
  # Retrieve image assessment detection entities identified by the provided filter criteria
  data, status_code, headers = api_instance.read_detections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectionsApiAssessmentDetections>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->read_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,detection_type,image_registry,image_repository,image_tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

api_instance = Falcon::ContainerDetectionsApi.new
opts = {
  filter: 'filter_example' # String | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
}

begin
  # Aggregate count of detections
  result = api_instance.read_detections_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->read_detections_count: #{e}"
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
  puts "Error when calling ContainerDetectionsApi->read_detections_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity | [optional] |

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

api_instance = Falcon::ContainerDetectionsApi.new
opts = {
  filter: 'filter_example' # String | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
}

begin
  # Aggregate counts of detections by severity
  result = api_instance.read_detections_count_by_severity(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->read_detections_count_by_severity: #{e}"
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
  puts "Error when calling ContainerDetectionsApi->read_detections_count_by_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity | [optional] |

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

api_instance = Falcon::ContainerDetectionsApi.new
opts = {
  filter: 'filter_example' # String | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
}

begin
  # Aggregate counts of detections by detection type
  result = api_instance.read_detections_count_by_type(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->read_detections_count_by_type: #{e}"
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
  puts "Error when calling ContainerDetectionsApi->read_detections_count_by_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity | [optional] |

### Return type

[**DetectionsApiDetectionsByType**](DetectionsApiDetectionsByType.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_detections

> <CommonGenericEntityResponseString> search_detections(opts)

Retrieve image assessment detection entities identified by the provided filter criteria

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

api_instance = Falcon::ContainerDetectionsApi.new
opts = {
  filter: 'filter_example', # String | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Retrieve image assessment detection entities identified by the provided filter criteria
  result = api_instance.search_detections(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->search_detections: #{e}"
end
```

#### Using the search_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonGenericEntityResponseString>, Integer, Hash)> search_detections_with_http_info(opts)

```ruby
begin
  # Retrieve image assessment detection entities identified by the provided filter criteria
  data, status_code, headers = api_instance.search_detections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonGenericEntityResponseString>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerDetectionsApi->search_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**CommonGenericEntityResponseString**](CommonGenericEntityResponseString.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


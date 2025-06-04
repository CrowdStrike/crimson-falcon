# Falcon::OverwatchDashboard

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregates_detections_global_counts**](OverwatchDashboard.md#aggregates_detections_global_counts) | **GET** /overwatch-dashboards/aggregates/detections-global-counts/v1 | Get the total number of detections pushed across all customers |
| [**aggregates_events**](OverwatchDashboard.md#aggregates_events) | **POST** /overwatch-dashboards/aggregates/events/GET/v1 | Get aggregate OverWatch detection event info by providing an aggregate query |
| [**aggregates_events_collections**](OverwatchDashboard.md#aggregates_events_collections) | **POST** /overwatch-dashboards/aggregates/events-collections/GET/v1 | Get OverWatch detection event collection info by providing an aggregate query |
| [**aggregates_incidents_global_counts**](OverwatchDashboard.md#aggregates_incidents_global_counts) | **GET** /overwatch-dashboards/aggregates/incidents-global-counts/v1 | Get the total number of incidents pushed across all customers |
| [**aggregates_ow_events_global_counts**](OverwatchDashboard.md#aggregates_ow_events_global_counts) | **GET** /overwatch-dashboards/aggregates/ow-events-global-counts/v1 | Get the total number of OverWatch events across all customers |


## aggregates_detections_global_counts

> <MsaFacetsResponse> aggregates_detections_global_counts(filter)

Get the total number of detections pushed across all customers

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

api_instance = Falcon::OverwatchDashboard.new
filter = 'filter_example' # String | An FQL filter string

begin
  # Get the total number of detections pushed across all customers
  result = api_instance.aggregates_detections_global_counts(filter)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_detections_global_counts: #{e}"
end
```

#### Using the aggregates_detections_global_counts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaFacetsResponse>, Integer, Hash)> aggregates_detections_global_counts_with_http_info(filter)

```ruby
begin
  # Get the total number of detections pushed across all customers
  data, status_code, headers = api_instance.aggregates_detections_global_counts_with_http_info(filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaFacetsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_detections_global_counts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | An FQL filter string |  |

### Return type

[**MsaFacetsResponse**](MsaFacetsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregates_events

> <MsaAggregatesResponse> aggregates_events(body)

Get aggregate OverWatch detection event info by providing an aggregate query

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

api_instance = Falcon::OverwatchDashboard.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get aggregate OverWatch detection event info by providing an aggregate query
  result = api_instance.aggregates_events(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_events: #{e}"
end
```

#### Using the aggregates_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregates_events_with_http_info(body)

```ruby
begin
  # Get aggregate OverWatch detection event info by providing an aggregate query
  data, status_code, headers = api_instance.aggregates_events_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregates_events_collections

> <MsaAggregatesResponse> aggregates_events_collections(body)

Get OverWatch detection event collection info by providing an aggregate query

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

api_instance = Falcon::OverwatchDashboard.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get OverWatch detection event collection info by providing an aggregate query
  result = api_instance.aggregates_events_collections(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_events_collections: #{e}"
end
```

#### Using the aggregates_events_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregates_events_collections_with_http_info(body)

```ruby
begin
  # Get OverWatch detection event collection info by providing an aggregate query
  data, status_code, headers = api_instance.aggregates_events_collections_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_events_collections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregates_incidents_global_counts

> <MsaFacetsResponse> aggregates_incidents_global_counts(filter)

Get the total number of incidents pushed across all customers

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

api_instance = Falcon::OverwatchDashboard.new
filter = 'filter_example' # String | An FQL filter string

begin
  # Get the total number of incidents pushed across all customers
  result = api_instance.aggregates_incidents_global_counts(filter)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_incidents_global_counts: #{e}"
end
```

#### Using the aggregates_incidents_global_counts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaFacetsResponse>, Integer, Hash)> aggregates_incidents_global_counts_with_http_info(filter)

```ruby
begin
  # Get the total number of incidents pushed across all customers
  data, status_code, headers = api_instance.aggregates_incidents_global_counts_with_http_info(filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaFacetsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_incidents_global_counts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | An FQL filter string |  |

### Return type

[**MsaFacetsResponse**](MsaFacetsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregates_ow_events_global_counts

> <MsaFacetsResponse> aggregates_ow_events_global_counts(filter)

Get the total number of OverWatch events across all customers

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

api_instance = Falcon::OverwatchDashboard.new
filter = 'filter_example' # String | An FQL filter string

begin
  # Get the total number of OverWatch events across all customers
  result = api_instance.aggregates_ow_events_global_counts(filter)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_ow_events_global_counts: #{e}"
end
```

#### Using the aggregates_ow_events_global_counts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaFacetsResponse>, Integer, Hash)> aggregates_ow_events_global_counts_with_http_info(filter)

```ruby
begin
  # Get the total number of OverWatch events across all customers
  data, status_code, headers = api_instance.aggregates_ow_events_global_counts_with_http_info(filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaFacetsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling OverwatchDashboard->aggregates_ow_events_global_counts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | An FQL filter string |  |

### Return type

[**MsaFacetsResponse**](MsaFacetsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


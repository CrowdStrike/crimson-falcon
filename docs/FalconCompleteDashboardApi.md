# Falcon::FalconCompleteDashboardApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_allow_list**](FalconCompleteDashboardApi.md#aggregate_allow_list) | **POST** /falcon-complete-dashboards/aggregates/allowlist/GET/v1 | Retrieve aggregate allowlist ticket values based on the matched filter |
| [**aggregate_block_list**](FalconCompleteDashboardApi.md#aggregate_block_list) | **POST** /falcon-complete-dashboards/aggregates/blocklist/GET/v1 | Retrieve aggregate blocklist ticket values based on the matched filter |
| [**aggregate_detections**](FalconCompleteDashboardApi.md#aggregate_detections) | **POST** /falcon-complete-dashboards/aggregates/detects/GET/v1 | Retrieve aggregate detection values based on the matched filter |
| [**aggregate_device_count_collection**](FalconCompleteDashboardApi.md#aggregate_device_count_collection) | **POST** /falcon-complete-dashboards/aggregates/devicecount-collections/GET/v1 | Retrieve aggregate host/devices count based on the matched filter |
| [**aggregate_escalations**](FalconCompleteDashboardApi.md#aggregate_escalations) | **POST** /falcon-complete-dashboards/aggregates/escalations/GET/v1 | Retrieve aggregate escalation ticket values based on the matched filter |
| [**aggregate_fc_incidents**](FalconCompleteDashboardApi.md#aggregate_fc_incidents) | **POST** /falcon-complete-dashboards/aggregates/incidents/GET/v1 | Retrieve aggregate incident values based on the matched filter |
| [**aggregate_remediations**](FalconCompleteDashboardApi.md#aggregate_remediations) | **POST** /falcon-complete-dashboards/aggregates/remediations/GET/v1 | Retrieve aggregate remediation ticket values based on the matched filter |
| [**get_device_count_collection_queries_by_filter**](FalconCompleteDashboardApi.md#get_device_count_collection_queries_by_filter) | **GET** /falcon-complete-dashboards/queries/devicecount-collections/v1 | Retrieve device count collection Ids that match the provided FQL filter, criteria with scrolling enabled |
| [**query_allow_list_filter**](FalconCompleteDashboardApi.md#query_allow_list_filter) | **GET** /falcon-complete-dashboards/queries/allowlist/v1 | Retrieve allowlist tickets that match the provided filter criteria with scrolling enabled |
| [**query_block_list_filter**](FalconCompleteDashboardApi.md#query_block_list_filter) | **GET** /falcon-complete-dashboards/queries/blocklist/v1 | Retrieve block listtickets that match the provided filter criteria with scrolling enabled |
| [**query_detection_ids_by_filter**](FalconCompleteDashboardApi.md#query_detection_ids_by_filter) | **GET** /falcon-complete-dashboards/queries/detects/v1 | Retrieve DetectionsIds that match the provided FQL filter, criteria with scrolling enabled |
| [**query_escalations_filter**](FalconCompleteDashboardApi.md#query_escalations_filter) | **GET** /falcon-complete-dashboards/queries/escalations/v1 | Retrieve escalation tickets that match the provided filter criteria with scrolling enabled |
| [**query_incident_ids_by_filter**](FalconCompleteDashboardApi.md#query_incident_ids_by_filter) | **GET** /falcon-complete-dashboards/queries/incidents/v1 | Retrieve incidents that match the provided filter criteria with scrolling enabled |
| [**query_remediations_filter**](FalconCompleteDashboardApi.md#query_remediations_filter) | **GET** /falcon-complete-dashboards/queries/remediations/v1 | Retrieve remediation tickets that match the provided filter criteria with scrolling enabled |


## aggregate_allow_list

> <MsaAggregatesResponse> aggregate_allow_list(body)

Retrieve aggregate allowlist ticket values based on the matched filter

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Retrieve aggregate allowlist ticket values based on the matched filter
  result = api_instance.aggregate_allow_list(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_allow_list: #{e}"
end
```

#### Using the aggregate_allow_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_allow_list_with_http_info(body)

```ruby
begin
  # Retrieve aggregate allowlist ticket values based on the matched filter
  data, status_code, headers = api_instance.aggregate_allow_list_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_allow_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_block_list

> <MsaAggregatesResponse> aggregate_block_list(body)

Retrieve aggregate blocklist ticket values based on the matched filter

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Retrieve aggregate blocklist ticket values based on the matched filter
  result = api_instance.aggregate_block_list(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_block_list: #{e}"
end
```

#### Using the aggregate_block_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_block_list_with_http_info(body)

```ruby
begin
  # Retrieve aggregate blocklist ticket values based on the matched filter
  data, status_code, headers = api_instance.aggregate_block_list_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_block_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_detections

> <MsaAggregatesResponse> aggregate_detections(body)

Retrieve aggregate detection values based on the matched filter

Fields allowed to aggregate on:  - indexed_time   - created_time   - detect_time   - ldt   - cid   - aid   - platform_name   - os_version   - device_tags   - host_name   - status   - severity   - adversary_ids   - behavior_ids   - behavior_names   - num_blocked_processes   - num_quarantined_files   - pattern_ids   - first_behavior_time   - last_behavior_time   - show_in_ui   - seconds_to_triaged   - seconds_to_resolved   - assigned_to_uid   - public_tags   - vertical_tags

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Retrieve aggregate detection values based on the matched filter
  result = api_instance.aggregate_detections(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_detections: #{e}"
end
```

#### Using the aggregate_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_detections_with_http_info(body)

```ruby
begin
  # Retrieve aggregate detection values based on the matched filter
  data, status_code, headers = api_instance.aggregate_detections_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_device_count_collection

> <MsaAggregatesResponse> aggregate_device_count_collection(body)

Retrieve aggregate host/devices count based on the matched filter

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Retrieve aggregate host/devices count based on the matched filter
  result = api_instance.aggregate_device_count_collection(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_device_count_collection: #{e}"
end
```

#### Using the aggregate_device_count_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_device_count_collection_with_http_info(body)

```ruby
begin
  # Retrieve aggregate host/devices count based on the matched filter
  data, status_code, headers = api_instance.aggregate_device_count_collection_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_device_count_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_escalations

> <MsaAggregatesResponse> aggregate_escalations(body)

Retrieve aggregate escalation ticket values based on the matched filter

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Retrieve aggregate escalation ticket values based on the matched filter
  result = api_instance.aggregate_escalations(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_escalations: #{e}"
end
```

#### Using the aggregate_escalations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_escalations_with_http_info(body)

```ruby
begin
  # Retrieve aggregate escalation ticket values based on the matched filter
  data, status_code, headers = api_instance.aggregate_escalations_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_escalations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_fc_incidents

> <MsaAggregatesResponse> aggregate_fc_incidents(body)

Retrieve aggregate incident values based on the matched filter

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Retrieve aggregate incident values based on the matched filter
  result = api_instance.aggregate_fc_incidents(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_fc_incidents: #{e}"
end
```

#### Using the aggregate_fc_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_fc_incidents_with_http_info(body)

```ruby
begin
  # Retrieve aggregate incident values based on the matched filter
  data, status_code, headers = api_instance.aggregate_fc_incidents_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_fc_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_remediations

> <MsaAggregatesResponse> aggregate_remediations(body)

Retrieve aggregate remediation ticket values based on the matched filter

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Retrieve aggregate remediation ticket values based on the matched filter
  result = api_instance.aggregate_remediations(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_remediations: #{e}"
end
```

#### Using the aggregate_remediations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_remediations_with_http_info(body)

```ruby
begin
  # Retrieve aggregate remediation ticket values based on the matched filter
  data, status_code, headers = api_instance.aggregate_remediations_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->aggregate_remediations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_device_count_collection_queries_by_filter

> <MsaQueryResponse> get_device_count_collection_queries_by_filter(opts)

Retrieve device count collection Ids that match the provided FQL filter, criteria with scrolling enabled

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'sort_example', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve device count collection Ids that match the provided FQL filter, criteria with scrolling enabled
  result = api_instance.get_device_count_collection_queries_by_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->get_device_count_collection_queries_by_filter: #{e}"
end
```

#### Using the get_device_count_collection_queries_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> get_device_count_collection_queries_by_filter_with_http_info(opts)

```ruby
begin
  # Retrieve device count collection Ids that match the provided FQL filter, criteria with scrolling enabled
  data, status_code, headers = api_instance.get_device_count_collection_queries_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->get_device_count_collection_queries_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_allow_list_filter

> <MsaQueryResponse> query_allow_list_filter(opts)

Retrieve allowlist tickets that match the provided filter criteria with scrolling enabled

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'sort_example', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve allowlist tickets that match the provided filter criteria with scrolling enabled
  result = api_instance.query_allow_list_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_allow_list_filter: #{e}"
end
```

#### Using the query_allow_list_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_allow_list_filter_with_http_info(opts)

```ruby
begin
  # Retrieve allowlist tickets that match the provided filter criteria with scrolling enabled
  data, status_code, headers = api_instance.query_allow_list_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_allow_list_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_block_list_filter

> <MsaQueryResponse> query_block_list_filter(opts)

Retrieve block listtickets that match the provided filter criteria with scrolling enabled

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'sort_example', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve block listtickets that match the provided filter criteria with scrolling enabled
  result = api_instance.query_block_list_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_block_list_filter: #{e}"
end
```

#### Using the query_block_list_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_block_list_filter_with_http_info(opts)

```ruby
begin
  # Retrieve block listtickets that match the provided filter criteria with scrolling enabled
  data, status_code, headers = api_instance.query_block_list_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_block_list_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_detection_ids_by_filter

> <MsaQueryResponse> query_detection_ids_by_filter(opts)

Retrieve DetectionsIds that match the provided FQL filter, criteria with scrolling enabled

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'sort_example', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve DetectionsIds that match the provided FQL filter, criteria with scrolling enabled
  result = api_instance.query_detection_ids_by_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_detection_ids_by_filter: #{e}"
end
```

#### Using the query_detection_ids_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_detection_ids_by_filter_with_http_info(opts)

```ruby
begin
  # Retrieve DetectionsIds that match the provided FQL filter, criteria with scrolling enabled
  data, status_code, headers = api_instance.query_detection_ids_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_detection_ids_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_escalations_filter

> <MsaQueryResponse> query_escalations_filter(opts)

Retrieve escalation tickets that match the provided filter criteria with scrolling enabled

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'sort_example', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve escalation tickets that match the provided filter criteria with scrolling enabled
  result = api_instance.query_escalations_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_escalations_filter: #{e}"
end
```

#### Using the query_escalations_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_escalations_filter_with_http_info(opts)

```ruby
begin
  # Retrieve escalation tickets that match the provided filter criteria with scrolling enabled
  data, status_code, headers = api_instance.query_escalations_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_escalations_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_incident_ids_by_filter

> <MsaQueryResponse> query_incident_ids_by_filter(opts)

Retrieve incidents that match the provided filter criteria with scrolling enabled

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'sort_example', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve incidents that match the provided filter criteria with scrolling enabled
  result = api_instance.query_incident_ids_by_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_incident_ids_by_filter: #{e}"
end
```

#### Using the query_incident_ids_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_incident_ids_by_filter_with_http_info(opts)

```ruby
begin
  # Retrieve incidents that match the provided filter criteria with scrolling enabled
  data, status_code, headers = api_instance.query_incident_ids_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_incident_ids_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_remediations_filter

> <MsaQueryResponse> query_remediations_filter(opts)

Retrieve remediation tickets that match the provided filter criteria with scrolling enabled

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconCompleteDashboardApi.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'sort_example', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve remediation tickets that match the provided filter criteria with scrolling enabled
  result = api_instance.query_remediations_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_remediations_filter: #{e}"
end
```

#### Using the query_remediations_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_remediations_filter_with_http_info(opts)

```ruby
begin
  # Retrieve remediation tickets that match the provided filter criteria with scrolling enabled
  data, status_code, headers = api_instance.query_remediations_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconCompleteDashboardApi->query_remediations_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


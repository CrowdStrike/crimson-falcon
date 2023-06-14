# Falcon::DetectsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_aggregate_detects**](DetectsApi.md#get_aggregate_detects) | **POST** /detects/aggregates/detects/GET/v1 | Get detect aggregates as specified via json in request body. |
| [**get_detect_summaries**](DetectsApi.md#get_detect_summaries) | **POST** /detects/entities/summaries/GET/v1 | View information about detections |
| [**query_detects**](DetectsApi.md#query_detects) | **GET** /detects/queries/detects/v1 | Search for detection IDs that match a given query |
| [**update_detects_by_ids_v2**](DetectsApi.md#update_detects_by_ids_v2) | **PATCH** /detects/entities/detects/v2 | Modify the state, assignee, and visibility of detections |


## get_aggregate_detects

> <MsaAggregatesResponse> get_aggregate_detects(body)

Get detect aggregates as specified via json in request body.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DetectsApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | Query criteria and settings

begin
  # Get detect aggregates as specified via json in request body.
  result = api_instance.get_aggregate_detects(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DetectsApi->get_aggregate_detects: #{e}"
end
```

#### Using the get_aggregate_detects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> get_aggregate_detects_with_http_info(body)

```ruby
begin
  # Get detect aggregates as specified via json in request body.
  data, status_code, headers = api_instance.get_aggregate_detects_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DetectsApi->get_aggregate_detects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) | Query criteria and settings |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_detect_summaries

> <DomainMsaDetectSummariesResponse> get_detect_summaries(body)

View information about detections

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DetectsApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | View key attributes of detections, including the associated host, [disposition](https://falcon.crowdstrike.com/documentation/86/detections-monitoring-apis#pattern-disposition-value-descriptions), objective/tactic/technique, adversary, and more. Specify one or more detection IDs (max 1000 per request). Find detection IDs with the `/detects/queries/detects/v1` endpoint, the Falcon console, or the Streaming API.

begin
  # View information about detections
  result = api_instance.get_detect_summaries(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DetectsApi->get_detect_summaries: #{e}"
end
```

#### Using the get_detect_summaries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainMsaDetectSummariesResponse>, Integer, Hash)> get_detect_summaries_with_http_info(body)

```ruby
begin
  # View information about detections
  data, status_code, headers = api_instance.get_detect_summaries_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainMsaDetectSummariesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DetectsApi->get_detect_summaries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) | View key attributes of detections, including the associated host, [disposition](https://falcon.crowdstrike.com/documentation/86/detections-monitoring-apis#pattern-disposition-value-descriptions), objective/tactic/technique, adversary, and more. Specify one or more detection IDs (max 1000 per request). Find detection IDs with the &#x60;/detects/queries/detects/v1&#x60; endpoint, the Falcon console, or the Streaming API. |  |

### Return type

[**DomainMsaDetectSummariesResponse**](DomainMsaDetectSummariesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_detects

> <MsaQueryResponse> query_detects(opts)

Search for detection IDs that match a given query

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DetectsApi.new
opts = {
  offset: 56, # Integer | The first detection to return, where `0` is the latest detection. Use with the `limit` parameter to manage pagination of results.
  limit: 56, # Integer | The maximum number of detections to return in this response (default: 9999; max: 9999). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort detections using these options:  - `first_behavior`: Timestamp of the first behavior associated with this detection - `last_behavior`: Timestamp of the last behavior associated with this detection - `max_severity`: Highest severity of the behaviors associated with this detection - `max_confidence`: Highest confidence of the behaviors associated with this detection - `adversary_id`: ID of the adversary associated with this detection, if any - `device.hostname`: Hostname of the host where this detection was detected  Sort either `asc` (ascending) or `desc` (descending). For example: `last_behavior|asc`
  filter: 'filter_example', # String | Filter detections using a query in Falcon Query Language (FQL) An asterisk wildcard `*` includes all results.   Common filter options include:  - `status` - `device.device_id` - `max_severity`  The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).
  q: 'q_example' # String | Search all detection metadata for the provided string
}

begin
  # Search for detection IDs that match a given query
  result = api_instance.query_detects(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DetectsApi->query_detects: #{e}"
end
```

#### Using the query_detects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_detects_with_http_info(opts)

```ruby
begin
  # Search for detection IDs that match a given query
  data, status_code, headers = api_instance.query_detects_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DetectsApi->query_detects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first detection to return, where &#x60;0&#x60; is the latest detection. Use with the &#x60;limit&#x60; parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The maximum number of detections to return in this response (default: 9999; max: 9999). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort detections using these options:  - &#x60;first_behavior&#x60;: Timestamp of the first behavior associated with this detection - &#x60;last_behavior&#x60;: Timestamp of the last behavior associated with this detection - &#x60;max_severity&#x60;: Highest severity of the behaviors associated with this detection - &#x60;max_confidence&#x60;: Highest confidence of the behaviors associated with this detection - &#x60;adversary_id&#x60;: ID of the adversary associated with this detection, if any - &#x60;device.hostname&#x60;: Hostname of the host where this detection was detected  Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). For example: &#x60;last_behavior|asc&#x60; | [optional] |
| **filter** | **String** | Filter detections using a query in Falcon Query Language (FQL) An asterisk wildcard &#x60;*&#x60; includes all results.   Common filter options include:  - &#x60;status&#x60; - &#x60;device.device_id&#x60; - &#x60;max_severity&#x60;  The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql). | [optional] |
| **q** | **String** | Search all detection metadata for the provided string | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_detects_by_ids_v2

> <MsaReplyMetaOnly> update_detects_by_ids_v2(body)

Modify the state, assignee, and visibility of detections

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DetectsApi.new
body = Falcon::DomainDetectsEntitiesPatchRequest.new # DomainDetectsEntitiesPatchRequest | This endpoint modifies attributes (state and assignee) of detections.   This endpoint accepts a query formatted as a JSON array of key-value pairs. You can update one or more attributes one or more detections with a single request.  **`assigned_to_uuid` values**  A user ID, such as `1234567891234567891`  **`ids` values**  One or more detection IDs, which you can find with the `/detects/queries/detects/v1` endpoint, the Falcon console, or the Streaming API.  **`show_in_ui` values**  - `true`: This detection is displayed in Falcon - `false`: This detection is not displayed in Falcon. Most commonly used together with the `status` key's `false_positive` value.  **`status` values**  - `new` - `in_progress` - `true_positive` - `false_positive` - `closed` - `ignored`  **`comment` values** Optional comment to add to the detection. Comments are displayed with the detection in Falcon and usually used to provide context or notes for other Falcon users. A detection can have multiple comments over time.

begin
  # Modify the state, assignee, and visibility of detections
  result = api_instance.update_detects_by_ids_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DetectsApi->update_detects_by_ids_v2: #{e}"
end
```

#### Using the update_detects_by_ids_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> update_detects_by_ids_v2_with_http_info(body)

```ruby
begin
  # Modify the state, assignee, and visibility of detections
  data, status_code, headers = api_instance.update_detects_by_ids_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling DetectsApi->update_detects_by_ids_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainDetectsEntitiesPatchRequest**](DomainDetectsEntitiesPatchRequest.md) | This endpoint modifies attributes (state and assignee) of detections.   This endpoint accepts a query formatted as a JSON array of key-value pairs. You can update one or more attributes one or more detections with a single request.  **&#x60;assigned_to_uuid&#x60; values**  A user ID, such as &#x60;1234567891234567891&#x60;  **&#x60;ids&#x60; values**  One or more detection IDs, which you can find with the &#x60;/detects/queries/detects/v1&#x60; endpoint, the Falcon console, or the Streaming API.  **&#x60;show_in_ui&#x60; values**  - &#x60;true&#x60;: This detection is displayed in Falcon - &#x60;false&#x60;: This detection is not displayed in Falcon. Most commonly used together with the &#x60;status&#x60; key&#39;s &#x60;false_positive&#x60; value.  **&#x60;status&#x60; values**  - &#x60;new&#x60; - &#x60;in_progress&#x60; - &#x60;true_positive&#x60; - &#x60;false_positive&#x60; - &#x60;closed&#x60; - &#x60;ignored&#x60;  **&#x60;comment&#x60; values** Optional comment to add to the detection. Comments are displayed with the detection in Falcon and usually used to provide context or notes for other Falcon users. A detection can have multiple comments over time. |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


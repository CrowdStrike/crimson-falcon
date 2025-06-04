# Falcon::IntelligenceIndicatorGraph

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_indicator_aggregates**](IntelligenceIndicatorGraph.md#get_indicator_aggregates) | **POST** /intelligence/aggregates/indicators/v1 | Get aggregates for indicators based on requests |
| [**search_indicators**](IntelligenceIndicatorGraph.md#search_indicators) | **POST** /intelligence/combined/indicators/v1 | Search indicators based on FQL filter. |


## get_indicator_aggregates

> <RestapiIndicatorsAggregatesResponse> get_indicator_aggregates(body)

Get aggregates for indicators based on requests

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

api_instance = Falcon::IntelligenceIndicatorGraph.new
body = Falcon::RestapiIndicatorsAggregatesRequest.new({requests: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})]}) # RestapiIndicatorsAggregatesRequest | 

begin
  # Get aggregates for indicators based on requests
  result = api_instance.get_indicator_aggregates(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceIndicatorGraph->get_indicator_aggregates: #{e}"
end
```

#### Using the get_indicator_aggregates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestapiIndicatorsAggregatesResponse>, Integer, Hash)> get_indicator_aggregates_with_http_info(body)

```ruby
begin
  # Get aggregates for indicators based on requests
  data, status_code, headers = api_instance.get_indicator_aggregates_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestapiIndicatorsAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceIndicatorGraph->get_indicator_aggregates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RestapiIndicatorsAggregatesRequest**](RestapiIndicatorsAggregatesRequest.md) |  |  |

### Return type

[**RestapiIndicatorsAggregatesResponse**](RestapiIndicatorsAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_indicators

> <RestapiIndicatorResponse> search_indicators(body, opts)

Search indicators based on FQL filter.

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

api_instance = Falcon::IntelligenceIndicatorGraph.new
body = Falcon::RestapiIndicatorsQueryRequest.new({filter: 'filter_example', sort: [Falcon::RestapiIndicatorsQuerySortRequest.new({field: 'field_example', missing: 3.56, order: 'order_example'})]}) # RestapiIndicatorsQueryRequest | 
opts = {
  limit: 56, # Integer | Limit
  offset: 'offset_example' # String | Offset
}

begin
  # Search indicators based on FQL filter.
  result = api_instance.search_indicators(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceIndicatorGraph->search_indicators: #{e}"
end
```

#### Using the search_indicators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestapiIndicatorResponse>, Integer, Hash)> search_indicators_with_http_info(body, opts)

```ruby
begin
  # Search indicators based on FQL filter.
  data, status_code, headers = api_instance.search_indicators_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestapiIndicatorResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceIndicatorGraph->search_indicators_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RestapiIndicatorsQueryRequest**](RestapiIndicatorsQueryRequest.md) |  |  |
| **limit** | **Integer** | Limit | [optional] |
| **offset** | **String** | Offset | [optional] |

### Return type

[**RestapiIndicatorResponse**](RestapiIndicatorResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


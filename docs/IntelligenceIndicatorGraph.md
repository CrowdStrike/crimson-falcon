# Falcon::IntelligenceIndicatorGraph

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**search_indicators**](IntelligenceIndicatorGraph.md#search_indicators) | **POST** /intelligence/combined/indicators/v1 | Search indicators based on FQL filter. |


## search_indicators

> <RestapiIndicatorResponse> search_indicators(x_cs_useruuid, body, opts)

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
x_cs_useruuid = 'x_cs_useruuid_example' # String | User ID.
body = Falcon::RestapiIndicatorsQueryRequest.new({filter: 'filter_example', sort: [Falcon::RestapiIndicatorsQuerySortRequest.new({field: 'field_example', missing: 3.56, order: 'order_example'})]}) # RestapiIndicatorsQueryRequest | 
opts = {
  limit: 56, # Integer | Limit
  offset: 'offset_example' # String | Offset
}

begin
  # Search indicators based on FQL filter.
  result = api_instance.search_indicators(x_cs_useruuid, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceIndicatorGraph->search_indicators: #{e}"
end
```

#### Using the search_indicators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestapiIndicatorResponse>, Integer, Hash)> search_indicators_with_http_info(x_cs_useruuid, body, opts)

```ruby
begin
  # Search indicators based on FQL filter.
  data, status_code, headers = api_instance.search_indicators_with_http_info(x_cs_useruuid, body, opts)
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
| **x_cs_useruuid** | **String** | User ID. |  |
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


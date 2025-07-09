# Falcon::IntelligenceIndicatorGraph

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**lookup_indicators**](IntelligenceIndicatorGraph.md#lookup_indicators) | **POST** /intelligence/combined/lookup-indicators/v1 | Get indicators based on their value. |
| [**search_indicators**](IntelligenceIndicatorGraph.md#search_indicators) | **POST** /intelligence/combined/indicators/v1 | Search indicators based on FQL filter. |


## lookup_indicators

> <RestapiLookupIndicatorResponse> lookup_indicators(body)

Get indicators based on their value.

Look up intelligence data for multiple indicators. Supports various indicator types including domains, IP addresses, and file hashes (MD5, SHA1, SHA256). Provide up to 100 indicators in a single request.

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
body = Falcon::RestapiIndicatorsLookupRequest.new({values: ['values_example']}) # RestapiIndicatorsLookupRequest | 

begin
  # Get indicators based on their value.
  result = api_instance.lookup_indicators(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceIndicatorGraph->lookup_indicators: #{e}"
end
```

#### Using the lookup_indicators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestapiLookupIndicatorResponse>, Integer, Hash)> lookup_indicators_with_http_info(body)

```ruby
begin
  # Get indicators based on their value.
  data, status_code, headers = api_instance.lookup_indicators_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestapiLookupIndicatorResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceIndicatorGraph->lookup_indicators_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RestapiIndicatorsLookupRequest**](RestapiIndicatorsLookupRequest.md) |  |  |

### Return type

[**RestapiLookupIndicatorResponse**](RestapiLookupIndicatorResponse.md)

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
  sort: 'sort_example', # String | Parameter to specify the order(field examples: FileDetails.SHA256, URLDetails.URL, PublishDate, MaliciousConfidence) Ex: 'PublishDate|asc'.
  filter: 'filter_example', # String | FQL query specifying the filter parameters.
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
| **sort** | **String** | Parameter to specify the order(field examples: FileDetails.SHA256, URLDetails.URL, PublishDate, MaliciousConfidence) Ex: &#39;PublishDate|asc&#39;. | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. | [optional] |
| **limit** | **Integer** | Limit | [optional] |
| **offset** | **String** | Offset | [optional] |

### Return type

[**RestapiIndicatorResponse**](RestapiIndicatorResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


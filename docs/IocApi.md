# Falcon::IocApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**indicator_combined_v1**](IocApi.md#indicator_combined_v1) | **GET** /iocs/combined/indicator/v1 | Get Combined for Indicators. |
| [**indicator_create_v1**](IocApi.md#indicator_create_v1) | **POST** /iocs/entities/indicators/v1 | Create Indicators. |
| [**indicator_delete_v1**](IocApi.md#indicator_delete_v1) | **DELETE** /iocs/entities/indicators/v1 | Delete Indicators by ids. |
| [**indicator_get_v1**](IocApi.md#indicator_get_v1) | **GET** /iocs/entities/indicators/v1 | Get Indicators by ids. |
| [**indicator_search_v1**](IocApi.md#indicator_search_v1) | **GET** /iocs/queries/indicators/v1 | Search for Indicators. |
| [**indicator_update_v1**](IocApi.md#indicator_update_v1) | **PATCH** /iocs/entities/indicators/v1 | Update Indicators. |


## indicator_combined_v1

> <ApiIndicatorRespV1> indicator_combined_v1(opts)

Get Combined for Indicators.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results.
  offset: 56, # Integer | The offset to start retrieving records from. Offset and After params are mutually exclusive. If none provided then scrolling will be used by default. To access more than 10k iocs, use the 'after' parameter instead of 'offset'.
  limit: 56, # Integer | The maximum records to return.
  sort: 'action', # String | The sort expression that should be used to sort the results.
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an 'after' token. On subsequent requests, provide the 'after' token from the previous response to continue from that place in the results. To access more than 10k indicators, use the 'after' parameter instead of 'offset'.
  from_parent: true # Boolean | The filter for returning either only indicators for the request customer or its MSSP parents
}

begin
  # Get Combined for Indicators.
  result = api_instance.indicator_combined_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_combined_v1: #{e}"
end
```

#### Using the indicator_combined_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorRespV1>, Integer, Hash)> indicator_combined_v1_with_http_info(opts)

```ruby
begin
  # Get Combined for Indicators.
  data, status_code, headers = api_instance.indicator_combined_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_combined_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results. | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from. Offset and After params are mutually exclusive. If none provided then scrolling will be used by default. To access more than 10k iocs, use the &#39;after&#39; parameter instead of &#39;offset&#39;. | [optional] |
| **limit** | **Integer** | The maximum records to return. | [optional] |
| **sort** | **String** | The sort expression that should be used to sort the results. | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#39;after&#39; token. On subsequent requests, provide the &#39;after&#39; token from the previous response to continue from that place in the results. To access more than 10k indicators, use the &#39;after&#39; parameter instead of &#39;offset&#39;. | [optional] |
| **from_parent** | **Boolean** | The filter for returning either only indicators for the request customer or its MSSP parents | [optional] |

### Return type

[**ApiIndicatorRespV1**](ApiIndicatorRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_create_v1

> <ApiIndicatorRespV1> indicator_create_v1(body, opts)

Create Indicators.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocApi.new
body = Falcon::ApiIndicatorCreateReqsV1.new({indicators: [Falcon::ApiIndicatorCreateReqV1.new({applied_globally: false})]}) # ApiIndicatorCreateReqsV1 | 
opts = {
  retrodetects: true, # Boolean | Whether to submit to retrodetects
  ignore_warnings: true # Boolean | Set to true to ignore warnings and add all IOCs
}

begin
  # Create Indicators.
  result = api_instance.indicator_create_v1(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_create_v1: #{e}"
end
```

#### Using the indicator_create_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorRespV1>, Integer, Hash)> indicator_create_v1_with_http_info(body, opts)

```ruby
begin
  # Create Indicators.
  data, status_code, headers = api_instance.indicator_create_v1_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_create_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiIndicatorCreateReqsV1**](ApiIndicatorCreateReqsV1.md) |  |  |
| **retrodetects** | **Boolean** | Whether to submit to retrodetects | [optional] |
| **ignore_warnings** | **Boolean** | Set to true to ignore warnings and add all IOCs | [optional][default to false] |

### Return type

[**ApiIndicatorRespV1**](ApiIndicatorRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## indicator_delete_v1

> <ApiIndicatorQueryResponse> indicator_delete_v1(opts)

Delete Indicators by ids.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocApi.new
opts = {
  filter: 'filter_example', # String | The FQL expression to delete Indicators in bulk. If both 'filter' and 'ids' are provided, then filter takes precedence and ignores ids.
  ids: ['inner_example'], # Array<String> | The ids of the Indicators to delete. If both 'filter' and 'ids' are provided, then filter takes precedence and ignores ids
  comment: 'comment_example' # String | The comment why these indicators were deleted
}

begin
  # Delete Indicators by ids.
  result = api_instance.indicator_delete_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_delete_v1: #{e}"
end
```

#### Using the indicator_delete_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorQueryResponse>, Integer, Hash)> indicator_delete_v1_with_http_info(opts)

```ruby
begin
  # Delete Indicators by ids.
  data, status_code, headers = api_instance.indicator_delete_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_delete_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The FQL expression to delete Indicators in bulk. If both &#39;filter&#39; and &#39;ids&#39; are provided, then filter takes precedence and ignores ids. | [optional] |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the Indicators to delete. If both &#39;filter&#39; and &#39;ids&#39; are provided, then filter takes precedence and ignores ids | [optional] |
| **comment** | **String** | The comment why these indicators were deleted | [optional] |

### Return type

[**ApiIndicatorQueryResponse**](ApiIndicatorQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_get_v1

> <ApiIndicatorRespV1> indicator_get_v1(ids)

Get Indicators by ids.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocApi.new
ids = ['inner_example'] # Array<String> | The ids of the Indicators to retrieve

begin
  # Get Indicators by ids.
  result = api_instance.indicator_get_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_get_v1: #{e}"
end
```

#### Using the indicator_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorRespV1>, Integer, Hash)> indicator_get_v1_with_http_info(ids)

```ruby
begin
  # Get Indicators by ids.
  data, status_code, headers = api_instance.indicator_get_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the Indicators to retrieve |  |

### Return type

[**ApiIndicatorRespV1**](ApiIndicatorRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_search_v1

> <ApiIndicatorQueryRespV1> indicator_search_v1(opts)

Search for Indicators.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results.
  offset: 56, # Integer | The offset to start retrieving records from. Offset and After params are mutually exclusive. If none provided then scrolling will be used by default. To access more than 10k iocs, use the 'after' parameter instead of 'offset'.
  limit: 56, # Integer | The maximum records to return.
  sort: 'action', # String | The sort expression that should be used to sort the results.
  after: 'after_example' # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an 'after' token. On subsequent requests, provide the 'after' token from the previous response to continue from that place in the results. To access more than 10k indicators, use the 'after' parameter instead of 'offset'.
}

begin
  # Search for Indicators.
  result = api_instance.indicator_search_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_search_v1: #{e}"
end
```

#### Using the indicator_search_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorQueryRespV1>, Integer, Hash)> indicator_search_v1_with_http_info(opts)

```ruby
begin
  # Search for Indicators.
  data, status_code, headers = api_instance.indicator_search_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorQueryRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_search_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results. | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from. Offset and After params are mutually exclusive. If none provided then scrolling will be used by default. To access more than 10k iocs, use the &#39;after&#39; parameter instead of &#39;offset&#39;. | [optional] |
| **limit** | **Integer** | The maximum records to return. | [optional] |
| **sort** | **String** | The sort expression that should be used to sort the results. | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#39;after&#39; token. On subsequent requests, provide the &#39;after&#39; token from the previous response to continue from that place in the results. To access more than 10k indicators, use the &#39;after&#39; parameter instead of &#39;offset&#39;. | [optional] |

### Return type

[**ApiIndicatorQueryRespV1**](ApiIndicatorQueryRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_update_v1

> <ApiIndicatorRespV1> indicator_update_v1(body, opts)

Update Indicators.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IocApi.new
body = Falcon::ApiIndicatorUpdateReqsV1.new({bulk_update: Falcon::ApiBulkUpdateReqV1.new, indicators: [Falcon::ApiIndicatorUpdateReqV1.new]}) # ApiIndicatorUpdateReqsV1 | 
opts = {
  retrodetects: true, # Boolean | Whether to submit to retrodetects
  ignore_warnings: true # Boolean | Set to true to ignore warnings and add all IOCs
}

begin
  # Update Indicators.
  result = api_instance.indicator_update_v1(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_update_v1: #{e}"
end
```

#### Using the indicator_update_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorRespV1>, Integer, Hash)> indicator_update_v1_with_http_info(body, opts)

```ruby
begin
  # Update Indicators.
  data, status_code, headers = api_instance.indicator_update_v1_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_update_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiIndicatorUpdateReqsV1**](ApiIndicatorUpdateReqsV1.md) |  |  |
| **retrodetects** | **Boolean** | Whether to submit to retrodetects | [optional] |
| **ignore_warnings** | **Boolean** | Set to true to ignore warnings and add all IOCs | [optional][default to false] |

### Return type

[**ApiIndicatorRespV1**](ApiIndicatorRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


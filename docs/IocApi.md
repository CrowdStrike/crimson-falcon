# Falcon::IocApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**action_get_v1**](IocApi.md#action_get_v1) | **GET** /iocs/entities/actions/v1 | Get Actions by ids. |
| [**action_query_v1**](IocApi.md#action_query_v1) | **GET** /iocs/queries/actions/v1 | Query Actions. |
| [**get_indicators_report**](IocApi.md#get_indicators_report) | **POST** /iocs/entities/indicators-reports/v1 | Launch an indicators report creation job |
| [**indicator_aggregate_v1**](IocApi.md#indicator_aggregate_v1) | **POST** /iocs/aggregates/indicators/v1 | Get Indicators aggregates as specified via json in the request body. |
| [**indicator_combined_v1**](IocApi.md#indicator_combined_v1) | **GET** /iocs/combined/indicator/v1 | Get Combined for Indicators. |
| [**indicator_create_v1**](IocApi.md#indicator_create_v1) | **POST** /iocs/entities/indicators/v1 | Create Indicators. |
| [**indicator_delete_v1**](IocApi.md#indicator_delete_v1) | **DELETE** /iocs/entities/indicators/v1 | Delete Indicators by ids. |
| [**indicator_get_device_count_v1**](IocApi.md#indicator_get_device_count_v1) | **GET** /iocs/aggregates/indicators/device-count/v1 | Get the number of devices the indicator has run on |
| [**indicator_get_devices_ran_on_v1**](IocApi.md#indicator_get_devices_ran_on_v1) | **GET** /iocs/queries/indicators/devices/v1 | Get the IDs of devices the indicator has run on |
| [**indicator_get_processes_ran_on_v1**](IocApi.md#indicator_get_processes_ran_on_v1) | **GET** /iocs/queries/indicators/processes/v1 | Get the number of processes the indicator has run on |
| [**indicator_get_v1**](IocApi.md#indicator_get_v1) | **GET** /iocs/entities/indicators/v1 | Get Indicators by ids. |
| [**indicator_search_v1**](IocApi.md#indicator_search_v1) | **GET** /iocs/queries/indicators/v1 | Search for Indicators. |
| [**indicator_update_v1**](IocApi.md#indicator_update_v1) | **PATCH** /iocs/entities/indicators/v1 | Update Indicators. |
| [**ioc_type_query_v1**](IocApi.md#ioc_type_query_v1) | **GET** /iocs/queries/ioc-types/v1 | Query IOC Types. |
| [**platform_query_v1**](IocApi.md#platform_query_v1) | **GET** /iocs/queries/platforms/v1 | Query Platforms. |
| [**severity_query_v1**](IocApi.md#severity_query_v1) | **GET** /iocs/queries/severities/v1 | Query Severities. |


## action_get_v1

> <ApiActionRespV1> action_get_v1(opts)

Get Actions by ids.

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

api_instance = Falcon::IocApi.new
opts = {
  ids: ['inner_example'] # Array<String> | The ids of the Actions to retrieve
}

begin
  # Get Actions by ids.
  result = api_instance.action_get_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->action_get_v1: #{e}"
end
```

#### Using the action_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiActionRespV1>, Integer, Hash)> action_get_v1_with_http_info(opts)

```ruby
begin
  # Get Actions by ids.
  data, status_code, headers = api_instance.action_get_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiActionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->action_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the Actions to retrieve | [optional] |

### Return type

[**ApiActionRespV1**](ApiActionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## action_query_v1

> <ApiIndicatorQueryRespV1> action_query_v1(opts)

Query Actions.

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

api_instance = Falcon::IocApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Query Actions.
  result = api_instance.action_query_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->action_query_v1: #{e}"
end
```

#### Using the action_query_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorQueryRespV1>, Integer, Hash)> action_query_v1_with_http_info(opts)

```ruby
begin
  # Query Actions.
  data, status_code, headers = api_instance.action_query_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorQueryRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->action_query_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**ApiIndicatorQueryRespV1**](ApiIndicatorQueryRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_indicators_report

> <MsaEntitiesResponse> get_indicators_report(body)

Launch an indicators report creation job

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

api_instance = Falcon::IocApi.new
body = Falcon::ApiIndicatorsReportRequest.new({report_format: 'report_format_example', search: Falcon::ApiIndicatorsSortedSearch.new({filter: 'filter_example', query: 'query_example', sort: 'sort_example'})}) # ApiIndicatorsReportRequest | 

begin
  # Launch an indicators report creation job
  result = api_instance.get_indicators_report(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->get_indicators_report: #{e}"
end
```

#### Using the get_indicators_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaEntitiesResponse>, Integer, Hash)> get_indicators_report_with_http_info(body)

```ruby
begin
  # Launch an indicators report creation job
  data, status_code, headers = api_instance.get_indicators_report_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->get_indicators_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiIndicatorsReportRequest**](ApiIndicatorsReportRequest.md) |  |  |

### Return type

[**MsaEntitiesResponse**](MsaEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## indicator_aggregate_v1

> <MsaAggregatesResponse> indicator_aggregate_v1(body, opts)

Get Indicators aggregates as specified via json in the request body.

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

api_instance = Falcon::IocApi.new
body = Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'}) # MsaAggregateQueryRequest | 
opts = {
  filter: 'filter_example', # String | The filter to narrow down the aggregation data
  from_parent: true # Boolean | The filter for returning either only indicators for the request customer or its MSSP parents
}

begin
  # Get Indicators aggregates as specified via json in the request body.
  result = api_instance.indicator_aggregate_v1(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_aggregate_v1: #{e}"
end
```

#### Using the indicator_aggregate_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> indicator_aggregate_v1_with_http_info(body, opts)

```ruby
begin
  # Get Indicators aggregates as specified via json in the request body.
  data, status_code, headers = api_instance.indicator_aggregate_v1_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_aggregate_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaAggregateQueryRequest**](MsaAggregateQueryRequest.md) |  |  |
| **filter** | **String** | The filter to narrow down the aggregation data | [optional] |
| **from_parent** | **Boolean** | The filter for returning either only indicators for the request customer or its MSSP parents | [optional] |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## indicator_combined_v1

> <ApiIndicatorRespV1> indicator_combined_v1(opts)

Get Combined for Indicators.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_create_v1

> <ApiIndicatorRespV1> indicator_create_v1(body, opts)

Create Indicators.

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

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## indicator_delete_v1

> <ApiIndicatorQueryRespV1> indicator_delete_v1(opts)

Delete Indicators by ids.

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

api_instance = Falcon::IocApi.new
opts = {
  filter: 'filter_example', # String | The FQL expression to delete Indicators in bulk. If both 'filter' and 'ids' are provided, then filter takes precedence and ignores ids.
  ids: ['inner_example'], # Array<String> | The ids of the Indicators to delete. If both 'filter' and 'ids' are provided, then filter takes precedence and ignores ids
  comment: 'comment_example', # String | The comment why these indicators were deleted
  from_parent: true # Boolean | The filter for returning either only indicators for the request customer or its MSSP parents
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

> <Array(<ApiIndicatorQueryRespV1>, Integer, Hash)> indicator_delete_v1_with_http_info(opts)

```ruby
begin
  # Delete Indicators by ids.
  data, status_code, headers = api_instance.indicator_delete_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorQueryRespV1>
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
| **from_parent** | **Boolean** | The filter for returning either only indicators for the request customer or its MSSP parents | [optional] |

### Return type

[**ApiIndicatorQueryRespV1**](ApiIndicatorQueryRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_get_device_count_v1

> <ApiDeviceCountRespV1> indicator_get_device_count_v1(type, value)

Get the number of devices the indicator has run on

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

api_instance = Falcon::IocApi.new
type = 'type_example' # String |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address. 
value = 'value_example' # String | The string representation of the indicator

begin
  # Get the number of devices the indicator has run on
  result = api_instance.indicator_get_device_count_v1(type, value)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_get_device_count_v1: #{e}"
end
```

#### Using the indicator_get_device_count_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiDeviceCountRespV1>, Integer, Hash)> indicator_get_device_count_v1_with_http_info(type, value)

```ruby
begin
  # Get the number of devices the indicator has run on
  data, status_code, headers = api_instance.indicator_get_device_count_v1_with_http_info(type, value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiDeviceCountRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_get_device_count_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address.  |  |
| **value** | **String** | The string representation of the indicator |  |

### Return type

[**ApiDeviceCountRespV1**](ApiDeviceCountRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_get_devices_ran_on_v1

> <ApiDevicesRanOnRespV1> indicator_get_devices_ran_on_v1(type, value, opts)

Get the IDs of devices the indicator has run on

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

api_instance = Falcon::IocApi.new
type = 'type_example' # String |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address. 
value = 'value_example' # String | The string representation of the indicator
opts = {
  limit: 'limit_example', # String | The maximum number of results to return. Use with the offset parameter to manage pagination of results.
  offset: 'offset_example' # String | The first process to return, where 0 is the latest offset. Use with the limit parameter to manage pagination of results.
}

begin
  # Get the IDs of devices the indicator has run on
  result = api_instance.indicator_get_devices_ran_on_v1(type, value, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_get_devices_ran_on_v1: #{e}"
end
```

#### Using the indicator_get_devices_ran_on_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiDevicesRanOnRespV1>, Integer, Hash)> indicator_get_devices_ran_on_v1_with_http_info(type, value, opts)

```ruby
begin
  # Get the IDs of devices the indicator has run on
  data, status_code, headers = api_instance.indicator_get_devices_ran_on_v1_with_http_info(type, value, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiDevicesRanOnRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_get_devices_ran_on_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address.  |  |
| **value** | **String** | The string representation of the indicator |  |
| **limit** | **String** | The maximum number of results to return. Use with the offset parameter to manage pagination of results. | [optional] |
| **offset** | **String** | The first process to return, where 0 is the latest offset. Use with the limit parameter to manage pagination of results. | [optional] |

### Return type

[**ApiDevicesRanOnRespV1**](ApiDevicesRanOnRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_get_processes_ran_on_v1

> <ApiProcessesRanOnRespV1> indicator_get_processes_ran_on_v1(type, value, device_id, opts)

Get the number of processes the indicator has run on

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

api_instance = Falcon::IocApi.new
type = 'type_example' # String |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address. 
value = 'value_example' # String | The string representation of the indicator
device_id = 'device_id_example' # String | Specify a host's ID to return only processes from that host. Get a host's ID from GET /devices/queries/devices/v1, the Falcon console, or the Streaming API.
opts = {
  limit: 'limit_example', # String | The maximum number of results to return. Use with the offset parameter to manage pagination of results.
  offset: 'offset_example' # String | The first process to return, where 0 is the latest offset. Use with the limit parameter to manage pagination of results.
}

begin
  # Get the number of processes the indicator has run on
  result = api_instance.indicator_get_processes_ran_on_v1(type, value, device_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_get_processes_ran_on_v1: #{e}"
end
```

#### Using the indicator_get_processes_ran_on_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProcessesRanOnRespV1>, Integer, Hash)> indicator_get_processes_ran_on_v1_with_http_info(type, value, device_id, opts)

```ruby
begin
  # Get the number of processes the indicator has run on
  data, status_code, headers = api_instance.indicator_get_processes_ran_on_v1_with_http_info(type, value, device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProcessesRanOnRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->indicator_get_processes_ran_on_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  The type of the indicator. Valid types include:  sha256: A hex-encoded sha256 hash string. Length - min: 64, max: 64.  md5: A hex-encoded md5 hash string. Length - min 32, max: 32.  domain: A domain name. Length - min: 1, max: 200.  ipv4: An IPv4 address. Must be a valid IP address.  ipv6: An IPv6 address. Must be a valid IP address.  |  |
| **value** | **String** | The string representation of the indicator |  |
| **device_id** | **String** | Specify a host&#39;s ID to return only processes from that host. Get a host&#39;s ID from GET /devices/queries/devices/v1, the Falcon console, or the Streaming API. |  |
| **limit** | **String** | The maximum number of results to return. Use with the offset parameter to manage pagination of results. | [optional] |
| **offset** | **String** | The first process to return, where 0 is the latest offset. Use with the limit parameter to manage pagination of results. | [optional] |

### Return type

[**ApiProcessesRanOnRespV1**](ApiProcessesRanOnRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_get_v1

> <ApiIndicatorRespV1> indicator_get_v1(ids)

Get Indicators by ids.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_search_v1

> <ApiIndicatorQueryRespV1> indicator_search_v1(opts)

Search for Indicators.

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
| **from_parent** | **Boolean** | The filter for returning either only indicators for the request customer or its MSSP parents | [optional] |

### Return type

[**ApiIndicatorQueryRespV1**](ApiIndicatorQueryRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indicator_update_v1

> <ApiIndicatorRespV1> indicator_update_v1(body, opts)

Update Indicators.

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

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ioc_type_query_v1

> <ApiIndicatorQueryRespV1> ioc_type_query_v1(opts)

Query IOC Types.

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

api_instance = Falcon::IocApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Query IOC Types.
  result = api_instance.ioc_type_query_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->ioc_type_query_v1: #{e}"
end
```

#### Using the ioc_type_query_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorQueryRespV1>, Integer, Hash)> ioc_type_query_v1_with_http_info(opts)

```ruby
begin
  # Query IOC Types.
  data, status_code, headers = api_instance.ioc_type_query_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorQueryRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->ioc_type_query_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**ApiIndicatorQueryRespV1**](ApiIndicatorQueryRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## platform_query_v1

> <ApiIndicatorQueryRespV1> platform_query_v1(opts)

Query Platforms.

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

api_instance = Falcon::IocApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Query Platforms.
  result = api_instance.platform_query_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->platform_query_v1: #{e}"
end
```

#### Using the platform_query_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorQueryRespV1>, Integer, Hash)> platform_query_v1_with_http_info(opts)

```ruby
begin
  # Query Platforms.
  data, status_code, headers = api_instance.platform_query_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorQueryRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->platform_query_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**ApiIndicatorQueryRespV1**](ApiIndicatorQueryRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## severity_query_v1

> <ApiIndicatorQueryRespV1> severity_query_v1(opts)

Query Severities.

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

api_instance = Falcon::IocApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Query Severities.
  result = api_instance.severity_query_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->severity_query_v1: #{e}"
end
```

#### Using the severity_query_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIndicatorQueryRespV1>, Integer, Hash)> severity_query_v1_with_http_info(opts)

```ruby
begin
  # Query Severities.
  data, status_code, headers = api_instance.severity_query_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIndicatorQueryRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IocApi->severity_query_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**ApiIndicatorQueryRespV1**](ApiIndicatorQueryRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


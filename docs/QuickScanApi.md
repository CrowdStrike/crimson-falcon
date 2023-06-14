# Falcon::QuickScanApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_scans**](QuickScanApi.md#get_scans) | **GET** /scanner/entities/scans/v1 | Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute |
| [**get_scans_aggregates**](QuickScanApi.md#get_scans_aggregates) | **POST** /scanner/aggregates/scans/GET/v1 | Get scans aggregations as specified via json in request body. |
| [**query_submissions_mixin0**](QuickScanApi.md#query_submissions_mixin0) | **GET** /scanner/queries/scans/v1 | Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria. |
| [**scan_samples**](QuickScanApi.md#scan_samples) | **POST** /scanner/entities/scans/v1 | Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute |


## get_scans

> <MlscannerapiScanV1Response> get_scans(ids)

Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::QuickScanApi.new
ids = ['inner_example'] # Array<String> | ID of a submitted scan

begin
  # Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute
  result = api_instance.get_scans(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanApi->get_scans: #{e}"
end
```

#### Using the get_scans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MlscannerapiScanV1Response>, Integer, Hash)> get_scans_with_http_info(ids)

```ruby
begin
  # Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute
  data, status_code, headers = api_instance.get_scans_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MlscannerapiScanV1Response>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanApi->get_scans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | ID of a submitted scan |  |

### Return type

[**MlscannerapiScanV1Response**](MlscannerapiScanV1Response.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scans_aggregates

> get_scans_aggregates(body)

Get scans aggregations as specified via json in request body.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::QuickScanApi.new
body = Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'}) # MsaAggregateQueryRequest | 

begin
  # Get scans aggregations as specified via json in request body.
  api_instance.get_scans_aggregates(body)
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanApi->get_scans_aggregates: #{e}"
end
```

#### Using the get_scans_aggregates_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_scans_aggregates_with_http_info(body)

```ruby
begin
  # Get scans aggregations as specified via json in request body.
  data, status_code, headers = api_instance.get_scans_aggregates_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanApi->get_scans_aggregates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaAggregateQueryRequest**](MsaAggregateQueryRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_submissions_mixin0

> <MlscannerapiQueryResponse> query_submissions_mixin0(opts)

Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::QuickScanApi.new
opts = {
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example', # String | The offset to start retrieving submissions from.
  limit: 56, # Integer | Maximum number of volume IDs to return. Max: 5000.
  sort: 'sort_example' # String | Sort order: `asc` or `desc`.
}

begin
  # Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria.
  result = api_instance.query_submissions_mixin0(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanApi->query_submissions_mixin0: #{e}"
end
```

#### Using the query_submissions_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MlscannerapiQueryResponse>, Integer, Hash)> query_submissions_mixin0_with_http_info(opts)

```ruby
begin
  # Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria.
  data, status_code, headers = api_instance.query_submissions_mixin0_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MlscannerapiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanApi->query_submissions_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | The offset to start retrieving submissions from. | [optional] |
| **limit** | **Integer** | Maximum number of volume IDs to return. Max: 5000. | [optional] |
| **sort** | **String** | Sort order: &#x60;asc&#x60; or &#x60;desc&#x60;. | [optional] |

### Return type

[**MlscannerapiQueryResponse**](MlscannerapiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scan_samples

> <MlscannerapiQueryResponse> scan_samples(body)

Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::QuickScanApi.new
body = Falcon::MlscannerapiSamplesScanParameters.new({samples: ['samples_example']}) # MlscannerapiSamplesScanParameters | Submit a batch of SHA256s for ml scanning. The samples must have been previously uploaded through `/samples/entities/samples/v3`

begin
  # Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute
  result = api_instance.scan_samples(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanApi->scan_samples: #{e}"
end
```

#### Using the scan_samples_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MlscannerapiQueryResponse>, Integer, Hash)> scan_samples_with_http_info(body)

```ruby
begin
  # Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute
  data, status_code, headers = api_instance.scan_samples_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MlscannerapiQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanApi->scan_samples_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MlscannerapiSamplesScanParameters**](MlscannerapiSamplesScanParameters.md) | Submit a batch of SHA256s for ml scanning. The samples must have been previously uploaded through &#x60;/samples/entities/samples/v3&#x60; |  |

### Return type

[**MlscannerapiQueryResponse**](MlscannerapiQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


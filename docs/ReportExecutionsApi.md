# Falcon::ReportExecutionsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**report_executions_download_get**](ReportExecutionsApi.md#report_executions_download_get) | **GET** /reports/entities/report-executions-download/v1 | Get report entity download |
| [**report_executions_get**](ReportExecutionsApi.md#report_executions_get) | **GET** /reports/entities/report-executions/v1 | Retrieve report details for the provided report IDs. |
| [**report_executions_query**](ReportExecutionsApi.md#report_executions_query) | **GET** /reports/queries/report-executions/v1 | Find all report execution IDs matching the query with filter |
| [**report_executions_retry**](ReportExecutionsApi.md#report_executions_retry) | **POST** /reports/entities/report-executions-retry/v1 | This endpoint will be used to retry report executions |


## report_executions_download_get

> Array&lt;Integer&gt; report_executions_download_get(ids)

Get report entity download

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

api_instance = Falcon::ReportExecutionsApi.new
ids = 'ids_example' # String | The report_execution id to download

begin
  # Get report entity download
  result = api_instance.report_executions_download_get(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReportExecutionsApi->report_executions_download_get: #{e}"
end
```

#### Using the report_executions_download_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> report_executions_download_get_with_http_info(ids)

```ruby
begin
  # Get report entity download
  data, status_code, headers = api_instance.report_executions_download_get_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue Falcon::ApiError => e
  puts "Error when calling ReportExecutionsApi->report_executions_download_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The report_execution id to download |  |

### Return type

**Array&lt;Integer&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## report_executions_get

> <DomainReportExecutionsResponseV1> report_executions_get(ids)

Retrieve report details for the provided report IDs.

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

api_instance = Falcon::ReportExecutionsApi.new
ids = ['inner_example'] # Array<String> | The report_execution id to get details about.

begin
  # Retrieve report details for the provided report IDs.
  result = api_instance.report_executions_get(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReportExecutionsApi->report_executions_get: #{e}"
end
```

#### Using the report_executions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainReportExecutionsResponseV1>, Integer, Hash)> report_executions_get_with_http_info(ids)

```ruby
begin
  # Retrieve report details for the provided report IDs.
  data, status_code, headers = api_instance.report_executions_get_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainReportExecutionsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReportExecutionsApi->report_executions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The report_execution id to get details about. |  |

### Return type

[**DomainReportExecutionsResponseV1**](DomainReportExecutionsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## report_executions_query

> <MsaQueryResponse> report_executions_query(opts)

Find all report execution IDs matching the query with filter

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

api_instance = Falcon::ReportExecutionsApi.new
opts = {
  sort: 'sort_example', # String | Possible order by fields: created_on, last_updated_on
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: type, scheduled_report_id, status. Filter range criteria: created_on, last_updated_on, expiration_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Find all report execution IDs matching the query with filter
  result = api_instance.report_executions_query(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReportExecutionsApi->report_executions_query: #{e}"
end
```

#### Using the report_executions_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> report_executions_query_with_http_info(opts)

```ruby
begin
  # Find all report execution IDs matching the query with filter
  data, status_code, headers = api_instance.report_executions_query_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReportExecutionsApi->report_executions_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields: created_on, last_updated_on | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: type, scheduled_report_id, status. Filter range criteria: created_on, last_updated_on, expiration_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## report_executions_retry

> <DomainReportExecutionsResponseV1> report_executions_retry(body)

This endpoint will be used to retry report executions

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

api_instance = Falcon::ReportExecutionsApi.new
body = [Falcon::DomainReportExecutionRetryRequestV1.new({id: 'id_example'})] # Array<DomainReportExecutionRetryRequestV1> | 

begin
  # This endpoint will be used to retry report executions
  result = api_instance.report_executions_retry(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReportExecutionsApi->report_executions_retry: #{e}"
end
```

#### Using the report_executions_retry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainReportExecutionsResponseV1>, Integer, Hash)> report_executions_retry_with_http_info(body)

```ruby
begin
  # This endpoint will be used to retry report executions
  data, status_code, headers = api_instance.report_executions_retry_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainReportExecutionsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReportExecutionsApi->report_executions_retry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;DomainReportExecutionRetryRequestV1&gt;**](DomainReportExecutionRetryRequestV1.md) |  |  |

### Return type

[**DomainReportExecutionsResponseV1**](DomainReportExecutionsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


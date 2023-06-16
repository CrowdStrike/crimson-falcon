# Falcon::ScheduledReportsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**scheduled_reports_get**](ScheduledReportsApi.md#scheduled_reports_get) | **GET** /reports/entities/scheduled-reports/v1 | Retrieve scheduled reports for the provided report IDs. |
| [**scheduled_reports_launch**](ScheduledReportsApi.md#scheduled_reports_launch) | **POST** /reports/entities/scheduled-reports/execution/v1 | Launch scheduled reports executions for the provided report IDs. |
| [**scheduled_reports_query**](ScheduledReportsApi.md#scheduled_reports_query) | **GET** /reports/queries/scheduled-reports/v1 | Find all report IDs matching the query with filter |


## scheduled_reports_get

> <DomainScheduledReportsResultV1> scheduled_reports_get(ids)

Retrieve scheduled reports for the provided report IDs.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ScheduledReportsApi.new
ids = ['inner_example'] # Array<String> | The scheduled_report id to get details about.

begin
  # Retrieve scheduled reports for the provided report IDs.
  result = api_instance.scheduled_reports_get(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ScheduledReportsApi->scheduled_reports_get: #{e}"
end
```

#### Using the scheduled_reports_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainScheduledReportsResultV1>, Integer, Hash)> scheduled_reports_get_with_http_info(ids)

```ruby
begin
  # Retrieve scheduled reports for the provided report IDs.
  data, status_code, headers = api_instance.scheduled_reports_get_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainScheduledReportsResultV1>
rescue Falcon::ApiError => e
  puts "Error when calling ScheduledReportsApi->scheduled_reports_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The scheduled_report id to get details about. |  |

### Return type

[**DomainScheduledReportsResultV1**](DomainScheduledReportsResultV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scheduled_reports_launch

> <DomainReportExecutionsResponseV1> scheduled_reports_launch(body)

Launch scheduled reports executions for the provided report IDs.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ScheduledReportsApi.new
body = [Falcon::DomainReportExecutionLaunchRequestV1.new({id: 'id_example'})] # Array<DomainReportExecutionLaunchRequestV1> | 

begin
  # Launch scheduled reports executions for the provided report IDs.
  result = api_instance.scheduled_reports_launch(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ScheduledReportsApi->scheduled_reports_launch: #{e}"
end
```

#### Using the scheduled_reports_launch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainReportExecutionsResponseV1>, Integer, Hash)> scheduled_reports_launch_with_http_info(body)

```ruby
begin
  # Launch scheduled reports executions for the provided report IDs.
  data, status_code, headers = api_instance.scheduled_reports_launch_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainReportExecutionsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ScheduledReportsApi->scheduled_reports_launch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;DomainReportExecutionLaunchRequestV1&gt;**](DomainReportExecutionLaunchRequestV1.md) |  |  |

### Return type

[**DomainReportExecutionsResponseV1**](DomainReportExecutionsResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## scheduled_reports_query

> <MsaQueryResponse> scheduled_reports_query(opts)

Find all report IDs matching the query with filter

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ScheduledReportsApi.new
opts = {
  sort: 'sort_example', # String | Possible order by fields: created_on, last_updated_on, last_execution_on, next_execution_on
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Filter term criteria: type, trigger_reference, recipients, user_uuid, cid, trigger_params.metadata. Filter range criteria: created_on, modified_on; use any common date format, such as '2010-05-15T14:55:21.892315096Z'.
  q: 'q_example', # String | Match query criteria, which includes all the filter string fields
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | Number of ids to return.
}

begin
  # Find all report IDs matching the query with filter
  result = api_instance.scheduled_reports_query(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ScheduledReportsApi->scheduled_reports_query: #{e}"
end
```

#### Using the scheduled_reports_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> scheduled_reports_query_with_http_info(opts)

```ruby
begin
  # Find all report IDs matching the query with filter
  data, status_code, headers = api_instance.scheduled_reports_query_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ScheduledReportsApi->scheduled_reports_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Possible order by fields: created_on, last_updated_on, last_execution_on, next_execution_on | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Filter term criteria: type, trigger_reference, recipients, user_uuid, cid, trigger_params.metadata. Filter range criteria: created_on, modified_on; use any common date format, such as &#39;2010-05-15T14:55:21.892315096Z&#39;. | [optional] |
| **q** | **String** | Match query criteria, which includes all the filter string fields | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


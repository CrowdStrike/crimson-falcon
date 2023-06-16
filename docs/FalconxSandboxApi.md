# Falcon::FalconxSandboxApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_report**](FalconxSandboxApi.md#delete_report) | **DELETE** /falconx/entities/reports/v1 | Delete report based on the report ID. Operation can be checked for success by polling for the report ID on the report-summaries endpoint. |
| [**delete_sample_v2**](FalconxSandboxApi.md#delete_sample_v2) | **DELETE** /samples/entities/samples/v2 | Removes a sample, including file, meta and submissions from the collection |
| [**get_artifacts**](FalconxSandboxApi.md#get_artifacts) | **GET** /falconx/entities/artifacts/v1 | Download IOC packs, PCAP files, memory dumps, and other analysis artifacts. |
| [**get_memory_dump**](FalconxSandboxApi.md#get_memory_dump) | **GET** /falconx/entities/memory-dump/v1 | Get memory dump content, as binary |
| [**get_memory_dump_extracted_strings**](FalconxSandboxApi.md#get_memory_dump_extracted_strings) | **GET** /falconx/entities/memory-dump/extracted-strings/v1 | Get extracted strings from a memory dump |
| [**get_memory_dump_hex_dump**](FalconxSandboxApi.md#get_memory_dump_hex_dump) | **GET** /falconx/entities/memory-dump/hex-dump/v1 | Get hex view of a memory dump |
| [**get_reports**](FalconxSandboxApi.md#get_reports) | **GET** /falconx/entities/reports/v1 | Get a full sandbox report. |
| [**get_sample_v2**](FalconxSandboxApi.md#get_sample_v2) | **GET** /samples/entities/samples/v2 | Retrieves the file associated with the given ID (SHA256) |
| [**get_submissions**](FalconxSandboxApi.md#get_submissions) | **GET** /falconx/entities/submissions/v1 | Check the status of a sandbox analysis. Time required for analysis varies but is usually less than 15 minutes. |
| [**get_summary_reports**](FalconxSandboxApi.md#get_summary_reports) | **GET** /falconx/entities/report-summaries/v1 | Get a short summary version of a sandbox report. |
| [**query_reports**](FalconxSandboxApi.md#query_reports) | **GET** /falconx/queries/reports/v1 | Find sandbox reports by providing an FQL filter and paging details. Returns a set of report IDs that match your criteria. |
| [**query_sample_v1**](FalconxSandboxApi.md#query_sample_v1) | **POST** /samples/queries/samples/GET/v1 | Retrieves a list with sha256 of samples that exist and customer has rights to access them, maximum number of accepted items is 200 |
| [**query_submissions**](FalconxSandboxApi.md#query_submissions) | **GET** /falconx/queries/submissions/v1 | Find submission IDs for uploaded files by providing an FQL filter and paging details. Returns a set of submission IDs that match your criteria. |
| [**submit**](FalconxSandboxApi.md#submit) | **POST** /falconx/entities/submissions/v1 | Submit an uploaded file or a URL for sandbox analysis. Time required for analysis varies but is usually less than 15 minutes. |
| [**upload_sample_v2**](FalconxSandboxApi.md#upload_sample_v2) | **POST** /samples/entities/samples/v2 | Upload a file for sandbox analysis. After uploading, use &#x60;/falconx/entities/submissions/v1&#x60; to start analyzing the file. |


## delete_report

> <FalconxQueryResponse> delete_report(ids)

Delete report based on the report ID. Operation can be checked for success by polling for the report ID on the report-summaries endpoint.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
ids = 'ids_example' # String | ID of a report.

begin
  # Delete report based on the report ID. Operation can be checked for success by polling for the report ID on the report-summaries endpoint.
  result = api_instance.delete_report(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->delete_report: #{e}"
end
```

#### Using the delete_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FalconxQueryResponse>, Integer, Hash)> delete_report_with_http_info(ids)

```ruby
begin
  # Delete report based on the report ID. Operation can be checked for success by polling for the report ID on the report-summaries endpoint.
  data, status_code, headers = api_instance.delete_report_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FalconxQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->delete_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | ID of a report. |  |

### Return type

[**FalconxQueryResponse**](FalconxQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_sample_v2

> <MsaQueryResponse> delete_sample_v2(ids)

Removes a sample, including file, meta and submissions from the collection

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
ids = 'ids_example' # String | The file SHA256.

begin
  # Removes a sample, including file, meta and submissions from the collection
  result = api_instance.delete_sample_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->delete_sample_v2: #{e}"
end
```

#### Using the delete_sample_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_sample_v2_with_http_info(ids)

```ruby
begin
  # Removes a sample, including file, meta and submissions from the collection
  data, status_code, headers = api_instance.delete_sample_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->delete_sample_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The file SHA256. |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_artifacts

> <MsaspecQueryResponse> get_artifacts(id, opts)

Download IOC packs, PCAP files, memory dumps, and other analysis artifacts.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
id = 'id_example' # String | ID of an artifact, such as an IOC pack, PCAP file, memory dump, or actor image. Find an artifact ID in a report or summary.
opts = {
  name: 'name_example', # String | The name given to your downloaded file.
  accept_encoding: 'accept_encoding_example' # String | Format used to compress your downloaded file. Currently, you must provide the value `gzip`, the only valid format.
}

begin
  # Download IOC packs, PCAP files, memory dumps, and other analysis artifacts.
  result = api_instance.get_artifacts(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_artifacts: #{e}"
end
```

#### Using the get_artifacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_artifacts_with_http_info(id, opts)

```ruby
begin
  # Download IOC packs, PCAP files, memory dumps, and other analysis artifacts.
  data, status_code, headers = api_instance.get_artifacts_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_artifacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of an artifact, such as an IOC pack, PCAP file, memory dump, or actor image. Find an artifact ID in a report or summary. |  |
| **name** | **String** | The name given to your downloaded file. | [optional] |
| **accept_encoding** | **String** | Format used to compress your downloaded file. Currently, you must provide the value &#x60;gzip&#x60;, the only valid format. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/octet-stream, application/json, text/plain, text/csv, image/png, image/jpeg, application/gzip


## get_memory_dump

> <MsaspecQueryResponse> get_memory_dump(id, opts)

Get memory dump content, as binary

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
id = 'id_example' # String | Memory dump id
opts = {
  name: 'name_example', # String | The name given to your downloaded file.
  accept_encoding: 'accept_encoding_example' # String | Format used to compress your downloaded file. Currently, you must provide the value `gzip`, the only valid format.
}

begin
  # Get memory dump content, as binary
  result = api_instance.get_memory_dump(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_memory_dump: #{e}"
end
```

#### Using the get_memory_dump_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_memory_dump_with_http_info(id, opts)

```ruby
begin
  # Get memory dump content, as binary
  data, status_code, headers = api_instance.get_memory_dump_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_memory_dump_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Memory dump id |  |
| **name** | **String** | The name given to your downloaded file. | [optional] |
| **accept_encoding** | **String** | Format used to compress your downloaded file. Currently, you must provide the value &#x60;gzip&#x60;, the only valid format. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## get_memory_dump_extracted_strings

> <MsaspecQueryResponse> get_memory_dump_extracted_strings(id, opts)

Get extracted strings from a memory dump

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
id = 'id_example' # String | Extracted strings id
opts = {
  name: 'name_example', # String | The name given to your downloaded file.
  accept_encoding: 'accept_encoding_example' # String | Format used to compress your downloaded file. Currently, you must provide the value `gzip`, the only valid format.
}

begin
  # Get extracted strings from a memory dump
  result = api_instance.get_memory_dump_extracted_strings(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_memory_dump_extracted_strings: #{e}"
end
```

#### Using the get_memory_dump_extracted_strings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_memory_dump_extracted_strings_with_http_info(id, opts)

```ruby
begin
  # Get extracted strings from a memory dump
  data, status_code, headers = api_instance.get_memory_dump_extracted_strings_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_memory_dump_extracted_strings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Extracted strings id |  |
| **name** | **String** | The name given to your downloaded file. | [optional] |
| **accept_encoding** | **String** | Format used to compress your downloaded file. Currently, you must provide the value &#x60;gzip&#x60;, the only valid format. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## get_memory_dump_hex_dump

> <MsaspecQueryResponse> get_memory_dump_hex_dump(id, opts)

Get hex view of a memory dump

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
id = 'id_example' # String | Hex dump id
opts = {
  name: 'name_example', # String | The name given to your downloaded file.
  accept_encoding: 'accept_encoding_example' # String | Format used to compress your downloaded file. Currently, you must provide the value `gzip`, the only valid format.
}

begin
  # Get hex view of a memory dump
  result = api_instance.get_memory_dump_hex_dump(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_memory_dump_hex_dump: #{e}"
end
```

#### Using the get_memory_dump_hex_dump_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_memory_dump_hex_dump_with_http_info(id, opts)

```ruby
begin
  # Get hex view of a memory dump
  data, status_code, headers = api_instance.get_memory_dump_hex_dump_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_memory_dump_hex_dump_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Hex dump id |  |
| **name** | **String** | The name given to your downloaded file. | [optional] |
| **accept_encoding** | **String** | Format used to compress your downloaded file. Currently, you must provide the value &#x60;gzip&#x60;, the only valid format. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## get_reports

> <FalconxReportV1Response> get_reports(ids)

Get a full sandbox report.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
ids = ['inner_example'] # Array<String> | ID of a report. Find a report ID from the response when submitting a malware sample or search with `/falconx/queries/reports/v1`.

begin
  # Get a full sandbox report.
  result = api_instance.get_reports(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_reports: #{e}"
end
```

#### Using the get_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FalconxReportV1Response>, Integer, Hash)> get_reports_with_http_info(ids)

```ruby
begin
  # Get a full sandbox report.
  data, status_code, headers = api_instance.get_reports_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FalconxReportV1Response>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | ID of a report. Find a report ID from the response when submitting a malware sample or search with &#x60;/falconx/queries/reports/v1&#x60;. |  |

### Return type

[**FalconxReportV1Response**](FalconxReportV1Response.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sample_v2

> String get_sample_v2(ids, opts)

Retrieves the file associated with the given ID (SHA256)

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
ids = 'ids_example' # String | The file SHA256.
opts = {
  password_protected: true # Boolean | Flag whether the sample should be zipped and password protected with pass='infected'
}

begin
  # Retrieves the file associated with the given ID (SHA256)
  result = api_instance.get_sample_v2(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_sample_v2: #{e}"
end
```

#### Using the get_sample_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_sample_v2_with_http_info(ids, opts)

```ruby
begin
  # Retrieves the file associated with the given ID (SHA256)
  data, status_code, headers = api_instance.get_sample_v2_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_sample_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The file SHA256. |  |
| **password_protected** | **Boolean** | Flag whether the sample should be zipped and password protected with pass&#x3D;&#39;infected&#39; | [optional][default to false] |

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## get_submissions

> <FalconxSubmissionV1Response> get_submissions(ids)

Check the status of a sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
ids = ['inner_example'] # Array<String> | ID of a submitted malware sample. Find a submission ID from the response when submitting a malware sample or search with `/falconx/queries/submissions/v1`.

begin
  # Check the status of a sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.
  result = api_instance.get_submissions(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_submissions: #{e}"
end
```

#### Using the get_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FalconxSubmissionV1Response>, Integer, Hash)> get_submissions_with_http_info(ids)

```ruby
begin
  # Check the status of a sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.
  data, status_code, headers = api_instance.get_submissions_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FalconxSubmissionV1Response>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | ID of a submitted malware sample. Find a submission ID from the response when submitting a malware sample or search with &#x60;/falconx/queries/submissions/v1&#x60;. |  |

### Return type

[**FalconxSubmissionV1Response**](FalconxSubmissionV1Response.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_summary_reports

> <FalconxSummaryReportV1Response> get_summary_reports(ids)

Get a short summary version of a sandbox report.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
ids = ['inner_example'] # Array<String> | ID of a summary. Find a summary ID from the response when submitting a malware sample or search with `/falconx/queries/reports/v1`.

begin
  # Get a short summary version of a sandbox report.
  result = api_instance.get_summary_reports(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_summary_reports: #{e}"
end
```

#### Using the get_summary_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FalconxSummaryReportV1Response>, Integer, Hash)> get_summary_reports_with_http_info(ids)

```ruby
begin
  # Get a short summary version of a sandbox report.
  data, status_code, headers = api_instance.get_summary_reports_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FalconxSummaryReportV1Response>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->get_summary_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | ID of a summary. Find a summary ID from the response when submitting a malware sample or search with &#x60;/falconx/queries/reports/v1&#x60;. |  |

### Return type

[**FalconxSummaryReportV1Response**](FalconxSummaryReportV1Response.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_reports

> <MsaspecQueryResponse> query_reports(opts)

Find sandbox reports by providing an FQL filter and paging details. Returns a set of report IDs that match your criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
opts = {
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example', # String | The offset to start retrieving reports from.
  limit: 56, # Integer | Maximum number of report IDs to return. Max: 5000.
  sort: 'sort_example' # String | Sort order: `asc` or `desc`.
}

begin
  # Find sandbox reports by providing an FQL filter and paging details. Returns a set of report IDs that match your criteria.
  result = api_instance.query_reports(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->query_reports: #{e}"
end
```

#### Using the query_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_reports_with_http_info(opts)

```ruby
begin
  # Find sandbox reports by providing an FQL filter and paging details. Returns a set of report IDs that match your criteria.
  data, status_code, headers = api_instance.query_reports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->query_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | The offset to start retrieving reports from. | [optional] |
| **limit** | **Integer** | Maximum number of report IDs to return. Max: 5000. | [optional] |
| **sort** | **String** | Sort order: &#x60;asc&#x60; or &#x60;desc&#x60;. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_sample_v1

> <MsaQueryResponse> query_sample_v1(body)

Retrieves a list with sha256 of samples that exist and customer has rights to access them, maximum number of accepted items is 200

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
body = Falcon::ClientQuerySamplesRequest.new # ClientQuerySamplesRequest | Pass a list of sha256s to check if the exist. It will be returned the list of existing hashes.

begin
  # Retrieves a list with sha256 of samples that exist and customer has rights to access them, maximum number of accepted items is 200
  result = api_instance.query_sample_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->query_sample_v1: #{e}"
end
```

#### Using the query_sample_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_sample_v1_with_http_info(body)

```ruby
begin
  # Retrieves a list with sha256 of samples that exist and customer has rights to access them, maximum number of accepted items is 200
  data, status_code, headers = api_instance.query_sample_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->query_sample_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ClientQuerySamplesRequest**](ClientQuerySamplesRequest.md) | Pass a list of sha256s to check if the exist. It will be returned the list of existing hashes. |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_submissions

> <MsaspecQueryResponse> query_submissions(opts)

Find submission IDs for uploaded files by providing an FQL filter and paging details. Returns a set of submission IDs that match your criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
opts = {
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example', # String | The offset to start retrieving submissions from.
  limit: 56, # Integer | Maximum number of submission IDs to return. Max: 5000.
  sort: 'sort_example' # String | Sort order: `asc` or `desc`.
}

begin
  # Find submission IDs for uploaded files by providing an FQL filter and paging details. Returns a set of submission IDs that match your criteria.
  result = api_instance.query_submissions(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->query_submissions: #{e}"
end
```

#### Using the query_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_submissions_with_http_info(opts)

```ruby
begin
  # Find submission IDs for uploaded files by providing an FQL filter and paging details. Returns a set of submission IDs that match your criteria.
  data, status_code, headers = api_instance.query_submissions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->query_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | The offset to start retrieving submissions from. | [optional] |
| **limit** | **Integer** | Maximum number of submission IDs to return. Max: 5000. | [optional] |
| **sort** | **String** | Sort order: &#x60;asc&#x60; or &#x60;desc&#x60;. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit

> <FalconxSubmissionV1Response> submit(body)

Submit an uploaded file or a URL for sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
body = Falcon::FalconxSubmissionParametersV1.new # FalconxSubmissionParametersV1 | Submit either a URL or a sample SHA256 for sandbox analysis. The sample file must have been previously uploaded through `/samples/entities/samples/v2`. You must specify a JSON object that includes the `falconx.SubmissionParametersV1` key/value pairs shown below.  **`environment_id`**: Specifies the sandbox environment used for analysis. Values:  - `300`: Linux Ubuntu 16.04, 64-bit - `200`: Android (static analysis) - `160`: Windows 10, 64-bit - `110`: Windows 7, 64-bit - `100`: Windows 7, 32-bit  **`sha256`** ID of the sample, which is a SHA256 hash value. Find a sample ID from the response when uploading a malware sample or search with `/falconx/queries/submissions/v1`.The `url` parameter must be unset if `sha256` is used.  **`url`** A web page or file URL. It can be HTTP(S) or FTP. The `sha256` parameter must be unset if `url` is used.  **`action_script`** (optional): Runtime script for sandbox analysis. Values:  - `default` - `default_maxantievasion` - `default_randomfiles` - `default_randomtheme` - `default_openie`  **`command_line`** (optional): Command line script passed to the submitted file at runtime. Max length: 2048 characters  **`document_password`** (optional): Auto-filled for Adobe or Office files that prompt for a password. Max length: 32 characters  **`enable_tor`** (optional): Deprecated, please use `network_settings` instead. If `true`, sandbox analysis routes network traffic via TOR. Default: `false`.  **`network_settings`** (optional): Specifies the sandbox network_settings used for analysis. Values:  - `default`: Fully operating network - `tor`: Route network traffic via TOR - `simulated`: Simulate network traffic - `offline`: No network traffic  **`submit_name`** (optional): Name of the malware sample that's used for file type detection and analysis  **`system_date`** (optional): Set a custom date in the format `yyyy-MM-dd` for the sandbox environment  **`system_time`** (optional): Set a custom time in the format `HH:mm` for the sandbox environment.

begin
  # Submit an uploaded file or a URL for sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.
  result = api_instance.submit(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->submit: #{e}"
end
```

#### Using the submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FalconxSubmissionV1Response>, Integer, Hash)> submit_with_http_info(body)

```ruby
begin
  # Submit an uploaded file or a URL for sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.
  data, status_code, headers = api_instance.submit_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FalconxSubmissionV1Response>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FalconxSubmissionParametersV1**](FalconxSubmissionParametersV1.md) | Submit either a URL or a sample SHA256 for sandbox analysis. The sample file must have been previously uploaded through &#x60;/samples/entities/samples/v2&#x60;. You must specify a JSON object that includes the &#x60;falconx.SubmissionParametersV1&#x60; key/value pairs shown below.  **&#x60;environment_id&#x60;**: Specifies the sandbox environment used for analysis. Values:  - &#x60;300&#x60;: Linux Ubuntu 16.04, 64-bit - &#x60;200&#x60;: Android (static analysis) - &#x60;160&#x60;: Windows 10, 64-bit - &#x60;110&#x60;: Windows 7, 64-bit - &#x60;100&#x60;: Windows 7, 32-bit  **&#x60;sha256&#x60;** ID of the sample, which is a SHA256 hash value. Find a sample ID from the response when uploading a malware sample or search with &#x60;/falconx/queries/submissions/v1&#x60;.The &#x60;url&#x60; parameter must be unset if &#x60;sha256&#x60; is used.  **&#x60;url&#x60;** A web page or file URL. It can be HTTP(S) or FTP. The &#x60;sha256&#x60; parameter must be unset if &#x60;url&#x60; is used.  **&#x60;action_script&#x60;** (optional): Runtime script for sandbox analysis. Values:  - &#x60;default&#x60; - &#x60;default_maxantievasion&#x60; - &#x60;default_randomfiles&#x60; - &#x60;default_randomtheme&#x60; - &#x60;default_openie&#x60;  **&#x60;command_line&#x60;** (optional): Command line script passed to the submitted file at runtime. Max length: 2048 characters  **&#x60;document_password&#x60;** (optional): Auto-filled for Adobe or Office files that prompt for a password. Max length: 32 characters  **&#x60;enable_tor&#x60;** (optional): Deprecated, please use &#x60;network_settings&#x60; instead. If &#x60;true&#x60;, sandbox analysis routes network traffic via TOR. Default: &#x60;false&#x60;.  **&#x60;network_settings&#x60;** (optional): Specifies the sandbox network_settings used for analysis. Values:  - &#x60;default&#x60;: Fully operating network - &#x60;tor&#x60;: Route network traffic via TOR - &#x60;simulated&#x60;: Simulate network traffic - &#x60;offline&#x60;: No network traffic  **&#x60;submit_name&#x60;** (optional): Name of the malware sample that&#39;s used for file type detection and analysis  **&#x60;system_date&#x60;** (optional): Set a custom date in the format &#x60;yyyy-MM-dd&#x60; for the sandbox environment  **&#x60;system_time&#x60;** (optional): Set a custom time in the format &#x60;HH:mm&#x60; for the sandbox environment. |  |

### Return type

[**FalconxSubmissionV1Response**](FalconxSubmissionV1Response.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_sample_v2

> <ClientSampleMetadataResponseV2> upload_sample_v2(sample, file_name, opts)

Upload a file for sandbox analysis. After uploading, use `/falconx/entities/submissions/v1` to start analyzing the file.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconxSandboxApi.new
sample = File.new('/path/to/some/file') # File | Content of the uploaded sample in binary format. For example, use `--data-binary @$FILE_PATH` when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: `.exe`, `.scr`, `.pif`, `.dll`, `.com`, `.cpl`, etc. - Office documents: `.doc`, `.docx`, `.ppt`, `.pps`, `.pptx`, `.ppsx`, `.xls`, `.xlsx`, `.rtf`, `.pub` - PDF - APK - Executable JAR - Windows script component: `.sct` - Windows shortcut: `.lnk` - Windows help: `.chm` - HTML application: `.hta` - Windows script file: `.wsf` - Javascript: `.js` - Visual Basic: `.vbs`,  `.vbe` - Shockwave Flash: `.swf` - Perl: `.pl` - Powershell: `.ps1`, `.psd1`, `.psm1` - Scalable vector graphics: `.svg` - Python: `.py` - Linux ELF executables - Email files: MIME RFC 822 `.eml`, Outlook `.msg`.
file_name = 'file_name_example' # String | Name of the file.
opts = {
  comment: 'comment_example', # String | A descriptive comment to identify the file for other users.
  is_confidential: true # Boolean | Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - `true`: File is only shown to users within your customer account - `false`: File can be seen by other CrowdStrike customers   Default: `true`.
}

begin
  # Upload a file for sandbox analysis. After uploading, use `/falconx/entities/submissions/v1` to start analyzing the file.
  result = api_instance.upload_sample_v2(sample, file_name, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->upload_sample_v2: #{e}"
end
```

#### Using the upload_sample_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientSampleMetadataResponseV2>, Integer, Hash)> upload_sample_v2_with_http_info(sample, file_name, opts)

```ruby
begin
  # Upload a file for sandbox analysis. After uploading, use `/falconx/entities/submissions/v1` to start analyzing the file.
  data, status_code, headers = api_instance.upload_sample_v2_with_http_info(sample, file_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientSampleMetadataResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling FalconxSandboxApi->upload_sample_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sample** | **File** | Content of the uploaded sample in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: &#x60;.exe&#x60;, &#x60;.scr&#x60;, &#x60;.pif&#x60;, &#x60;.dll&#x60;, &#x60;.com&#x60;, &#x60;.cpl&#x60;, etc. - Office documents: &#x60;.doc&#x60;, &#x60;.docx&#x60;, &#x60;.ppt&#x60;, &#x60;.pps&#x60;, &#x60;.pptx&#x60;, &#x60;.ppsx&#x60;, &#x60;.xls&#x60;, &#x60;.xlsx&#x60;, &#x60;.rtf&#x60;, &#x60;.pub&#x60; - PDF - APK - Executable JAR - Windows script component: &#x60;.sct&#x60; - Windows shortcut: &#x60;.lnk&#x60; - Windows help: &#x60;.chm&#x60; - HTML application: &#x60;.hta&#x60; - Windows script file: &#x60;.wsf&#x60; - Javascript: &#x60;.js&#x60; - Visual Basic: &#x60;.vbs&#x60;,  &#x60;.vbe&#x60; - Shockwave Flash: &#x60;.swf&#x60; - Perl: &#x60;.pl&#x60; - Powershell: &#x60;.ps1&#x60;, &#x60;.psd1&#x60;, &#x60;.psm1&#x60; - Scalable vector graphics: &#x60;.svg&#x60; - Python: &#x60;.py&#x60; - Linux ELF executables - Email files: MIME RFC 822 &#x60;.eml&#x60;, Outlook &#x60;.msg&#x60;. |  |
| **file_name** | **String** | Name of the file. |  |
| **comment** | **String** | A descriptive comment to identify the file for other users. | [optional] |
| **is_confidential** | **Boolean** | Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;. | [optional][default to true] |

### Return type

[**ClientSampleMetadataResponseV2**](ClientSampleMetadataResponseV2.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/octet-stream
- **Accept**: application/json


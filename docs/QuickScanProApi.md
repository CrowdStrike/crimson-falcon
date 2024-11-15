# Falcon::QuickScanProApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_file**](QuickScanProApi.md#delete_file) | **DELETE** /quickscanpro/entities/files/v1 | Deletes file by its sha256 identifier. |
| [**delete_scan_result**](QuickScanProApi.md#delete_scan_result) | **DELETE** /quickscanpro/entities/scans/v1 | Deletes the result of an QuickScan Pro scan. |
| [**get_scan_result**](QuickScanProApi.md#get_scan_result) | **GET** /quickscanpro/entities/scans/v1 | Gets the result of an QuickScan Pro scan. |
| [**launch_scan**](QuickScanProApi.md#launch_scan) | **POST** /quickscanpro/entities/scans/v1 | Starts scanning a file uploaded through &#39;/quickscanpro/entities/files/v1&#39;. |
| [**query_scan_results**](QuickScanProApi.md#query_scan_results) | **GET** /quickscanpro/queries/scans/v1 | FQL query specifying the filter parameters |
| [**upload_file_quick_scan_pro**](QuickScanProApi.md#upload_file_quick_scan_pro) | **POST** /quickscanpro/entities/files/v1 | Uploads a file to be further analyzed with QuickScan Pro. The samples expire after 90 days. |


## delete_file

> <QuickscanproDeleteFileResponse> delete_file(ids)

Deletes file by its sha256 identifier.

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

api_instance = Falcon::QuickScanProApi.new
ids = ['inner_example'] # Array<String> | File's SHA256

begin
  # Deletes file by its sha256 identifier.
  result = api_instance.delete_file(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->delete_file: #{e}"
end
```

#### Using the delete_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuickscanproDeleteFileResponse>, Integer, Hash)> delete_file_with_http_info(ids)

```ruby
begin
  # Deletes file by its sha256 identifier.
  data, status_code, headers = api_instance.delete_file_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuickscanproDeleteFileResponse>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->delete_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | File&#39;s SHA256 |  |

### Return type

[**QuickscanproDeleteFileResponse**](QuickscanproDeleteFileResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_scan_result

> <MsaspecQueryResponse> delete_scan_result(ids)

Deletes the result of an QuickScan Pro scan.

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

api_instance = Falcon::QuickScanProApi.new
ids = ['inner_example'] # Array<String> | Scan job IDs previously created by LaunchScan

begin
  # Deletes the result of an QuickScan Pro scan.
  result = api_instance.delete_scan_result(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->delete_scan_result: #{e}"
end
```

#### Using the delete_scan_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> delete_scan_result_with_http_info(ids)

```ruby
begin
  # Deletes the result of an QuickScan Pro scan.
  data, status_code, headers = api_instance.delete_scan_result_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->delete_scan_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Scan job IDs previously created by LaunchScan |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scan_result

> <QuickscanproGetScanResultResponse> get_scan_result(ids)

Gets the result of an QuickScan Pro scan.

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

api_instance = Falcon::QuickScanProApi.new
ids = ['inner_example'] # Array<String> | Scan job IDs previously created by LaunchScan

begin
  # Gets the result of an QuickScan Pro scan.
  result = api_instance.get_scan_result(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->get_scan_result: #{e}"
end
```

#### Using the get_scan_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuickscanproGetScanResultResponse>, Integer, Hash)> get_scan_result_with_http_info(ids)

```ruby
begin
  # Gets the result of an QuickScan Pro scan.
  data, status_code, headers = api_instance.get_scan_result_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuickscanproGetScanResultResponse>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->get_scan_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Scan job IDs previously created by LaunchScan |  |

### Return type

[**QuickscanproGetScanResultResponse**](QuickscanproGetScanResultResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## launch_scan

> <QuickscanproLaunchScanResponse> launch_scan(body)

Starts scanning a file uploaded through '/quickscanpro/entities/files/v1'.

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

api_instance = Falcon::QuickScanProApi.new
body = Falcon::QuickscanproLaunchScanRequest.new({resources: [Falcon::QuickscanproLaunchScanRequestResource.new({sha256: 'sha256_example'})]}) # QuickscanproLaunchScanRequest | 

begin
  # Starts scanning a file uploaded through '/quickscanpro/entities/files/v1'.
  result = api_instance.launch_scan(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->launch_scan: #{e}"
end
```

#### Using the launch_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuickscanproLaunchScanResponse>, Integer, Hash)> launch_scan_with_http_info(body)

```ruby
begin
  # Starts scanning a file uploaded through '/quickscanpro/entities/files/v1'.
  data, status_code, headers = api_instance.launch_scan_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuickscanproLaunchScanResponse>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->launch_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**QuickscanproLaunchScanRequest**](QuickscanproLaunchScanRequest.md) |  |  |

### Return type

[**QuickscanproLaunchScanResponse**](QuickscanproLaunchScanResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_scan_results

> <QuickscanproQueryScanResultsResponse> query_scan_results(filter, opts)

FQL query specifying the filter parameters

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

api_instance = Falcon::QuickScanProApi.new
filter = 'filter_example' # String | Empty value means to not filter on anything Available filter fields that supports match (~): _all, mitre_attacks.description Available filter fields that supports exact match: cid,sha256,id,status,type,entity,executor,verdict,verdict_reason,verdict_source,artifacts.file_artifacts.sha256,artifacts.file_artifacts.filename,artifacts.file_artifacts.verdict,artifacts.file_artifacts.verdict_reasons,artifacts.url_artifacts.url,artifacts.url_artifacts.verdict,artifacts.url_artifacts.verdict_reasons,mitre_attacks.attack_id,mitre_attacks.attack_id_wiki,mitre_attacks.tactic,mitre_attacks.technique,mitre_attacks.capec_id,mitre_attacks.parent.attack_id,mitre_attacks.parent.attack_id_wiki,mitre_attacks.parent.technique Available filter fields that supports wildcard (*): mitre_attacks.description Available filter fields that supports range comparisons (>, <, >=, <=): created_timestamp, updated_timestamp All filter fields and operations supports negation (!). _all field is used to search between all fields.
opts = {
  offset: 56, # Integer | The offset to start retrieving ids from.
  limit: 56, # Integer | Maximum number of IDs to return. Max: 5000.
  sort: 'sort_example' # String | Sort order: `asc` or `desc`. Sort supported fields `created_timestamp`
}

begin
  # FQL query specifying the filter parameters
  result = api_instance.query_scan_results(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->query_scan_results: #{e}"
end
```

#### Using the query_scan_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuickscanproQueryScanResultsResponse>, Integer, Hash)> query_scan_results_with_http_info(filter, opts)

```ruby
begin
  # FQL query specifying the filter parameters
  data, status_code, headers = api_instance.query_scan_results_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuickscanproQueryScanResultsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->query_scan_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Empty value means to not filter on anything Available filter fields that supports match (~): _all, mitre_attacks.description Available filter fields that supports exact match: cid,sha256,id,status,type,entity,executor,verdict,verdict_reason,verdict_source,artifacts.file_artifacts.sha256,artifacts.file_artifacts.filename,artifacts.file_artifacts.verdict,artifacts.file_artifacts.verdict_reasons,artifacts.url_artifacts.url,artifacts.url_artifacts.verdict,artifacts.url_artifacts.verdict_reasons,mitre_attacks.attack_id,mitre_attacks.attack_id_wiki,mitre_attacks.tactic,mitre_attacks.technique,mitre_attacks.capec_id,mitre_attacks.parent.attack_id,mitre_attacks.parent.attack_id_wiki,mitre_attacks.parent.technique Available filter fields that supports wildcard (*): mitre_attacks.description Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): created_timestamp, updated_timestamp All filter fields and operations supports negation (!). _all field is used to search between all fields. |  |
| **offset** | **Integer** | The offset to start retrieving ids from. | [optional] |
| **limit** | **Integer** | Maximum number of IDs to return. Max: 5000. | [optional][default to 50] |
| **sort** | **String** | Sort order: &#x60;asc&#x60; or &#x60;desc&#x60;. Sort supported fields &#x60;created_timestamp&#x60; | [optional] |

### Return type

[**QuickscanproQueryScanResultsResponse**](QuickscanproQueryScanResultsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_file_quick_scan_pro

> <QuickscanproFileUploadResponse> upload_file_quick_scan_pro(file, opts)

Uploads a file to be further analyzed with QuickScan Pro. The samples expire after 90 days.

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

api_instance = Falcon::QuickScanProApi.new
file = File.new('/path/to/some/file') # File | Binary file to be uploaded. Max file size: 256 MB.
opts = {
  scan: true # Boolean | If true, after upload, it starts scanning immediately. Default scan mode is 'false'
}

begin
  # Uploads a file to be further analyzed with QuickScan Pro. The samples expire after 90 days.
  result = api_instance.upload_file_quick_scan_pro(file, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->upload_file_quick_scan_pro: #{e}"
end
```

#### Using the upload_file_quick_scan_pro_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuickscanproFileUploadResponse>, Integer, Hash)> upload_file_quick_scan_pro_with_http_info(file, opts)

```ruby
begin
  # Uploads a file to be further analyzed with QuickScan Pro. The samples expire after 90 days.
  data, status_code, headers = api_instance.upload_file_quick_scan_pro_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuickscanproFileUploadResponse>
rescue Falcon::ApiError => e
  puts "Error when calling QuickScanProApi->upload_file_quick_scan_pro_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | Binary file to be uploaded. Max file size: 256 MB. |  |
| **scan** | **Boolean** | If true, after upload, it starts scanning immediately. Default scan mode is &#39;false&#39; | [optional][default to false] |

### Return type

[**QuickscanproFileUploadResponse**](QuickscanproFileUploadResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


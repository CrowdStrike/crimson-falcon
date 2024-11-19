# Falcon::Ods

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_query_scan_host_metadata**](Ods.md#aggregate_query_scan_host_metadata) | **POST** /ods/aggregates/scan-hosts/v1 | Get aggregates on ODS scan-hosts data. |
| [**aggregate_scans**](Ods.md#aggregate_scans) | **POST** /ods/aggregates/scans/v1 | Get aggregates on ODS scan data. |
| [**aggregate_scheduled_scans**](Ods.md#aggregate_scheduled_scans) | **POST** /ods/aggregates/scheduled-scans/v1 | Get aggregates on ODS scheduled-scan data. |
| [**cancel_scans**](Ods.md#cancel_scans) | **POST** /ods/entities/scan-control-actions/cancel/v1 | Cancel ODS scans for the given scan ids. |
| [**create_scan**](Ods.md#create_scan) | **POST** /ods/entities/scans/v1 | Create ODS scan and start or schedule scan for the given scan request. |
| [**delete_scheduled_scans**](Ods.md#delete_scheduled_scans) | **DELETE** /ods/entities/scheduled-scans/v1 | Delete ODS scheduled-scans for the given scheduled-scan ids. |
| [**get_malicious_files_by_ids**](Ods.md#get_malicious_files_by_ids) | **GET** /ods/entities/malicious-files/v1 | Get malicious files by ids. |
| [**get_scan_host_metadata_by_ids**](Ods.md#get_scan_host_metadata_by_ids) | **GET** /ods/entities/scan-hosts/v1 | Get scan hosts by ids. |
| [**get_scans_by_scan_ids**](Ods.md#get_scans_by_scan_ids) | **GET** /ods/entities/scans/v1 | Get Scans by IDs. |
| [**get_scans_by_scan_ids_v2**](Ods.md#get_scans_by_scan_ids_v2) | **GET** /ods/entities/scans/v2 | Get Scans by IDs. |
| [**get_scheduled_scans_by_scan_ids**](Ods.md#get_scheduled_scans_by_scan_ids) | **GET** /ods/entities/scheduled-scans/v1 | Get ScheduledScans by IDs. |
| [**query_malicious_files**](Ods.md#query_malicious_files) | **GET** /ods/queries/malicious-files/v1 | Query malicious files. |
| [**query_scan_host_metadata**](Ods.md#query_scan_host_metadata) | **GET** /ods/queries/scan-hosts/v1 | Query scan hosts. |
| [**query_scans**](Ods.md#query_scans) | **GET** /ods/queries/scans/v1 | Query Scans. |
| [**query_scheduled_scans**](Ods.md#query_scheduled_scans) | **GET** /ods/queries/scheduled-scans/v1 | Query ScheduledScans. |
| [**schedule_scan**](Ods.md#schedule_scan) | **POST** /ods/entities/scheduled-scans/v1 | Create ODS scan and start or schedule scan for the given scan request. |


## aggregate_query_scan_host_metadata

> <MsaAggregatesResponse> aggregate_query_scan_host_metadata(body)

Get aggregates on ODS scan-hosts data.

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

api_instance = Falcon::Ods.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get aggregates on ODS scan-hosts data.
  result = api_instance.aggregate_query_scan_host_metadata(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->aggregate_query_scan_host_metadata: #{e}"
end
```

#### Using the aggregate_query_scan_host_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_query_scan_host_metadata_with_http_info(body)

```ruby
begin
  # Get aggregates on ODS scan-hosts data.
  data, status_code, headers = api_instance.aggregate_query_scan_host_metadata_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->aggregate_query_scan_host_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_scans

> <MsaAggregatesResponse> aggregate_scans(body)

Get aggregates on ODS scan data.

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

api_instance = Falcon::Ods.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get aggregates on ODS scan data.
  result = api_instance.aggregate_scans(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->aggregate_scans: #{e}"
end
```

#### Using the aggregate_scans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_scans_with_http_info(body)

```ruby
begin
  # Get aggregates on ODS scan data.
  data, status_code, headers = api_instance.aggregate_scans_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->aggregate_scans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_scheduled_scans

> <MsaAggregatesResponse> aggregate_scheduled_scans(body)

Get aggregates on ODS scheduled-scan data.

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

api_instance = Falcon::Ods.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get aggregates on ODS scheduled-scan data.
  result = api_instance.aggregate_scheduled_scans(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->aggregate_scheduled_scans: #{e}"
end
```

#### Using the aggregate_scheduled_scans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_scheduled_scans_with_http_info(body)

```ruby
begin
  # Get aggregates on ODS scheduled-scan data.
  data, status_code, headers = api_instance.aggregate_scheduled_scans_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->aggregate_scheduled_scans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_scans

> <MsaspecQueryResponse> cancel_scans(body)

Cancel ODS scans for the given scan ids.

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

api_instance = Falcon::Ods.new
body = Falcon::EntitiesODSCancelScanRequest.new({ids: ['ids_example']}) # EntitiesODSCancelScanRequest | 

begin
  # Cancel ODS scans for the given scan ids.
  result = api_instance.cancel_scans(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->cancel_scans: #{e}"
end
```

#### Using the cancel_scans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> cancel_scans_with_http_info(body)

```ruby
begin
  # Cancel ODS scans for the given scan ids.
  data, status_code, headers = api_instance.cancel_scans_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->cancel_scans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**EntitiesODSCancelScanRequest**](EntitiesODSCancelScanRequest.md) |  |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_scan

> <EntitiesODSScanResponse> create_scan(body)

Create ODS scan and start or schedule scan for the given scan request.

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

api_instance = Falcon::Ods.new
body = Falcon::EntitiesODSScanRequest.new({cloud_ml_level_detection: 37, cloud_ml_level_prevention: 37, cpu_priority: 37, description: 'description_example', endpoint_notification: false, file_paths: ['file_paths_example'], host_groups: ['host_groups_example'], hosts: ['hosts_example'], initiated_from: 'initiated_from_example', max_duration: 37, pause_duration: 37, quarantine: false, scan_exclusions: ['scan_exclusions_example'], scan_inclusions: ['scan_inclusions_example'], sensor_ml_level_detection: 37, sensor_ml_level_prevention: 37}) # EntitiesODSScanRequest | 

begin
  # Create ODS scan and start or schedule scan for the given scan request.
  result = api_instance.create_scan(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->create_scan: #{e}"
end
```

#### Using the create_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntitiesODSScanResponse>, Integer, Hash)> create_scan_with_http_info(body)

```ruby
begin
  # Create ODS scan and start or schedule scan for the given scan request.
  data, status_code, headers = api_instance.create_scan_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntitiesODSScanResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->create_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**EntitiesODSScanRequest**](EntitiesODSScanRequest.md) |  |  |

### Return type

[**EntitiesODSScanResponse**](EntitiesODSScanResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_scheduled_scans

> <MsaspecQueryResponse> delete_scheduled_scans(ids, opts)

Delete ODS scheduled-scans for the given scheduled-scan ids.

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

api_instance = Falcon::Ods.new
ids = ['inner_example'] # Array<String> | The scan IDs to retrieve the scan entities
opts = {
  filter: 'filter_example' # String | A FQL compatible query string.
}

begin
  # Delete ODS scheduled-scans for the given scheduled-scan ids.
  result = api_instance.delete_scheduled_scans(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->delete_scheduled_scans: #{e}"
end
```

#### Using the delete_scheduled_scans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> delete_scheduled_scans_with_http_info(ids, opts)

```ruby
begin
  # Delete ODS scheduled-scans for the given scheduled-scan ids.
  data, status_code, headers = api_instance.delete_scheduled_scans_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->delete_scheduled_scans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The scan IDs to retrieve the scan entities |  |
| **filter** | **String** | A FQL compatible query string. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_malicious_files_by_ids

> <EntitiesODSScanMaliciousFileResponse> get_malicious_files_by_ids(ids)

Get malicious files by ids.

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

api_instance = Falcon::Ods.new
ids = ['inner_example'] # Array<String> | The scan IDs to retrieve the scan entities

begin
  # Get malicious files by ids.
  result = api_instance.get_malicious_files_by_ids(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_malicious_files_by_ids: #{e}"
end
```

#### Using the get_malicious_files_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntitiesODSScanMaliciousFileResponse>, Integer, Hash)> get_malicious_files_by_ids_with_http_info(ids)

```ruby
begin
  # Get malicious files by ids.
  data, status_code, headers = api_instance.get_malicious_files_by_ids_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntitiesODSScanMaliciousFileResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_malicious_files_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The scan IDs to retrieve the scan entities |  |

### Return type

[**EntitiesODSScanMaliciousFileResponse**](EntitiesODSScanMaliciousFileResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scan_host_metadata_by_ids

> <EntitiesODSScanHostResponse> get_scan_host_metadata_by_ids(ids)

Get scan hosts by ids.

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

api_instance = Falcon::Ods.new
ids = ['inner_example'] # Array<String> | The scan IDs to retrieve the scan entities

begin
  # Get scan hosts by ids.
  result = api_instance.get_scan_host_metadata_by_ids(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_scan_host_metadata_by_ids: #{e}"
end
```

#### Using the get_scan_host_metadata_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntitiesODSScanHostResponse>, Integer, Hash)> get_scan_host_metadata_by_ids_with_http_info(ids)

```ruby
begin
  # Get scan hosts by ids.
  data, status_code, headers = api_instance.get_scan_host_metadata_by_ids_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntitiesODSScanHostResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_scan_host_metadata_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The scan IDs to retrieve the scan entities |  |

### Return type

[**EntitiesODSScanHostResponse**](EntitiesODSScanHostResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scans_by_scan_ids

> <EntitiesODSScanResponse> get_scans_by_scan_ids(ids)

Get Scans by IDs.

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

api_instance = Falcon::Ods.new
ids = ['inner_example'] # Array<String> | The scan IDs to retrieve the scan entities

begin
  # Get Scans by IDs.
  result = api_instance.get_scans_by_scan_ids(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_scans_by_scan_ids: #{e}"
end
```

#### Using the get_scans_by_scan_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntitiesODSScanResponse>, Integer, Hash)> get_scans_by_scan_ids_with_http_info(ids)

```ruby
begin
  # Get Scans by IDs.
  data, status_code, headers = api_instance.get_scans_by_scan_ids_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntitiesODSScanResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_scans_by_scan_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The scan IDs to retrieve the scan entities |  |

### Return type

[**EntitiesODSScanResponse**](EntitiesODSScanResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scans_by_scan_ids_v2

> <EntitiesODSScanResponseV2> get_scans_by_scan_ids_v2(ids)

Get Scans by IDs.

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

api_instance = Falcon::Ods.new
ids = ['inner_example'] # Array<String> | The scan IDs to retrieve the scan entities

begin
  # Get Scans by IDs.
  result = api_instance.get_scans_by_scan_ids_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_scans_by_scan_ids_v2: #{e}"
end
```

#### Using the get_scans_by_scan_ids_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntitiesODSScanResponseV2>, Integer, Hash)> get_scans_by_scan_ids_v2_with_http_info(ids)

```ruby
begin
  # Get Scans by IDs.
  data, status_code, headers = api_instance.get_scans_by_scan_ids_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntitiesODSScanResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_scans_by_scan_ids_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The scan IDs to retrieve the scan entities |  |

### Return type

[**EntitiesODSScanResponseV2**](EntitiesODSScanResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scheduled_scans_by_scan_ids

> <EntitiesODSScheduleScanResponse> get_scheduled_scans_by_scan_ids(ids)

Get ScheduledScans by IDs.

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

api_instance = Falcon::Ods.new
ids = ['inner_example'] # Array<String> | The scan IDs to retrieve the scan entities

begin
  # Get ScheduledScans by IDs.
  result = api_instance.get_scheduled_scans_by_scan_ids(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_scheduled_scans_by_scan_ids: #{e}"
end
```

#### Using the get_scheduled_scans_by_scan_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntitiesODSScheduleScanResponse>, Integer, Hash)> get_scheduled_scans_by_scan_ids_with_http_info(ids)

```ruby
begin
  # Get ScheduledScans by IDs.
  data, status_code, headers = api_instance.get_scheduled_scans_by_scan_ids_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntitiesODSScheduleScanResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->get_scheduled_scans_by_scan_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The scan IDs to retrieve the scan entities |  |

### Return type

[**EntitiesODSScheduleScanResponse**](EntitiesODSScheduleScanResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_malicious_files

> <MsaspecQueryResponse> query_malicious_files(opts)

Query malicious files.

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

api_instance = Falcon::Ods.new
opts = {
  filter: 'filter_example', # String | A FQL compatible query string. Terms: [id scan_id host_id host_scan_id filepath filename hash pattern_id severity quarantined last_updated]
  offset: 56, # Integer | Index of the starting resource
  limit: 56, # Integer | The max number of resources to return
  sort: 'id|asc' # String | The property to sort on, followed by a |, followed by the sort direction, either \"asc\" or \"desc\"
}

begin
  # Query malicious files.
  result = api_instance.query_malicious_files(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->query_malicious_files: #{e}"
end
```

#### Using the query_malicious_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_malicious_files_with_http_info(opts)

```ruby
begin
  # Query malicious files.
  data, status_code, headers = api_instance.query_malicious_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->query_malicious_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | A FQL compatible query string. Terms: [id scan_id host_id host_scan_id filepath filename hash pattern_id severity quarantined last_updated] | [optional] |
| **offset** | **Integer** | Index of the starting resource | [optional][default to 0] |
| **limit** | **Integer** | The max number of resources to return | [optional][default to 500] |
| **sort** | **String** | The property to sort on, followed by a |, followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot; | [optional][default to &#39;last_updated|desc&#39;] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_scan_host_metadata

> <MsaspecQueryResponse> query_scan_host_metadata(opts)

Query scan hosts.

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

api_instance = Falcon::Ods.new
opts = {
  filter: 'filter_example', # String | A FQL compatible query string. Terms: [id profile_id host_id scan_id host_scan_id filecount.scanned filecount.malicious filecount.quarantined filecount.skipped affected_hosts_count status severity completed_on started_on last_updated scan_control_reason]
  offset: 56, # Integer | Index of the starting resource
  limit: 56, # Integer | The max number of resources to return
  sort: 'id|asc' # String | The property to sort on, followed by a |, followed by the sort direction, either \"asc\" or \"desc\"
}

begin
  # Query scan hosts.
  result = api_instance.query_scan_host_metadata(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->query_scan_host_metadata: #{e}"
end
```

#### Using the query_scan_host_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_scan_host_metadata_with_http_info(opts)

```ruby
begin
  # Query scan hosts.
  data, status_code, headers = api_instance.query_scan_host_metadata_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->query_scan_host_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | A FQL compatible query string. Terms: [id profile_id host_id scan_id host_scan_id filecount.scanned filecount.malicious filecount.quarantined filecount.skipped affected_hosts_count status severity completed_on started_on last_updated scan_control_reason] | [optional] |
| **offset** | **Integer** | Index of the starting resource | [optional][default to 0] |
| **limit** | **Integer** | The max number of resources to return | [optional][default to 500] |
| **sort** | **String** | The property to sort on, followed by a |, followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot; | [optional][default to &#39;last_updated|desc&#39;] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_scans

> <MsaspecQueryResponse> query_scans(opts)

Query Scans.

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

api_instance = Falcon::Ods.new
opts = {
  filter: 'filter_example', # String | A FQL compatible query string. Terms: [id profile_id description.keyword initiated_from filecount.scanned filecount.malicious filecount.quarantined filecount.skipped affected_hosts_count status severity scan_started_on scan_completed_on created_on created_by last_updated targeted_host_count missing_host_count]
  offset: 56, # Integer | Index of the starting resource
  limit: 56, # Integer | The max number of resources to return
  sort: 'id|asc' # String | The property to sort on, followed by a |, followed by the sort direction, either \"asc\" or \"desc\"
}

begin
  # Query Scans.
  result = api_instance.query_scans(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->query_scans: #{e}"
end
```

#### Using the query_scans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_scans_with_http_info(opts)

```ruby
begin
  # Query Scans.
  data, status_code, headers = api_instance.query_scans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->query_scans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | A FQL compatible query string. Terms: [id profile_id description.keyword initiated_from filecount.scanned filecount.malicious filecount.quarantined filecount.skipped affected_hosts_count status severity scan_started_on scan_completed_on created_on created_by last_updated targeted_host_count missing_host_count] | [optional] |
| **offset** | **Integer** | Index of the starting resource | [optional][default to 0] |
| **limit** | **Integer** | The max number of resources to return | [optional][default to 500] |
| **sort** | **String** | The property to sort on, followed by a |, followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot; | [optional][default to &#39;created_on|desc&#39;] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_scheduled_scans

> <MsaspecQueryResponse> query_scheduled_scans(opts)

Query ScheduledScans.

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

api_instance = Falcon::Ods.new
opts = {
  filter: 'filter_example', # String | A FQL compatible query string. Terms: [id description initiated_from status schedule.start_timestamp schedule.Interval created_on created_by last_updated deleted]
  offset: 56, # Integer | Index of the starting resource
  limit: 56, # Integer | The max number of resources to return
  sort: 'id|asc' # String | The property to sort on, followed by a |, followed by the sort direction, either \"asc\" or \"desc\"
}

begin
  # Query ScheduledScans.
  result = api_instance.query_scheduled_scans(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->query_scheduled_scans: #{e}"
end
```

#### Using the query_scheduled_scans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_scheduled_scans_with_http_info(opts)

```ruby
begin
  # Query ScheduledScans.
  data, status_code, headers = api_instance.query_scheduled_scans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->query_scheduled_scans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | A FQL compatible query string. Terms: [id description initiated_from status schedule.start_timestamp schedule.Interval created_on created_by last_updated deleted] | [optional] |
| **offset** | **Integer** | Index of the starting resource | [optional][default to 0] |
| **limit** | **Integer** | The max number of resources to return | [optional][default to 500] |
| **sort** | **String** | The property to sort on, followed by a |, followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot; | [optional][default to &#39;schedule.start_timestamp|desc&#39;] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## schedule_scan

> <EntitiesODSScheduleScanResponse> schedule_scan(body)

Create ODS scan and start or schedule scan for the given scan request.

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

api_instance = Falcon::Ods.new
body = Falcon::EntitiesODSScheduleScanRequest.new({cloud_ml_level_detection: 37, cloud_ml_level_prevention: 37, cpu_priority: 37, description: 'description_example', endpoint_notification: false, file_paths: ['file_paths_example'], host_groups: ['host_groups_example'], initiated_from: 'initiated_from_example', max_duration: 37, max_file_size: 37, pause_duration: 37, quarantine: false, scan_exclusions: ['scan_exclusions_example'], scan_inclusions: ['scan_inclusions_example'], schedule: Falcon::DomainSchedule.new({can_stagger: false, definition: 'definition_example', display: 'display_example'}), sensor_ml_level_detection: 37, sensor_ml_level_prevention: 37}) # EntitiesODSScheduleScanRequest | 

begin
  # Create ODS scan and start or schedule scan for the given scan request.
  result = api_instance.schedule_scan(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Ods->schedule_scan: #{e}"
end
```

#### Using the schedule_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntitiesODSScheduleScanResponse>, Integer, Hash)> schedule_scan_with_http_info(body)

```ruby
begin
  # Create ODS scan and start or schedule scan for the given scan request.
  data, status_code, headers = api_instance.schedule_scan_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntitiesODSScheduleScanResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Ods->schedule_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**EntitiesODSScheduleScanRequest**](EntitiesODSScheduleScanRequest.md) |  |  |

### Return type

[**EntitiesODSScheduleScanResponse**](EntitiesODSScheduleScanResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


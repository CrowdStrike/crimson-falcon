# Falcon::DriftIndicators

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_drift_indicators_values_by_date**](DriftIndicators.md#get_drift_indicators_values_by_date) | **GET** /container-security/aggregates/drift-indicators/count-by-date/v1 | Returns the count of Drift Indicators by the date. by default it&#39;s for 7 days. |
| [**read_drift_indicator_entities**](DriftIndicators.md#read_drift_indicator_entities) | **GET** /container-security/entities/drift-indicators/v1 | Retrieve Drift Indicator entities identified by the provided IDs |
| [**read_drift_indicators_count**](DriftIndicators.md#read_drift_indicators_count) | **GET** /container-security/aggregates/drift-indicators/count/v1 | Returns the total count of Drift indicators over a time period |
| [**search_and_read_drift_indicator_entities**](DriftIndicators.md#search_and_read_drift_indicator_entities) | **GET** /container-security/combined/drift-indicators/v1 | Retrieve Drift Indicators by the provided search criteria |
| [**search_drift_indicators**](DriftIndicators.md#search_drift_indicators) | **GET** /container-security/queries/drift-indicators/v1 | Retrieve all drift indicators that match the given query |


## get_drift_indicators_values_by_date

> <DriftindicatorsDriftIndicatorsFieldValue> get_drift_indicators_values_by_date(opts)

Returns the count of Drift Indicators by the date. by default it's for 7 days.

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

api_instance = Falcon::DriftIndicators.new
opts = {
  filter: 'filter_example', # String | Filter drift indicators using a query in Falcon Query Language (FQL). Supported filters: cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name
  limit: 56 # Integer | The upper-bound on the number of records to retrieve.
}

begin
  # Returns the count of Drift Indicators by the date. by default it's for 7 days.
  result = api_instance.get_drift_indicators_values_by_date(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->get_drift_indicators_values_by_date: #{e}"
end
```

#### Using the get_drift_indicators_values_by_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DriftindicatorsDriftIndicatorsFieldValue>, Integer, Hash)> get_drift_indicators_values_by_date_with_http_info(opts)

```ruby
begin
  # Returns the count of Drift Indicators by the date. by default it's for 7 days.
  data, status_code, headers = api_instance.get_drift_indicators_values_by_date_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DriftindicatorsDriftIndicatorsFieldValue>
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->get_drift_indicators_values_by_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter drift indicators using a query in Falcon Query Language (FQL). Supported filters: cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |

### Return type

[**DriftindicatorsDriftIndicatorsFieldValue**](DriftindicatorsDriftIndicatorsFieldValue.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_drift_indicator_entities

> <DriftindicatorsDriftEntityResponse> read_drift_indicator_entities(opts)

Retrieve Drift Indicator entities identified by the provided IDs

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

api_instance = Falcon::DriftIndicators.new
opts = {
  ids: ['inner_example'] # Array<String> | Search Drift Indicators by ids - The maximum amount is 100 IDs
}

begin
  # Retrieve Drift Indicator entities identified by the provided IDs
  result = api_instance.read_drift_indicator_entities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->read_drift_indicator_entities: #{e}"
end
```

#### Using the read_drift_indicator_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DriftindicatorsDriftEntityResponse>, Integer, Hash)> read_drift_indicator_entities_with_http_info(opts)

```ruby
begin
  # Retrieve Drift Indicator entities identified by the provided IDs
  data, status_code, headers = api_instance.read_drift_indicator_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DriftindicatorsDriftEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->read_drift_indicator_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Search Drift Indicators by ids - The maximum amount is 100 IDs | [optional] |

### Return type

[**DriftindicatorsDriftEntityResponse**](DriftindicatorsDriftEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_drift_indicators_count

> <DriftindicatorsDriftIndicatorsCountValue> read_drift_indicators_count(opts)

Returns the total count of Drift indicators over a time period

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

api_instance = Falcon::DriftIndicators.new
opts = {
  filter: 'filter_example' # String | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name
}

begin
  # Returns the total count of Drift indicators over a time period
  result = api_instance.read_drift_indicators_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->read_drift_indicators_count: #{e}"
end
```

#### Using the read_drift_indicators_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DriftindicatorsDriftIndicatorsCountValue>, Integer, Hash)> read_drift_indicators_count_with_http_info(opts)

```ruby
begin
  # Returns the total count of Drift indicators over a time period
  data, status_code, headers = api_instance.read_drift_indicators_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DriftindicatorsDriftIndicatorsCountValue>
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->read_drift_indicators_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,cloud_name,command_line,container_id,file_name,file_sha256,host_id,indicator_process_id,namespace,occurred_at,parent_process_id,pod_name,prevented,scheduler_name,severity,worker_node_name | [optional] |

### Return type

[**DriftindicatorsDriftIndicatorsCountValue**](DriftindicatorsDriftIndicatorsCountValue.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_and_read_drift_indicator_entities

> <DriftindicatorsDriftEntityResponse> search_and_read_drift_indicator_entities(opts)

Retrieve Drift Indicators by the provided search criteria

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

api_instance = Falcon::DriftIndicators.new
opts = {
  filter: 'filter_example', # String | Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on.
}

begin
  # Retrieve Drift Indicators by the provided search criteria
  result = api_instance.search_and_read_drift_indicator_entities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->search_and_read_drift_indicator_entities: #{e}"
end
```

#### Using the search_and_read_drift_indicator_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DriftindicatorsDriftEntityResponse>, Integer, Hash)> search_and_read_drift_indicator_entities_with_http_info(opts)

```ruby
begin
  # Retrieve Drift Indicators by the provided search criteria
  data, status_code, headers = api_instance.search_and_read_drift_indicator_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DriftindicatorsDriftEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->search_and_read_drift_indicator_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. | [optional] |

### Return type

[**DriftindicatorsDriftEntityResponse**](DriftindicatorsDriftEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_drift_indicators

> <MsaspecQueryResponse> search_drift_indicators(opts)

Retrieve all drift indicators that match the given query

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

api_instance = Falcon::DriftIndicators.new
opts = {
  filter: 'filter_example', # String | Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on.
}

begin
  # Retrieve all drift indicators that match the given query
  result = api_instance.search_drift_indicators(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->search_drift_indicators: #{e}"
end
```

#### Using the search_drift_indicators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> search_drift_indicators_with_http_info(opts)

```ruby
begin
  # Retrieve all drift indicators that match the given query
  data, status_code, headers = api_instance.search_drift_indicators_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DriftIndicators->search_drift_indicators_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter Drift Indicators using a query in Falcon Query Language (FQL). Supported filters:  cid, cloud_name, command_line, container_id, file_name, file_sha256, host_id, indicator_process_id, namespace, occurred_at, parent_process_id, pod_name, prevented, scheduler_name, severity, worker_node_name | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


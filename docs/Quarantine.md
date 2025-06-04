# Falcon::Quarantine

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**action_update_count**](Quarantine.md#action_update_count) | **GET** /quarantine/aggregates/action-update-count/v1 | Returns count of potentially affected quarantined files for each action. |
| [**get_aggregate_files**](Quarantine.md#get_aggregate_files) | **POST** /quarantine/aggregates/quarantined-files/GET/v1 | Get quarantine file aggregates as specified via json in request body. |
| [**get_quarantine_files**](Quarantine.md#get_quarantine_files) | **POST** /quarantine/entities/quarantined-files/GET/v1 | Get quarantine file metadata for specified ids. |
| [**query_quarantine_files**](Quarantine.md#query_quarantine_files) | **GET** /quarantine/queries/quarantined-files/v1 | Get quarantine file ids that match the provided filter criteria. |
| [**update_qf_by_query**](Quarantine.md#update_qf_by_query) | **PATCH** /quarantine/queries/quarantined-files/v1 | Apply quarantine file actions by query. |
| [**update_quarantined_detects_by_ids**](Quarantine.md#update_quarantined_detects_by_ids) | **PATCH** /quarantine/entities/quarantined-files/v1 | Apply action by quarantine file ids |


## action_update_count

> <MsaAggregatesResponse> action_update_count(filter)

Returns count of potentially affected quarantined files for each action.

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

api_instance = Falcon::Quarantine.new
filter = 'filter_example' # String | FQL specifying filter parameters.

begin
  # Returns count of potentially affected quarantined files for each action.
  result = api_instance.action_update_count(filter)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->action_update_count: #{e}"
end
```

#### Using the action_update_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> action_update_count_with_http_info(filter)

```ruby
begin
  # Returns count of potentially affected quarantined files for each action.
  data, status_code, headers = api_instance.action_update_count_with_http_info(filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->action_update_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL specifying filter parameters. |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aggregate_files

> <MsaAggregatesResponse> get_aggregate_files(body)

Get quarantine file aggregates as specified via json in request body.

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

api_instance = Falcon::Quarantine.new
body = Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'}) # MsaAggregateQueryRequest | 

begin
  # Get quarantine file aggregates as specified via json in request body.
  result = api_instance.get_aggregate_files(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->get_aggregate_files: #{e}"
end
```

#### Using the get_aggregate_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> get_aggregate_files_with_http_info(body)

```ruby
begin
  # Get quarantine file aggregates as specified via json in request body.
  data, status_code, headers = api_instance.get_aggregate_files_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->get_aggregate_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaAggregateQueryRequest**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_quarantine_files

> <DomainMsaQfResponse> get_quarantine_files(body)

Get quarantine file metadata for specified ids.

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

api_instance = Falcon::Quarantine.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get quarantine file metadata for specified ids.
  result = api_instance.get_quarantine_files(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->get_quarantine_files: #{e}"
end
```

#### Using the get_quarantine_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainMsaQfResponse>, Integer, Hash)> get_quarantine_files_with_http_info(body)

```ruby
begin
  # Get quarantine file metadata for specified ids.
  data, status_code, headers = api_instance.get_quarantine_files_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainMsaQfResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->get_quarantine_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DomainMsaQfResponse**](DomainMsaQfResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_quarantine_files

> <MsaspecQueryResponse> query_quarantine_files(opts)

Get quarantine file ids that match the provided filter criteria.

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

api_instance = Falcon::Quarantine.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | Number of ids to return.
  sort: 'sort_example', # String | Possible order by fields: hostname, username, date_updated, date_created, paths.path, state, paths.state. Ex: 'date_created|asc'.
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Special value '*' means to not filter on anything. Filter term criteria: status, adversary_id, device.device_id, device.country, device.hostname, behaviors.behavior_id, behaviors.ioc_type, behaviors.ioc_value, behaviors.username, behaviors.tree_root_hash. Filter range criteria:, max_severity, max_confidence, first_behavior, last_behavior.
  q: 'q_example' # String | Match phrase_prefix query criteria; included fields: _all (all filter string fields), sha256, state, paths.path, paths.state, hostname, username, date_updated, date_created.
}

begin
  # Get quarantine file ids that match the provided filter criteria.
  result = api_instance.query_quarantine_files(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->query_quarantine_files: #{e}"
end
```

#### Using the query_quarantine_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_quarantine_files_with_http_info(opts)

```ruby
begin
  # Get quarantine file ids that match the provided filter criteria.
  data, status_code, headers = api_instance.query_quarantine_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->query_quarantine_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |
| **sort** | **String** | Possible order by fields: hostname, username, date_updated, date_created, paths.path, state, paths.state. Ex: &#39;date_created|asc&#39;. | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Special value &#39;*&#39; means to not filter on anything. Filter term criteria: status, adversary_id, device.device_id, device.country, device.hostname, behaviors.behavior_id, behaviors.ioc_type, behaviors.ioc_value, behaviors.username, behaviors.tree_root_hash. Filter range criteria:, max_severity, max_confidence, first_behavior, last_behavior. | [optional] |
| **q** | **String** | Match phrase_prefix query criteria; included fields: _all (all filter string fields), sha256, state, paths.path, paths.state, hostname, username, date_updated, date_created. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_qf_by_query

> <MsaReplyMetaOnly> update_qf_by_query(body)

Apply quarantine file actions by query.

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

api_instance = Falcon::Quarantine.new
body = Falcon::DomainQueriesPatchRequest.new # DomainQueriesPatchRequest | 

begin
  # Apply quarantine file actions by query.
  result = api_instance.update_qf_by_query(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->update_qf_by_query: #{e}"
end
```

#### Using the update_qf_by_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> update_qf_by_query_with_http_info(body)

```ruby
begin
  # Apply quarantine file actions by query.
  data, status_code, headers = api_instance.update_qf_by_query_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->update_qf_by_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainQueriesPatchRequest**](DomainQueriesPatchRequest.md) |  |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_quarantined_detects_by_ids

> <MsaReplyMetaOnly> update_quarantined_detects_by_ids(body)

Apply action by quarantine file ids

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

api_instance = Falcon::Quarantine.new
body = Falcon::DomainEntitiesPatchRequest.new # DomainEntitiesPatchRequest | 

begin
  # Apply action by quarantine file ids
  result = api_instance.update_quarantined_detects_by_ids(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->update_quarantined_detects_by_ids: #{e}"
end
```

#### Using the update_quarantined_detects_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> update_quarantined_detects_by_ids_with_http_info(body)

```ruby
begin
  # Apply action by quarantine file ids
  data, status_code, headers = api_instance.update_quarantined_detects_by_ids_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling Quarantine->update_quarantined_detects_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainEntitiesPatchRequest**](DomainEntitiesPatchRequest.md) |  |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


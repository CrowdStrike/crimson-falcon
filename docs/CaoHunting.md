# Falcon::CaoHunting

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_intelligence_queries**](CaoHunting.md#aggregate_intelligence_queries) | **POST** /hunting/aggregates/intelligence-queries/v1 | Aggregate intelligence queries |
| [**get_archive_export**](CaoHunting.md#get_archive_export) | **GET** /hunting/entities/archive-exports/v1 | Creates an Archive Export |
| [**get_intelligence_queries**](CaoHunting.md#get_intelligence_queries) | **GET** /hunting/entities/intelligence-queries/v1 | Retrieves a list of Intelligence queries |
| [**search_intelligence_queries**](CaoHunting.md#search_intelligence_queries) | **GET** /hunting/queries/intelligence-queries/v1 | Search intelligence queries that match the provided conditions |


## aggregate_intelligence_queries

> <ApiIntelligenceQueryAggregatesResponse> aggregate_intelligence_queries(body)

Aggregate intelligence queries

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

api_instance = Falcon::CaoHunting.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Aggregate intelligence queries
  result = api_instance.aggregate_intelligence_queries(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CaoHunting->aggregate_intelligence_queries: #{e}"
end
```

#### Using the aggregate_intelligence_queries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIntelligenceQueryAggregatesResponse>, Integer, Hash)> aggregate_intelligence_queries_with_http_info(body)

```ruby
begin
  # Aggregate intelligence queries
  data, status_code, headers = api_instance.aggregate_intelligence_queries_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIntelligenceQueryAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CaoHunting->aggregate_intelligence_queries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**ApiIntelligenceQueryAggregatesResponse**](ApiIntelligenceQueryAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_archive_export

> Array&lt;Integer&gt; get_archive_export(language, opts)

Creates an Archive Export

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

api_instance = Falcon::CaoHunting.new
language = 'language_example' # String | The Query Language. Accepted Values:  <li>cql</li><li>snort</li><li>suricata</li><li>yara</li>
opts = {
  filter: 'filter_example', # String | The FQL Filter
  archive_type: 'archive_type_example' # String | The Archive Type can be one of 'zip' and 'gzip'. Defaults to 'zip'.
}

begin
  # Creates an Archive Export
  result = api_instance.get_archive_export(language, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CaoHunting->get_archive_export: #{e}"
end
```

#### Using the get_archive_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_archive_export_with_http_info(language, opts)

```ruby
begin
  # Creates an Archive Export
  data, status_code, headers = api_instance.get_archive_export_with_http_info(language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue Falcon::ApiError => e
  puts "Error when calling CaoHunting->get_archive_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | The Query Language. Accepted Values:  &lt;li&gt;cql&lt;/li&gt;&lt;li&gt;snort&lt;/li&gt;&lt;li&gt;suricata&lt;/li&gt;&lt;li&gt;yara&lt;/li&gt; |  |
| **filter** | **String** | The FQL Filter | [optional] |
| **archive_type** | **String** | The Archive Type can be one of &#39;zip&#39; and &#39;gzip&#39;. Defaults to &#39;zip&#39;. | [optional] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_intelligence_queries

> <ApiIntelligenceQueryEntityResponse> get_intelligence_queries(ids)

Retrieves a list of Intelligence queries

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

api_instance = Falcon::CaoHunting.new
ids = ['inner_example'] # Array<String> | Intelligence queries IDs

begin
  # Retrieves a list of Intelligence queries
  result = api_instance.get_intelligence_queries(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CaoHunting->get_intelligence_queries: #{e}"
end
```

#### Using the get_intelligence_queries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiIntelligenceQueryEntityResponse>, Integer, Hash)> get_intelligence_queries_with_http_info(ids)

```ruby
begin
  # Retrieves a list of Intelligence queries
  data, status_code, headers = api_instance.get_intelligence_queries_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiIntelligenceQueryEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CaoHunting->get_intelligence_queries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Intelligence queries IDs |  |

### Return type

[**ApiIntelligenceQueryEntityResponse**](ApiIntelligenceQueryEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_intelligence_queries

> <MsaspecQueryResponse> search_intelligence_queries(opts)

Search intelligence queries that match the provided conditions

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

api_instance = Falcon::CaoHunting.new
opts = {
  offset: 'offset_example', # String | Starting index of result set from which to return IDs.
  limit: 56, # Integer | Number of IDs to return.
  sort: 'sort_example', # String | Order by fields.
  filter: 'filter_example', # String | FQL query specifying the filter parameters.
  q: 'q_example' # String | Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed).
}

begin
  # Search intelligence queries that match the provided conditions
  result = api_instance.search_intelligence_queries(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CaoHunting->search_intelligence_queries: #{e}"
end
```

#### Using the search_intelligence_queries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> search_intelligence_queries_with_http_info(opts)

```ruby
begin
  # Search intelligence queries that match the provided conditions
  data, status_code, headers = api_instance.search_intelligence_queries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CaoHunting->search_intelligence_queries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of result set from which to return IDs. | [optional] |
| **limit** | **Integer** | Number of IDs to return. | [optional] |
| **sort** | **String** | Order by fields. | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. | [optional] |
| **q** | **String** | Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed). | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


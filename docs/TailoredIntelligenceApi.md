# Falcon::TailoredIntelligenceApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_events_body**](TailoredIntelligenceApi.md#get_events_body) | **GET** /ti/events/entities/events-full-body/v2 | Get event body for the provided event ID |
| [**get_events_entities**](TailoredIntelligenceApi.md#get_events_entities) | **POST** /ti/events/entities/events/GET/v2 | Get events entities for specified ids. |
| [**get_rules_entities**](TailoredIntelligenceApi.md#get_rules_entities) | **POST** /ti/rules/entities/rules/GET/v2 | Get rules entities for specified ids. |
| [**query_events**](TailoredIntelligenceApi.md#query_events) | **GET** /ti/events/queries/events/v2 | Get events ids that match the provided filter criteria. |
| [**query_rules**](TailoredIntelligenceApi.md#query_rules) | **GET** /ti/rules/queries/rules/v2 | Get rules ids that match the provided filter criteria. |


## get_events_body

> Array&lt;Integer&gt; get_events_body(id)

Get event body for the provided event ID

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::TailoredIntelligenceApi.new
id = 'id_example' # String | Return the event body for event id.

begin
  # Get event body for the provided event ID
  result = api_instance.get_events_body(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->get_events_body: #{e}"
end
```

#### Using the get_events_body_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_events_body_with_http_info(id)

```ruby
begin
  # Get event body for the provided event ID
  data, status_code, headers = api_instance.get_events_body_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->get_events_body_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Return the event body for event id. |  |

### Return type

**Array&lt;Integer&gt;**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## get_events_entities

> <DomainEventEntitiesResponse> get_events_entities(body)

Get events entities for specified ids.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::TailoredIntelligenceApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get events entities for specified ids.
  result = api_instance.get_events_entities(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->get_events_entities: #{e}"
end
```

#### Using the get_events_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainEventEntitiesResponse>, Integer, Hash)> get_events_entities_with_http_info(body)

```ruby
begin
  # Get events entities for specified ids.
  data, status_code, headers = api_instance.get_events_entities_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainEventEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->get_events_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DomainEventEntitiesResponse**](DomainEventEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_rules_entities

> <DomainRuleEntitiesResponse> get_rules_entities(body)

Get rules entities for specified ids.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::TailoredIntelligenceApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get rules entities for specified ids.
  result = api_instance.get_rules_entities(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->get_rules_entities: #{e}"
end
```

#### Using the get_rules_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRuleEntitiesResponse>, Integer, Hash)> get_rules_entities_with_http_info(body)

```ruby
begin
  # Get rules entities for specified ids.
  data, status_code, headers = api_instance.get_rules_entities_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRuleEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->get_rules_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DomainRuleEntitiesResponse**](DomainRuleEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_events

> <DomainQueryResponse> query_events(opts)

Get events ids that match the provided filter criteria.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::TailoredIntelligenceApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | Number of ids to return.
  sort: 'sort_example', # String | Possible order by fields: source_type, created_date, updated_date. Ex: 'updated_date|desc'.
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Special value '*' means to not filter on anything.
  q: 'q_example' # String | Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed).
}

begin
  # Get events ids that match the provided filter criteria.
  result = api_instance.query_events(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->query_events: #{e}"
end
```

#### Using the query_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainQueryResponse>, Integer, Hash)> query_events_with_http_info(opts)

```ruby
begin
  # Get events ids that match the provided filter criteria.
  data, status_code, headers = api_instance.query_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->query_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |
| **sort** | **String** | Possible order by fields: source_type, created_date, updated_date. Ex: &#39;updated_date|desc&#39;. | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Special value &#39;*&#39; means to not filter on anything. | [optional] |
| **q** | **String** | Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed). | [optional] |

### Return type

[**DomainQueryResponse**](DomainQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rules

> <DomainQueryResponse> query_rules(opts)

Get rules ids that match the provided filter criteria.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::TailoredIntelligenceApi.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | Number of ids to return.
  sort: 'sort_example', # String | Possible order by fields: name, value, rule_type, customer_id, created_date, updated_date. Ex: 'updated_date|asc'.
  filter: 'filter_example', # String | FQL query specifying the filter parameters. Special value '*' means to not filter on anything.
  q: 'q_example' # String | Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed).
}

begin
  # Get rules ids that match the provided filter criteria.
  result = api_instance.query_rules(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->query_rules: #{e}"
end
```

#### Using the query_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainQueryResponse>, Integer, Hash)> query_rules_with_http_info(opts)

```ruby
begin
  # Get rules ids that match the provided filter criteria.
  data, status_code, headers = api_instance.query_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling TailoredIntelligenceApi->query_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |
| **sort** | **String** | Possible order by fields: name, value, rule_type, customer_id, created_date, updated_date. Ex: &#39;updated_date|asc&#39;. | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. Special value &#39;*&#39; means to not filter on anything. | [optional] |
| **q** | **String** | Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed). | [optional] |

### Return type

[**DomainQueryResponse**](DomainQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


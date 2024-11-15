# Falcon::IdentityEntities

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_sensor_aggregates**](IdentityEntities.md#get_sensor_aggregates) | **POST** /identity-protection/aggregates/devices/GET/v1 | Get sensor aggregates as specified via json in request body. |
| [**get_sensor_details**](IdentityEntities.md#get_sensor_details) | **POST** /identity-protection/entities/devices/GET/v1 | Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs. |
| [**query_sensors_by_filter**](IdentityEntities.md#query_sensors_by_filter) | **GET** /identity-protection/queries/devices/v1 | Search for sensors in your environment by hostname, IP, and other criteria. |


## get_sensor_aggregates

> <MsaAggregatesResponse> get_sensor_aggregates(body)

Get sensor aggregates as specified via json in request body.

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

api_instance = Falcon::IdentityEntities.new
body = Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'}) # MsaAggregateQueryRequest | 

begin
  # Get sensor aggregates as specified via json in request body.
  result = api_instance.get_sensor_aggregates(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IdentityEntities->get_sensor_aggregates: #{e}"
end
```

#### Using the get_sensor_aggregates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> get_sensor_aggregates_with_http_info(body)

```ruby
begin
  # Get sensor aggregates as specified via json in request body.
  data, status_code, headers = api_instance.get_sensor_aggregates_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IdentityEntities->get_sensor_aggregates_with_http_info: #{e}"
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


## get_sensor_details

> <ApiSensorDetailsResponseSwagger> get_sensor_details(body)

Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs.

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

api_instance = Falcon::IdentityEntities.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs.
  result = api_instance.get_sensor_details(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IdentityEntities->get_sensor_details: #{e}"
end
```

#### Using the get_sensor_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiSensorDetailsResponseSwagger>, Integer, Hash)> get_sensor_details_with_http_info(body)

```ruby
begin
  # Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs.
  data, status_code, headers = api_instance.get_sensor_details_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiSensorDetailsResponseSwagger>
rescue Falcon::ApiError => e
  puts "Error when calling IdentityEntities->get_sensor_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**ApiSensorDetailsResponseSwagger**](ApiSensorDetailsResponseSwagger.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_sensors_by_filter

> <MsaspecQueryResponse> query_sensors_by_filter(opts)

Search for sensors in your environment by hostname, IP, and other criteria.

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

api_instance = Falcon::IdentityEntities.new
opts = {
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-200]
  sort: 'sort_example', # String | The property to sort by (e.g. status.desc or hostname.asc)
  filter: 'filter_example' # String | The filter expression that should be used to limit the results
}

begin
  # Search for sensors in your environment by hostname, IP, and other criteria.
  result = api_instance.query_sensors_by_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IdentityEntities->query_sensors_by_filter: #{e}"
end
```

#### Using the query_sensors_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_sensors_by_filter_with_http_info(opts)

```ruby
begin
  # Search for sensors in your environment by hostname, IP, and other criteria.
  data, status_code, headers = api_instance.query_sensors_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IdentityEntities->query_sensors_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-200] | [optional] |
| **sort** | **String** | The property to sort by (e.g. status.desc or hostname.asc) | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# Falcon::ContainerAlerts

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_container_alerts_count**](ContainerAlerts.md#read_container_alerts_count) | **GET** /container-security/aggregates/container-alerts/count/v1 | Search Container Alerts by the provided search criteria |
| [**read_container_alerts_count_by_severity**](ContainerAlerts.md#read_container_alerts_count_by_severity) | **GET** /container-security/aggregates/container-alerts/count-by-severity/v1 | Get Container Alerts counts by severity |
| [**search_and_read_container_alerts**](ContainerAlerts.md#search_and_read_container_alerts) | **GET** /container-security/combined/container-alerts/v1 | Maximum offset &#x3D; 10000 - limit |


## read_container_alerts_count

> <AlertsContainerAlertsCountValue> read_container_alerts_count(opts)

Search Container Alerts by the provided search criteria

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

api_instance = Falcon::ContainerAlerts.new
opts = {
  filter: 'filter_example' # String | Search Container Alerts using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `container_id` - `last_seen`
}

begin
  # Search Container Alerts by the provided search criteria
  result = api_instance.read_container_alerts_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerAlerts->read_container_alerts_count: #{e}"
end
```

#### Using the read_container_alerts_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertsContainerAlertsCountValue>, Integer, Hash)> read_container_alerts_count_with_http_info(opts)

```ruby
begin
  # Search Container Alerts by the provided search criteria
  data, status_code, headers = api_instance.read_container_alerts_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertsContainerAlertsCountValue>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerAlerts->read_container_alerts_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search Container Alerts using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;last_seen&#x60; | [optional] |

### Return type

[**AlertsContainerAlertsCountValue**](AlertsContainerAlertsCountValue.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_container_alerts_count_by_severity

> <AlertsContainerAlertsCountValue> read_container_alerts_count_by_severity(opts)

Get Container Alerts counts by severity

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

api_instance = Falcon::ContainerAlerts.new
opts = {
  filter: 'filter_example' # String | Search Container Alerts using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `container_id` - `last_seen`
}

begin
  # Get Container Alerts counts by severity
  result = api_instance.read_container_alerts_count_by_severity(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerAlerts->read_container_alerts_count_by_severity: #{e}"
end
```

#### Using the read_container_alerts_count_by_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertsContainerAlertsCountValue>, Integer, Hash)> read_container_alerts_count_by_severity_with_http_info(opts)

```ruby
begin
  # Get Container Alerts counts by severity
  data, status_code, headers = api_instance.read_container_alerts_count_by_severity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertsContainerAlertsCountValue>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerAlerts->read_container_alerts_count_by_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search Container Alerts using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;last_seen&#x60; | [optional] |

### Return type

[**AlertsContainerAlertsCountValue**](AlertsContainerAlertsCountValue.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_and_read_container_alerts

> <AlertsContainerAlertsEntityResponse> search_and_read_container_alerts(opts)

Maximum offset = 10000 - limit

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

api_instance = Falcon::ContainerAlerts.new
opts = {
  filter: 'filter_example', # String | Search Container Alerts using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `container_id` - `last_seen` - `name` - `severity`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.search_and_read_container_alerts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerAlerts->search_and_read_container_alerts: #{e}"
end
```

#### Using the search_and_read_container_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertsContainerAlertsEntityResponse>, Integer, Hash)> search_and_read_container_alerts_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.search_and_read_container_alerts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertsContainerAlertsEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerAlerts->search_and_read_container_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search Container Alerts using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;last_seen&#x60; - &#x60;name&#x60; - &#x60;severity&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. | [optional] |

### Return type

[**AlertsContainerAlertsEntityResponse**](AlertsContainerAlertsEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# Falcon::DiscoverIotApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_iot_hosts**](DiscoverIotApi.md#get_iot_hosts) | **GET** /discover/entities/iot-hosts/v1 | Get details on IoT assets by providing one or more IDs. |
| [**query_iot_hosts**](DiscoverIotApi.md#query_iot_hosts) | **GET** /discover/queries/iot-hosts/v1 | Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria. |
| [**query_iot_hosts_v2**](DiscoverIotApi.md#query_iot_hosts_v2) | **GET** /discover/queries/iot-hosts/v2 | Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria. |


## get_iot_hosts

> <DomainDiscoverAPIIoTHostEntitiesResponse> get_iot_hosts(ids)

Get details on IoT assets by providing one or more IDs.

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

api_instance = Falcon::DiscoverIotApi.new
ids = ['inner_example'] # Array<String> | One or more asset IDs (max: 100). Find asset IDs with GET `/discover/queries/iot-hosts/v1`

begin
  # Get details on IoT assets by providing one or more IDs.
  result = api_instance.get_iot_hosts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverIotApi->get_iot_hosts: #{e}"
end
```

#### Using the get_iot_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPIIoTHostEntitiesResponse>, Integer, Hash)> get_iot_hosts_with_http_info(ids)

```ruby
begin
  # Get details on IoT assets by providing one or more IDs.
  data, status_code, headers = api_instance.get_iot_hosts_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPIIoTHostEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverIotApi->get_iot_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more asset IDs (max: 100). Find asset IDs with GET &#x60;/discover/queries/iot-hosts/v1&#x60; |  |

### Return type

[**DomainDiscoverAPIIoTHostEntitiesResponse**](DomainDiscoverAPIIoTHostEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_iot_hosts

> <MsaspecQueryResponse> query_iot_hosts(opts)

Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.

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

api_instance = Falcon::DiscoverIotApi.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort assets by their properties. A single sort field is allowed. Common sort options include:  <ul><li>hostname|asc</li><li>product_type_desc|desc</li></ul>
  filter: 'filter_example' # String | Filter assets using an FQL query. Common filter options include:<ul><li>entity_type:'managed'</li><li>product_type_desc:'Workstation'</li><li>platform_name:'Windows'</li><li>last_seen_timestamp:>'now-7d'</li></ul>    Available filter fields that support exact match: device_family, device_class, device_type, device_mode, business_criticality, line_of_business, virtual_zone, subnet, purdue_level, vlan, local_ip_addresses, mac_addresses, physical_connections_count, data_providers, local_ips_count, network_interfaces.local_ip, classification    Available filter fields that supports wildcard (*): device_family, device_class, device_type, device_mode, business_criticality, line_of_business, virtual_zone, subnet, purdue_level, vlan, local_ip_addresses, mac_addresses, data_providers    Available filter fields that supports range comparisons (>, <, >=, <=): physical_connections_count, local_ips_count    All filter fields and operations supports negation (!).
}

begin
  # Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  result = api_instance.query_iot_hosts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverIotApi->query_iot_hosts: #{e}"
end
```

#### Using the query_iot_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_iot_hosts_with_http_info(opts)

```ruby
begin
  # Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_iot_hosts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverIotApi->query_iot_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort assets by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;hostname|asc&lt;/li&gt;&lt;li&gt;product_type_desc|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter assets using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;entity_type:&#39;managed&#39;&lt;/li&gt;&lt;li&gt;product_type_desc:&#39;Workstation&#39;&lt;/li&gt;&lt;li&gt;platform_name:&#39;Windows&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: device_family, device_class, device_type, device_mode, business_criticality, line_of_business, virtual_zone, subnet, purdue_level, vlan, local_ip_addresses, mac_addresses, physical_connections_count, data_providers, local_ips_count, network_interfaces.local_ip, classification    Available filter fields that supports wildcard (*): device_family, device_class, device_type, device_mode, business_criticality, line_of_business, virtual_zone, subnet, purdue_level, vlan, local_ip_addresses, mac_addresses, data_providers    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): physical_connections_count, local_ips_count    All filter fields and operations supports negation (!). | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_iot_hosts_v2

> <DomainDiscoverAPIResponse> query_iot_hosts_v2(opts)

Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.

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

api_instance = Falcon::DiscoverIotApi.new
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the `after` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort assets by their properties. A single sort field is allowed. Common sort options include:  <ul><li>hostname|asc</li><li>product_type_desc|desc</li></ul>
  filter: 'filter_example' # String | Filter assets using an FQL query. Common filter options include:<ul><li>entity_type:'managed'</li><li>product_type_desc:'Workstation'</li><li>platform_name:'Windows'</li><li>last_seen_timestamp:>'now-7d'</li></ul>    Available filter fields that support exact match: device_family, device_class, device_type, device_mode, business_criticality, line_of_business, virtual_zone, subnet, purdue_level, vlan, local_ip_addresses, mac_addresses, physical_connections_count, data_providers    Available filter fields that supports wildcard (*): device_family, device_class, device_type, device_mode, business_criticality, line_of_business, virtual_zone, subnet, purdue_level, vlan, local_ip_addresses, mac_addresses, data_providers    Available filter fields that supports range comparisons (>, <, >=, <=): physical_connections_count    All filter fields and operations supports negation (!).
}

begin
  # Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  result = api_instance.query_iot_hosts_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverIotApi->query_iot_hosts_v2: #{e}"
end
```

#### Using the query_iot_hosts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPIResponse>, Integer, Hash)> query_iot_hosts_v2_with_http_info(opts)

```ruby
begin
  # Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_iot_hosts_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPIResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverIotApi->query_iot_hosts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;after&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort assets by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;hostname|asc&lt;/li&gt;&lt;li&gt;product_type_desc|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter assets using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;entity_type:&#39;managed&#39;&lt;/li&gt;&lt;li&gt;product_type_desc:&#39;Workstation&#39;&lt;/li&gt;&lt;li&gt;platform_name:&#39;Windows&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: device_family, device_class, device_type, device_mode, business_criticality, line_of_business, virtual_zone, subnet, purdue_level, vlan, local_ip_addresses, mac_addresses, physical_connections_count, data_providers    Available filter fields that supports wildcard (*): device_family, device_class, device_type, device_mode, business_criticality, line_of_business, virtual_zone, subnet, purdue_level, vlan, local_ip_addresses, mac_addresses, data_providers    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): physical_connections_count    All filter fields and operations supports negation (!). | [optional] |

### Return type

[**DomainDiscoverAPIResponse**](DomainDiscoverAPIResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


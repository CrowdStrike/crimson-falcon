# Falcon::Threatgraph

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**combined_edges_get**](Threatgraph.md#combined_edges_get) | **GET** /threatgraph/combined/edges/v1 | Retrieve edges for a given vertex id.  One edge type must be specified |
| [**combined_ran_on_get**](Threatgraph.md#combined_ran_on_get) | **GET** /threatgraph/combined/ran-on/v1 | Look up instances of indicators such as hashes, domain names, and ip addresses that have been seen on devices in your environment. |
| [**combined_summary_get**](Threatgraph.md#combined_summary_get) | **GET** /threatgraph/combined/{vertex-type}/summary/v1 | Retrieve summary for a given vertex ID |
| [**entities_vertices_get**](Threatgraph.md#entities_vertices_get) | **GET** /threatgraph/entities/{vertex-type}/v1 | Retrieve metadata for a given vertex ID. Note: This is a legacy endpoint used by CrowdStrike Store partners prior to release of the ThreatGraph OAuth 2.0 APIs. If you’re not currently using this endpoint, use the /v2 endpoint instead. |
| [**entities_vertices_getv2**](Threatgraph.md#entities_vertices_getv2) | **GET** /threatgraph/entities/{vertex-type}/v2 | Retrieve metadata for a given vertex ID |
| [**queries_edgetypes_get**](Threatgraph.md#queries_edgetypes_get) | **GET** /threatgraph/queries/edge-types/v1 | Show all available edge types |


## combined_edges_get

> combined_edges_get(ids, edge_type, opts)

Retrieve edges for a given vertex id.  One edge type must be specified

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

api_instance = Falcon::Threatgraph.new
ids = 'ids_example' # String | Vertex ID to get details for.  Only one value is supported
edge_type = 'attributed_by_process' # String | The type of edges that you would like to retrieve
opts = {
  limit: 56, # Integer | How many edges to return in a single request [1-100]
  offset: 'offset_example', # String | The offset to use to retrieve the next page of results
  direction: 'direction_example', # String | The direction of edges that you would like to retrieve.
  scope: 'device', # String | Scope of the request
  nano: true # Boolean | Return nano-precision entity timestamps
}

begin
  # Retrieve edges for a given vertex id.  One edge type must be specified
  api_instance.combined_edges_get(ids, edge_type, opts)
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->combined_edges_get: #{e}"
end
```

#### Using the combined_edges_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> combined_edges_get_with_http_info(ids, edge_type, opts)

```ruby
begin
  # Retrieve edges for a given vertex id.  One edge type must be specified
  data, status_code, headers = api_instance.combined_edges_get_with_http_info(ids, edge_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->combined_edges_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Vertex ID to get details for.  Only one value is supported |  |
| **edge_type** | **String** | The type of edges that you would like to retrieve |  |
| **limit** | **Integer** | How many edges to return in a single request [1-100] | [optional][default to 100] |
| **offset** | **String** | The offset to use to retrieve the next page of results | [optional] |
| **direction** | **String** | The direction of edges that you would like to retrieve. | [optional] |
| **scope** | **String** | Scope of the request | [optional][default to &#39;device&#39;] |
| **nano** | **Boolean** | Return nano-precision entity timestamps | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_ran_on_get

> combined_ran_on_get(value, type, opts)

Look up instances of indicators such as hashes, domain names, and ip addresses that have been seen on devices in your environment.

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

api_instance = Falcon::Threatgraph.new
value = 'value_example' # String | The value of the indicator to search by.
type = 'domain' # String | The type of indicator that you would like to retrieve
opts = {
  limit: 56, # Integer | How many edges to return in a single request [1-100]
  offset: 'offset_example', # String | The offset to use to retrieve the next page of results
  nano: true # Boolean | Return nano-precision entity timestamps
}

begin
  # Look up instances of indicators such as hashes, domain names, and ip addresses that have been seen on devices in your environment.
  api_instance.combined_ran_on_get(value, type, opts)
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->combined_ran_on_get: #{e}"
end
```

#### Using the combined_ran_on_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> combined_ran_on_get_with_http_info(value, type, opts)

```ruby
begin
  # Look up instances of indicators such as hashes, domain names, and ip addresses that have been seen on devices in your environment.
  data, status_code, headers = api_instance.combined_ran_on_get_with_http_info(value, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->combined_ran_on_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The value of the indicator to search by. |  |
| **type** | **String** | The type of indicator that you would like to retrieve |  |
| **limit** | **Integer** | How many edges to return in a single request [1-100] | [optional][default to 100] |
| **offset** | **String** | The offset to use to retrieve the next page of results | [optional] |
| **nano** | **Boolean** | Return nano-precision entity timestamps | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_summary_get

> combined_summary_get(vertex_type, ids, opts)

Retrieve summary for a given vertex ID

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

api_instance = Falcon::Threatgraph.new
vertex_type = 'accessory' # String | Type of vertex to get properties for
ids = ['inner_example'] # Array<String> | Vertex ID to get details for
opts = {
  scope: 'device', # String | Scope of the request
  nano: true # Boolean | Return nano-precision entity timestamps
}

begin
  # Retrieve summary for a given vertex ID
  api_instance.combined_summary_get(vertex_type, ids, opts)
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->combined_summary_get: #{e}"
end
```

#### Using the combined_summary_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> combined_summary_get_with_http_info(vertex_type, ids, opts)

```ruby
begin
  # Retrieve summary for a given vertex ID
  data, status_code, headers = api_instance.combined_summary_get_with_http_info(vertex_type, ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->combined_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vertex_type** | **String** | Type of vertex to get properties for |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | Vertex ID to get details for |  |
| **scope** | **String** | Scope of the request | [optional][default to &#39;device&#39;] |
| **nano** | **Boolean** | Return nano-precision entity timestamps | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_vertices_get

> <ThreatgraphVertexDetailsResponse> entities_vertices_get(vertex_type, ids, opts)

Retrieve metadata for a given vertex ID. Note: This is a legacy endpoint used by CrowdStrike Store partners prior to release of the ThreatGraph OAuth 2.0 APIs. If you’re not currently using this endpoint, use the /v2 endpoint instead.

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

api_instance = Falcon::Threatgraph.new
vertex_type = 'accessory' # String | Type of vertex to get properties for
ids = ['inner_example'] # Array<String> | Vertex ID to get details for
opts = {
  scope: 'device', # String | Scope of the request
  nano: true # Boolean | Return nano-precision entity timestamps
}

begin
  # Retrieve metadata for a given vertex ID. Note: This is a legacy endpoint used by CrowdStrike Store partners prior to release of the ThreatGraph OAuth 2.0 APIs. If you’re not currently using this endpoint, use the /v2 endpoint instead.
  result = api_instance.entities_vertices_get(vertex_type, ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->entities_vertices_get: #{e}"
end
```

#### Using the entities_vertices_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreatgraphVertexDetailsResponse>, Integer, Hash)> entities_vertices_get_with_http_info(vertex_type, ids, opts)

```ruby
begin
  # Retrieve metadata for a given vertex ID. Note: This is a legacy endpoint used by CrowdStrike Store partners prior to release of the ThreatGraph OAuth 2.0 APIs. If you’re not currently using this endpoint, use the /v2 endpoint instead.
  data, status_code, headers = api_instance.entities_vertices_get_with_http_info(vertex_type, ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreatgraphVertexDetailsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->entities_vertices_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vertex_type** | **String** | Type of vertex to get properties for |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | Vertex ID to get details for |  |
| **scope** | **String** | Scope of the request | [optional][default to &#39;device&#39;] |
| **nano** | **Boolean** | Return nano-precision entity timestamps | [optional][default to false] |

### Return type

[**ThreatgraphVertexDetailsResponse**](ThreatgraphVertexDetailsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_vertices_getv2

> <ThreatgraphVertexDetailsResponse> entities_vertices_getv2(vertex_type, ids, opts)

Retrieve metadata for a given vertex ID

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

api_instance = Falcon::Threatgraph.new
vertex_type = 'accessory' # String | Type of vertex to get properties for
ids = ['inner_example'] # Array<String> | Vertex ID to get details for
opts = {
  scope: 'device', # String | Scope of the request
  nano: true # Boolean | Return nano-precision entity timestamps
}

begin
  # Retrieve metadata for a given vertex ID
  result = api_instance.entities_vertices_getv2(vertex_type, ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->entities_vertices_getv2: #{e}"
end
```

#### Using the entities_vertices_getv2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreatgraphVertexDetailsResponse>, Integer, Hash)> entities_vertices_getv2_with_http_info(vertex_type, ids, opts)

```ruby
begin
  # Retrieve metadata for a given vertex ID
  data, status_code, headers = api_instance.entities_vertices_getv2_with_http_info(vertex_type, ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreatgraphVertexDetailsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->entities_vertices_getv2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vertex_type** | **String** | Type of vertex to get properties for |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | Vertex ID to get details for |  |
| **scope** | **String** | Scope of the request | [optional][default to &#39;device&#39;] |
| **nano** | **Boolean** | Return nano-precision entity timestamps | [optional][default to false] |

### Return type

[**ThreatgraphVertexDetailsResponse**](ThreatgraphVertexDetailsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## queries_edgetypes_get

> queries_edgetypes_get

Show all available edge types

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

api_instance = Falcon::Threatgraph.new

begin
  # Show all available edge types
  api_instance.queries_edgetypes_get
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->queries_edgetypes_get: #{e}"
end
```

#### Using the queries_edgetypes_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> queries_edgetypes_get_with_http_info

```ruby
begin
  # Show all available edge types
  data, status_code, headers = api_instance.queries_edgetypes_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling Threatgraph->queries_edgetypes_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


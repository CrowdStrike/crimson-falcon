# Falcon::SensorDownloadApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_sensor_installer_by_id**](SensorDownloadApi.md#download_sensor_installer_by_id) | **GET** /sensors/entities/download-installer/v1 | Download sensor installer by SHA256 ID |
| [**download_sensor_installer_by_id_v2**](SensorDownloadApi.md#download_sensor_installer_by_id_v2) | **GET** /sensors/entities/download-installer/v2 | Download sensor installer by SHA256 ID |
| [**get_combined_sensor_installers_by_query**](SensorDownloadApi.md#get_combined_sensor_installers_by_query) | **GET** /sensors/combined/installers/v1 | Get sensor installer details by provided query |
| [**get_combined_sensor_installers_by_query_v2**](SensorDownloadApi.md#get_combined_sensor_installers_by_query_v2) | **GET** /sensors/combined/installers/v2 | Get sensor installer details by provided query |
| [**get_sensor_installers_by_query**](SensorDownloadApi.md#get_sensor_installers_by_query) | **GET** /sensors/queries/installers/v1 | Get sensor installer IDs by provided query |
| [**get_sensor_installers_by_query_v2**](SensorDownloadApi.md#get_sensor_installers_by_query_v2) | **GET** /sensors/queries/installers/v2 | Get sensor installer IDs by provided query |
| [**get_sensor_installers_ccidby_query**](SensorDownloadApi.md#get_sensor_installers_ccidby_query) | **GET** /sensors/queries/installers/ccid/v1 | Get CCID to use with sensor installers |
| [**get_sensor_installers_entities**](SensorDownloadApi.md#get_sensor_installers_entities) | **GET** /sensors/entities/installers/v1 | Get sensor installer details by provided SHA256 IDs |
| [**get_sensor_installers_entities_v2**](SensorDownloadApi.md#get_sensor_installers_entities_v2) | **GET** /sensors/entities/installers/v2 | Get sensor installer details by provided SHA256 IDs |


## download_sensor_installer_by_id

> File download_sensor_installer_by_id(id)

Download sensor installer by SHA256 ID

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

api_instance = Falcon::SensorDownloadApi.new
id = 'id_example' # String | SHA256 of the installer to download

begin
  # Download sensor installer by SHA256 ID
  result = api_instance.download_sensor_installer_by_id(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->download_sensor_installer_by_id: #{e}"
end
```

#### Using the download_sensor_installer_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_sensor_installer_by_id_with_http_info(id)

```ruby
begin
  # Download sensor installer by SHA256 ID
  data, status_code, headers = api_instance.download_sensor_installer_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->download_sensor_installer_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | SHA256 of the installer to download |  |

### Return type

**File**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## download_sensor_installer_by_id_v2

> File download_sensor_installer_by_id_v2(id)

Download sensor installer by SHA256 ID

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

api_instance = Falcon::SensorDownloadApi.new
id = 'id_example' # String | SHA256 of the installer to download

begin
  # Download sensor installer by SHA256 ID
  result = api_instance.download_sensor_installer_by_id_v2(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->download_sensor_installer_by_id_v2: #{e}"
end
```

#### Using the download_sensor_installer_by_id_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_sensor_installer_by_id_v2_with_http_info(id)

```ruby
begin
  # Download sensor installer by SHA256 ID
  data, status_code, headers = api_instance.download_sensor_installer_by_id_v2_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->download_sensor_installer_by_id_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | SHA256 of the installer to download |  |

### Return type

**File**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## get_combined_sensor_installers_by_query

> <DomainSensorInstallersV1> get_combined_sensor_installers_by_query(opts)

Get sensor installer details by provided query

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

api_instance = Falcon::SensorDownloadApi.new
opts = {
  offset: 56, # Integer | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
  limit: 56, # Integer | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort items using their properties. Common sort options include:  <ul><li>version|asc</li><li>release_date|desc</li></ul>
  filter: 'filter_example' # String | Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: <ul><li>platform:\"windows\"</li><li>version:>\"5.2\"</li></ul>
}

begin
  # Get sensor installer details by provided query
  result = api_instance.get_combined_sensor_installers_by_query(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_combined_sensor_installers_by_query: #{e}"
end
```

#### Using the get_combined_sensor_installers_by_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSensorInstallersV1>, Integer, Hash)> get_combined_sensor_installers_by_query_with_http_info(opts)

```ruby
begin
  # Get sensor installer details by provided query
  data, status_code, headers = api_instance.get_combined_sensor_installers_by_query_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSensorInstallersV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_combined_sensor_installers_by_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**DomainSensorInstallersV1**](DomainSensorInstallersV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_combined_sensor_installers_by_query_v2

> <DomainSensorInstallersV2> get_combined_sensor_installers_by_query_v2(opts)

Get sensor installer details by provided query

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

api_instance = Falcon::SensorDownloadApi.new
opts = {
  offset: 56, # Integer | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
  limit: 56, # Integer | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort items using their properties. Common sort options include:  <ul><li>version|asc</li><li>release_date|desc</li></ul>
  filter: 'filter_example' # String | Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: <ul><li>platform:\"windows\"</li><li>version:>\"5.2\"</li></ul>
}

begin
  # Get sensor installer details by provided query
  result = api_instance.get_combined_sensor_installers_by_query_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_combined_sensor_installers_by_query_v2: #{e}"
end
```

#### Using the get_combined_sensor_installers_by_query_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSensorInstallersV2>, Integer, Hash)> get_combined_sensor_installers_by_query_v2_with_http_info(opts)

```ruby
begin
  # Get sensor installer details by provided query
  data, status_code, headers = api_instance.get_combined_sensor_installers_by_query_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSensorInstallersV2>
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_combined_sensor_installers_by_query_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**DomainSensorInstallersV2**](DomainSensorInstallersV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sensor_installers_by_query

> <MsaspecQueryResponse> get_sensor_installers_by_query(opts)

Get sensor installer IDs by provided query

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

api_instance = Falcon::SensorDownloadApi.new
opts = {
  offset: 56, # Integer | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
  limit: 56, # Integer | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort items using their properties. Common sort options include:  <ul><li>version|asc</li><li>release_date|desc</li></ul>
  filter: 'filter_example' # String | Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: <ul><li>platform:\"windows\"</li><li>version:>\"5.2\"</li></ul>
}

begin
  # Get sensor installer IDs by provided query
  result = api_instance.get_sensor_installers_by_query(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_by_query: #{e}"
end
```

#### Using the get_sensor_installers_by_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_sensor_installers_by_query_with_http_info(opts)

```ruby
begin
  # Get sensor installer IDs by provided query
  data, status_code, headers = api_instance.get_sensor_installers_by_query_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_by_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sensor_installers_by_query_v2

> <MsaspecQueryResponse> get_sensor_installers_by_query_v2(opts)

Get sensor installer IDs by provided query

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

api_instance = Falcon::SensorDownloadApi.new
opts = {
  offset: 56, # Integer | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
  limit: 56, # Integer | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort items using their properties. Common sort options include:  <ul><li>version|asc</li><li>release_date|desc</li></ul>
  filter: 'filter_example' # String | Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: <ul><li>platform:\"windows\"</li><li>version:>\"5.2\"</li></ul>
}

begin
  # Get sensor installer IDs by provided query
  result = api_instance.get_sensor_installers_by_query_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_by_query_v2: #{e}"
end
```

#### Using the get_sensor_installers_by_query_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_sensor_installers_by_query_v2_with_http_info(opts)

```ruby
begin
  # Get sensor installer IDs by provided query
  data, status_code, headers = api_instance.get_sensor_installers_by_query_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_by_query_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sensor_installers_ccidby_query

> <MsaspecQueryResponse> get_sensor_installers_ccidby_query

Get CCID to use with sensor installers

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

api_instance = Falcon::SensorDownloadApi.new

begin
  # Get CCID to use with sensor installers
  result = api_instance.get_sensor_installers_ccidby_query
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_ccidby_query: #{e}"
end
```

#### Using the get_sensor_installers_ccidby_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_sensor_installers_ccidby_query_with_http_info

```ruby
begin
  # Get CCID to use with sensor installers
  data, status_code, headers = api_instance.get_sensor_installers_ccidby_query_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_ccidby_query_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sensor_installers_entities

> <DomainSensorInstallersV1> get_sensor_installers_entities(ids)

Get sensor installer details by provided SHA256 IDs

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

api_instance = Falcon::SensorDownloadApi.new
ids = ['inner_example'] # Array<String> | The IDs of the installers

begin
  # Get sensor installer details by provided SHA256 IDs
  result = api_instance.get_sensor_installers_entities(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_entities: #{e}"
end
```

#### Using the get_sensor_installers_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSensorInstallersV1>, Integer, Hash)> get_sensor_installers_entities_with_http_info(ids)

```ruby
begin
  # Get sensor installer details by provided SHA256 IDs
  data, status_code, headers = api_instance.get_sensor_installers_entities_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSensorInstallersV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the installers |  |

### Return type

[**DomainSensorInstallersV1**](DomainSensorInstallersV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sensor_installers_entities_v2

> <DomainSensorInstallersV2> get_sensor_installers_entities_v2(ids)

Get sensor installer details by provided SHA256 IDs

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

api_instance = Falcon::SensorDownloadApi.new
ids = ['inner_example'] # Array<String> | The IDs of the installers

begin
  # Get sensor installer details by provided SHA256 IDs
  result = api_instance.get_sensor_installers_entities_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_entities_v2: #{e}"
end
```

#### Using the get_sensor_installers_entities_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSensorInstallersV2>, Integer, Hash)> get_sensor_installers_entities_v2_with_http_info(ids)

```ruby
begin
  # Get sensor installer details by provided SHA256 IDs
  data, status_code, headers = api_instance.get_sensor_installers_entities_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSensorInstallersV2>
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_entities_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the installers |  |

### Return type

[**DomainSensorInstallersV2**](DomainSensorInstallersV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


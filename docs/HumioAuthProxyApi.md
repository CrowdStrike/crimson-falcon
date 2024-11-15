# Falcon::HumioAuthProxyApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_lookup_from_package_v1**](HumioAuthProxyApi.md#get_lookup_from_package_v1) | **GET** /humio/api/v1/repositories/{repository}/files/{package}/{filename} | Download lookup file in package from NGSIEM |
| [**get_lookup_from_package_with_namespace_v1**](HumioAuthProxyApi.md#get_lookup_from_package_with_namespace_v1) | **GET** /humio/api/v1/repositories/{repository}/files/{namespace}/{package}/{filename} | Download lookup file in namespaced package from NGSIEM |
| [**get_lookup_v1**](HumioAuthProxyApi.md#get_lookup_v1) | **GET** /humio/api/v1/repositories/{repository}/files/{filename} | Download lookup file from NGSIEM |
| [**get_search_status_v1**](HumioAuthProxyApi.md#get_search_status_v1) | **GET** /humio/api/v1/repositories/{repository}/queryjobs/{id} | Get status of search |
| [**start_search_v1**](HumioAuthProxyApi.md#start_search_v1) | **POST** /humio/api/v1/repositories/{repository}/queryjobs | Initiate search |
| [**stop_search_v1**](HumioAuthProxyApi.md#stop_search_v1) | **DELETE** /humio/api/v1/repositories/{repository}/queryjobs/{id} | Stop search |
| [**upload_lookup_v1**](HumioAuthProxyApi.md#upload_lookup_v1) | **POST** /humio/api/v1/repositories/{repository}/files | Upload file to NGSIEM |


## get_lookup_from_package_v1

> get_lookup_from_package_v1(repository, package, filename)

Download lookup file in package from NGSIEM

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

api_instance = Falcon::HumioAuthProxyApi.new
repository = 'repository_example' # String | name of repository
package = 'package_example' # String | name of package
filename = 'filename_example' # String | name of lookup file

begin
  # Download lookup file in package from NGSIEM
  api_instance.get_lookup_from_package_v1(repository, package, filename)
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->get_lookup_from_package_v1: #{e}"
end
```

#### Using the get_lookup_from_package_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_lookup_from_package_v1_with_http_info(repository, package, filename)

```ruby
begin
  # Download lookup file in package from NGSIEM
  data, status_code, headers = api_instance.get_lookup_from_package_v1_with_http_info(repository, package, filename)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->get_lookup_from_package_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | name of repository |  |
| **package** | **String** | name of package |  |
| **filename** | **String** | name of lookup file |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_lookup_from_package_with_namespace_v1

> get_lookup_from_package_with_namespace_v1(repository, namespace, package, filename)

Download lookup file in namespaced package from NGSIEM

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

api_instance = Falcon::HumioAuthProxyApi.new
repository = 'repository_example' # String | name of repository
namespace = 'namespace_example' # String | name of namespace
package = 'package_example' # String | name of package
filename = 'filename_example' # String | name of lookup file

begin
  # Download lookup file in namespaced package from NGSIEM
  api_instance.get_lookup_from_package_with_namespace_v1(repository, namespace, package, filename)
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->get_lookup_from_package_with_namespace_v1: #{e}"
end
```

#### Using the get_lookup_from_package_with_namespace_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_lookup_from_package_with_namespace_v1_with_http_info(repository, namespace, package, filename)

```ruby
begin
  # Download lookup file in namespaced package from NGSIEM
  data, status_code, headers = api_instance.get_lookup_from_package_with_namespace_v1_with_http_info(repository, namespace, package, filename)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->get_lookup_from_package_with_namespace_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | name of repository |  |
| **namespace** | **String** | name of namespace |  |
| **package** | **String** | name of package |  |
| **filename** | **String** | name of lookup file |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_lookup_v1

> get_lookup_v1(repository, filename)

Download lookup file from NGSIEM

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

api_instance = Falcon::HumioAuthProxyApi.new
repository = 'repository_example' # String | name of repository
filename = 'filename_example' # String | name of lookup file

begin
  # Download lookup file from NGSIEM
  api_instance.get_lookup_v1(repository, filename)
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->get_lookup_v1: #{e}"
end
```

#### Using the get_lookup_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_lookup_v1_with_http_info(repository, filename)

```ruby
begin
  # Download lookup file from NGSIEM
  data, status_code, headers = api_instance.get_lookup_v1_with_http_info(repository, filename)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->get_lookup_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | name of repository |  |
| **filename** | **String** | name of lookup file |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_search_status_v1

> <MsaspecResponseFields> get_search_status_v1(repository, id)

Get status of search

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

api_instance = Falcon::HumioAuthProxyApi.new
repository = 'repository_example' # String | name of repository
id = 'id_example' # String | id of query

begin
  # Get status of search
  result = api_instance.get_search_status_v1(repository, id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->get_search_status_v1: #{e}"
end
```

#### Using the get_search_status_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> get_search_status_v1_with_http_info(repository, id)

```ruby
begin
  # Get status of search
  data, status_code, headers = api_instance.get_search_status_v1_with_http_info(repository, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->get_search_status_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | name of repository |  |
| **id** | **String** | id of query |  |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/plain, text/html, application/x-ndjson


## start_search_v1

> start_search_v1(repository)

Initiate search

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

api_instance = Falcon::HumioAuthProxyApi.new
repository = 'repository_example' # String | name of repository

begin
  # Initiate search
  api_instance.start_search_v1(repository)
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->start_search_v1: #{e}"
end
```

#### Using the start_search_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> start_search_v1_with_http_info(repository)

```ruby
begin
  # Initiate search
  data, status_code, headers = api_instance.start_search_v1_with_http_info(repository)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->start_search_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | name of repository |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/plain, text/html


## stop_search_v1

> stop_search_v1(repository, id)

Stop search

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

api_instance = Falcon::HumioAuthProxyApi.new
repository = 'repository_example' # String | name of repository
id = 'id_example' # String | id of query

begin
  # Stop search
  api_instance.stop_search_v1(repository, id)
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->stop_search_v1: #{e}"
end
```

#### Using the stop_search_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> stop_search_v1_with_http_info(repository, id)

```ruby
begin
  # Stop search
  data, status_code, headers = api_instance.stop_search_v1_with_http_info(repository, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->stop_search_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | name of repository |  |
| **id** | **String** | id of query |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/json


## upload_lookup_v1

> upload_lookup_v1(repository)

Upload file to NGSIEM

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

api_instance = Falcon::HumioAuthProxyApi.new
repository = 'repository_example' # String | name of repository

begin
  # Upload file to NGSIEM
  api_instance.upload_lookup_v1(repository)
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->upload_lookup_v1: #{e}"
end
```

#### Using the upload_lookup_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> upload_lookup_v1_with_http_info(repository)

```ruby
begin
  # Upload file to NGSIEM
  data, status_code, headers = api_instance.upload_lookup_v1_with_http_info(repository)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling HumioAuthProxyApi->upload_lookup_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | name of repository |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/json

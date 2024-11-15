# Falcon::DatascannerApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_data_scanner_tasks**](DatascannerApi.md#get_data_scanner_tasks) | **GET** /data-security-dspm/entities/scanner-tasks/v1 |  |
| [**get_image_registry_credentials**](DatascannerApi.md#get_image_registry_credentials) | **GET** /data-security-dspm/entities/image-registry-credentials/v1 |  |
| [**update_data_scanner_tasks**](DatascannerApi.md#update_data_scanner_tasks) | **PATCH** /data-security-dspm/entities/scanner-tasks/v1 |  |


## get_data_scanner_tasks

> Hash&lt;String, String&gt; get_data_scanner_tasks(x_scanner_id)



- GetDataScannerTasks is a route for the data scanner to fetch pending tasks

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

api_instance = Falcon::DatascannerApi.new
x_scanner_id = 'x_scanner_id_example' # String | ID of the data scanner

begin
  
  result = api_instance.get_data_scanner_tasks(x_scanner_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DatascannerApi->get_data_scanner_tasks: #{e}"
end
```

#### Using the get_data_scanner_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> get_data_scanner_tasks_with_http_info(x_scanner_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_data_scanner_tasks_with_http_info(x_scanner_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue Falcon::ApiError => e
  puts "Error when calling DatascannerApi->get_data_scanner_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_scanner_id** | **String** | ID of the data scanner |  |

### Return type

**Hash&lt;String, String&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_image_registry_credentials

> Hash&lt;String, String&gt; get_image_registry_credentials



- GetImageRegistryCredentials is a route that gets credentials in order to fetch the data scanner image.

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

api_instance = Falcon::DatascannerApi.new

begin
  
  result = api_instance.get_image_registry_credentials
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DatascannerApi->get_image_registry_credentials: #{e}"
end
```

#### Using the get_image_registry_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> get_image_registry_credentials_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_image_registry_credentials_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue Falcon::ApiError => e
  puts "Error when calling DatascannerApi->get_image_registry_credentials_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, String&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_data_scanner_tasks

> Hash&lt;String, String&gt; update_data_scanner_tasks(x_scanner_id, x_machine_id)



- PatchDataScannerTasks is a route for the data scanner to report back on tasks statuses

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

api_instance = Falcon::DatascannerApi.new
x_scanner_id = 'x_scanner_id_example' # String | ID of the data scanner
x_machine_id = 'x_machine_id_example' # String | Provider ID of machine

begin
  
  result = api_instance.update_data_scanner_tasks(x_scanner_id, x_machine_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DatascannerApi->update_data_scanner_tasks: #{e}"
end
```

#### Using the update_data_scanner_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> update_data_scanner_tasks_with_http_info(x_scanner_id, x_machine_id)

```ruby
begin
  
  data, status_code, headers = api_instance.update_data_scanner_tasks_with_http_info(x_scanner_id, x_machine_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue Falcon::ApiError => e
  puts "Error when calling DatascannerApi->update_data_scanner_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_scanner_id** | **String** | ID of the data scanner |  |
| **x_machine_id** | **String** | Provider ID of machine |  |

### Return type

**Hash&lt;String, String&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


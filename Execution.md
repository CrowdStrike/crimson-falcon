# Falcon::Execution

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_request_body**](Execution.md#read_request_body) | **GET** /faas-gateway/entities/execution-request-body/v2 | retrieve a large request body, such as a file, that has spilled into object storage |


## read_request_body

> Object read_request_body(id, fn, filename, sha256)

retrieve a large request body, such as a file, that has spilled into object storage

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

api_instance = Falcon::Execution.new
id = 'id_example' # String | Execution ID
fn = 'fn_example' # String | function ref; form of $fn_id:$fn_version
filename = 'filename_example' # String | filename to be retrieved
sha256 = 'sha256_example' # String | sha256 checksum for file to be retrieved

begin
  # retrieve a large request body, such as a file, that has spilled into object storage
  result = api_instance.read_request_body(id, fn, filename, sha256)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Execution->read_request_body: #{e}"
end
```

#### Using the read_request_body_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> read_request_body_with_http_info(id, fn, filename, sha256)

```ruby
begin
  # retrieve a large request body, such as a file, that has spilled into object storage
  data, status_code, headers = api_instance.read_request_body_with_http_info(id, fn, filename, sha256)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Falcon::ApiError => e
  puts "Error when calling Execution->read_request_body_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Execution ID |  |
| **fn** | **String** | function ref; form of $fn_id:$fn_version |  |
| **filename** | **String** | filename to be retrieved |  |
| **sha256** | **String** | sha256 checksum for file to be retrieved |  |

### Return type

**Object**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv, text/plain, application/octet-stream, application/json


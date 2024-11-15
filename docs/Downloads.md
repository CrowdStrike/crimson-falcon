# Falcon::Downloads

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_file**](Downloads.md#download_file) | **GET** /csdownloads/entities/files/download/v1 | Gets pre-signed URL for the file |


## download_file

> <CommonEntitiesResponse> download_file(file_name, file_version)

Gets pre-signed URL for the file

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

api_instance = Falcon::Downloads.new
file_name = 'file_name_example' # String | Name of the file to be downloaded
file_version = 'file_version_example' # String | Version of the file to be downloaded

begin
  # Gets pre-signed URL for the file
  result = api_instance.download_file(file_name, file_version)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Downloads->download_file: #{e}"
end
```

#### Using the download_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonEntitiesResponse>, Integer, Hash)> download_file_with_http_info(file_name, file_version)

```ruby
begin
  # Gets pre-signed URL for the file
  data, status_code, headers = api_instance.download_file_with_http_info(file_name, file_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Downloads->download_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_name** | **String** | Name of the file to be downloaded |  |
| **file_version** | **String** | Version of the file to be downloaded |  |

### Return type

[**CommonEntitiesResponse**](CommonEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


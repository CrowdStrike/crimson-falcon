# Falcon::LookupFiles

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_file_v1**](LookupFiles.md#create_file_v1) | **POST** /loggingapi/entities/lookup-files/v1 | Creates a lookup file |
| [**update_file_v1**](LookupFiles.md#update_file_v1) | **PATCH** /loggingapi/entities/lookup-files/v1 | Updates a lookup file |


## create_file_v1

> <DomainLookupFileWrapper> create_file_v1(file, name, opts)

Creates a lookup file

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

api_instance = Falcon::LookupFiles.new
file = File.new('/path/to/some/file') # File | File to be uploaded
name = 'name_example' # String | Name used to identify the file
opts = {
  description: 'description_example', # String | File description
  id: 'id_example', # String | Unique identifier of the file being updated.
  repo: 'repo_example' # String | Name of repository or view to save the file
}

begin
  # Creates a lookup file
  result = api_instance.create_file_v1(file, name, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling LookupFiles->create_file_v1: #{e}"
end
```

#### Using the create_file_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainLookupFileWrapper>, Integer, Hash)> create_file_v1_with_http_info(file, name, opts)

```ruby
begin
  # Creates a lookup file
  data, status_code, headers = api_instance.create_file_v1_with_http_info(file, name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainLookupFileWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling LookupFiles->create_file_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File to be uploaded |  |
| **name** | **String** | Name used to identify the file |  |
| **description** | **String** | File description | [optional] |
| **id** | **String** | Unique identifier of the file being updated. | [optional] |
| **repo** | **String** | Name of repository or view to save the file | [optional] |

### Return type

[**DomainLookupFileWrapper**](DomainLookupFileWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## update_file_v1

> <DomainLookupFileWrapper> update_file_v1(id, opts)

Updates a lookup file

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

api_instance = Falcon::LookupFiles.new
id = 'id_example' # String | Unique identifier of the file being updated.
opts = {
  description: 'description_example', # String | File description
  file: File.new('/path/to/some/file') # File | File to be uploaded
}

begin
  # Updates a lookup file
  result = api_instance.update_file_v1(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling LookupFiles->update_file_v1: #{e}"
end
```

#### Using the update_file_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainLookupFileWrapper>, Integer, Hash)> update_file_v1_with_http_info(id, opts)

```ruby
begin
  # Updates a lookup file
  data, status_code, headers = api_instance.update_file_v1_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainLookupFileWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling LookupFiles->update_file_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the file being updated. |  |
| **description** | **String** | File description | [optional] |
| **file** | **File** | File to be uploaded | [optional] |

### Return type

[**DomainLookupFileWrapper**](DomainLookupFileWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


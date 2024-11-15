# Falcon::SampleUploadsApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**archive_delete_v1**](SampleUploadsApi.md#archive_delete_v1) | **DELETE** /archives/entities/archives/v1 | Delete an archive that was uploaded previously |
| [**archive_get_v1**](SampleUploadsApi.md#archive_get_v1) | **GET** /archives/entities/archives/v1 | Retrieves the archives upload operation statuses. Status &#x60;done&#x60; means that archive was processed successfully. Status &#x60;error&#x60; means that archive was not processed successfully. |
| [**archive_list_v1**](SampleUploadsApi.md#archive_list_v1) | **GET** /archives/entities/archive-files/v1 | Retrieves the archives files in chunks. |
| [**archive_upload_v1**](SampleUploadsApi.md#archive_upload_v1) | **POST** /archives/entities/archives/v1 | Uploads an archive and extracts files list from it. Operation is asynchronous use &#x60;/archives/entities/archives/v1&#x60; to check the status. After uploading, use &#x60;/archives/entities/extractions/v1&#x60; to copy the file to internal storage making it available for content analysis. This method is deprecated in favor of &#x60;/archives/entities/archives/v2&#x60; |
| [**archive_upload_v2**](SampleUploadsApi.md#archive_upload_v2) | **POST** /archives/entities/archives/v2 | Uploads an archive and extracts files list from it. Operation is asynchronous use &#x60;/archives/entities/archives/v1&#x60; to check the status. After uploading, use &#x60;/archives/entities/extractions/v1&#x60; to copy the file to internal storage making it available for content analysis. |
| [**delete_sample_v3**](SampleUploadsApi.md#delete_sample_v3) | **DELETE** /samples/entities/samples/v3 | Removes a sample, including file, meta and submissions from the collection |
| [**extraction_create_v1**](SampleUploadsApi.md#extraction_create_v1) | **POST** /archives/entities/extractions/v1 | Extracts files from an uploaded archive and copies them to internal storage making it available for content analysis. |
| [**extraction_get_v1**](SampleUploadsApi.md#extraction_get_v1) | **GET** /archives/entities/extractions/v1 | Retrieves the files extraction operation statuses. Status &#x60;done&#x60; means that all files were processed successfully. Status &#x60;error&#x60; means that at least one of the file could not be processed. |
| [**extraction_list_v1**](SampleUploadsApi.md#extraction_list_v1) | **GET** /archives/entities/extraction-files/v1 | Retrieves the files extractions in chunks. Status &#x60;done&#x60; means that all files were processed successfully. Status &#x60;error&#x60; means that at least one of the file could not be processed. |
| [**get_sample_v3**](SampleUploadsApi.md#get_sample_v3) | **GET** /samples/entities/samples/v3 | Retrieves the file associated with the given ID (SHA256) |
| [**upload_sample_v3**](SampleUploadsApi.md#upload_sample_v3) | **POST** /samples/entities/samples/v3 | Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint. |


## archive_delete_v1

> archive_delete_v1(id)

Delete an archive that was uploaded previously

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

api_instance = Falcon::SampleUploadsApi.new
id = 'id_example' # String | The archive SHA256.

begin
  # Delete an archive that was uploaded previously
  api_instance.archive_delete_v1(id)
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_delete_v1: #{e}"
end
```

#### Using the archive_delete_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> archive_delete_v1_with_http_info(id)

```ruby
begin
  # Delete an archive that was uploaded previously
  data, status_code, headers = api_instance.archive_delete_v1_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_delete_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The archive SHA256. |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## archive_get_v1

> <ClientArchiveCreateResponseV1> archive_get_v1(id, opts)

Retrieves the archives upload operation statuses. Status `done` means that archive was processed successfully. Status `error` means that archive was not processed successfully.

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

api_instance = Falcon::SampleUploadsApi.new
id = 'id_example' # String | The archive SHA256.
opts = {
  include_files: true # Boolean | If `true` includes processed archive files in response.
}

begin
  # Retrieves the archives upload operation statuses. Status `done` means that archive was processed successfully. Status `error` means that archive was not processed successfully.
  result = api_instance.archive_get_v1(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_get_v1: #{e}"
end
```

#### Using the archive_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientArchiveCreateResponseV1>, Integer, Hash)> archive_get_v1_with_http_info(id, opts)

```ruby
begin
  # Retrieves the archives upload operation statuses. Status `done` means that archive was processed successfully. Status `error` means that archive was not processed successfully.
  data, status_code, headers = api_instance.archive_get_v1_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientArchiveCreateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The archive SHA256. |  |
| **include_files** | **Boolean** | If &#x60;true&#x60; includes processed archive files in response. | [optional][default to false] |

### Return type

[**ClientArchiveCreateResponseV1**](ClientArchiveCreateResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## archive_list_v1

> <ClientArchiveListFilesResponseV1> archive_list_v1(id, opts)

Retrieves the archives files in chunks.

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

api_instance = Falcon::SampleUploadsApi.new
id = 'id_example' # String | The archive SHA256.
opts = {
  limit: 56, # Integer | Max number of files to retrieve.
  offset: 'offset_example' # String | Offset from where to get files.
}

begin
  # Retrieves the archives files in chunks.
  result = api_instance.archive_list_v1(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_list_v1: #{e}"
end
```

#### Using the archive_list_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientArchiveListFilesResponseV1>, Integer, Hash)> archive_list_v1_with_http_info(id, opts)

```ruby
begin
  # Retrieves the archives files in chunks.
  data, status_code, headers = api_instance.archive_list_v1_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientArchiveListFilesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_list_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The archive SHA256. |  |
| **limit** | **Integer** | Max number of files to retrieve. | [optional][default to 100] |
| **offset** | **String** | Offset from where to get files. | [optional] |

### Return type

[**ClientArchiveListFilesResponseV1**](ClientArchiveListFilesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## archive_upload_v1

> <ClientArchiveCreateResponseV1> archive_upload_v1(name, body, opts)

Uploads an archive and extracts files list from it. Operation is asynchronous use `/archives/entities/archives/v1` to check the status. After uploading, use `/archives/entities/extractions/v1` to copy the file to internal storage making it available for content analysis. This method is deprecated in favor of `/archives/entities/archives/v2`

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

api_instance = Falcon::SampleUploadsApi.new
name = 'name_example' # String | Name of the archive.
body = [37] # Array<Integer> | Content of the uploaded archive in binary format. For example, use `--data-binary @$FILE_PATH` when using cURL. Max file size: 100 MB.  Accepted file formats:  - Portable executables: `.zip`, `.7z`.
opts = {
  password: 'password_example', # String | Archive password.
  is_confidential: true, # Boolean | Defines visibility of this file, either via the API or the Falcon console.  - `true`: File is only shown to users within your customer account - `false`: File can be seen by other CrowdStrike customers   Default: `true`.
  comment: 'comment_example' # String | A descriptive comment to identify the file for other users.
}

begin
  # Uploads an archive and extracts files list from it. Operation is asynchronous use `/archives/entities/archives/v1` to check the status. After uploading, use `/archives/entities/extractions/v1` to copy the file to internal storage making it available for content analysis. This method is deprecated in favor of `/archives/entities/archives/v2`
  result = api_instance.archive_upload_v1(name, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_upload_v1: #{e}"
end
```

#### Using the archive_upload_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientArchiveCreateResponseV1>, Integer, Hash)> archive_upload_v1_with_http_info(name, body, opts)

```ruby
begin
  # Uploads an archive and extracts files list from it. Operation is asynchronous use `/archives/entities/archives/v1` to check the status. After uploading, use `/archives/entities/extractions/v1` to copy the file to internal storage making it available for content analysis. This method is deprecated in favor of `/archives/entities/archives/v2`
  data, status_code, headers = api_instance.archive_upload_v1_with_http_info(name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientArchiveCreateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_upload_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the archive. |  |
| **body** | [**Array&lt;Integer&gt;**](Integer.md) | Content of the uploaded archive in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 100 MB.  Accepted file formats:  - Portable executables: &#x60;.zip&#x60;, &#x60;.7z&#x60;. |  |
| **password** | **String** | Archive password. | [optional] |
| **is_confidential** | **Boolean** | Defines visibility of this file, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;. | [optional][default to true] |
| **comment** | **String** | A descriptive comment to identify the file for other users. | [optional] |

### Return type

[**ClientArchiveCreateResponseV1**](ClientArchiveCreateResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/octet-stream, application/zip, application/x-7z-compressed, application/x-zip-compressed
- **Accept**: application/json


## archive_upload_v2

> <ClientArchiveCreateResponseV1> archive_upload_v2(file, name, opts)

Uploads an archive and extracts files list from it. Operation is asynchronous use `/archives/entities/archives/v1` to check the status. After uploading, use `/archives/entities/extractions/v1` to copy the file to internal storage making it available for content analysis.

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

api_instance = Falcon::SampleUploadsApi.new
file = File.new('/path/to/some/file') # File | Content of the uploaded archive. For example, use `--form file=@$FILE_PATH;type=` when using cURL. Supported file types are `application/zip` and `application/x-7z-compressed`.
name = 'name_example' # String | Name of the archive. For example, use `--form name=` when using cURL.
opts = {
  password: 'password_example', # String | Archive password. For example, use `--form password=` when using cURL.
  is_confidential: true, # Boolean | Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console. For example, use `--form is_confidential=` when using cURL.  - `true`: File is only shown to users within your customer account - `false`: File can be seen by other CrowdStrike customers   Default: `true`.
  comment: 'comment_example' # String | A descriptive comment to identify the file for other users. For example, use `--form comment=` when using cURL.
}

begin
  # Uploads an archive and extracts files list from it. Operation is asynchronous use `/archives/entities/archives/v1` to check the status. After uploading, use `/archives/entities/extractions/v1` to copy the file to internal storage making it available for content analysis.
  result = api_instance.archive_upload_v2(file, name, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_upload_v2: #{e}"
end
```

#### Using the archive_upload_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientArchiveCreateResponseV1>, Integer, Hash)> archive_upload_v2_with_http_info(file, name, opts)

```ruby
begin
  # Uploads an archive and extracts files list from it. Operation is asynchronous use `/archives/entities/archives/v1` to check the status. After uploading, use `/archives/entities/extractions/v1` to copy the file to internal storage making it available for content analysis.
  data, status_code, headers = api_instance.archive_upload_v2_with_http_info(file, name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientArchiveCreateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->archive_upload_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | Content of the uploaded archive. For example, use &#x60;--form file&#x3D;@$FILE_PATH;type&#x3D;&#x60; when using cURL. Supported file types are &#x60;application/zip&#x60; and &#x60;application/x-7z-compressed&#x60;. |  |
| **name** | **String** | Name of the archive. For example, use &#x60;--form name&#x3D;&#x60; when using cURL. |  |
| **password** | **String** | Archive password. For example, use &#x60;--form password&#x3D;&#x60; when using cURL. | [optional] |
| **is_confidential** | **Boolean** | Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console. For example, use &#x60;--form is_confidential&#x3D;&#x60; when using cURL.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;. | [optional][default to true] |
| **comment** | **String** | A descriptive comment to identify the file for other users. For example, use &#x60;--form comment&#x3D;&#x60; when using cURL. | [optional] |

### Return type

[**ClientArchiveCreateResponseV1**](ClientArchiveCreateResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## delete_sample_v3

> <MsaQueryResponse> delete_sample_v3(ids)

Removes a sample, including file, meta and submissions from the collection

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

api_instance = Falcon::SampleUploadsApi.new
ids = 'ids_example' # String | The file SHA256.

begin
  # Removes a sample, including file, meta and submissions from the collection
  result = api_instance.delete_sample_v3(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->delete_sample_v3: #{e}"
end
```

#### Using the delete_sample_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_sample_v3_with_http_info(ids)

```ruby
begin
  # Removes a sample, including file, meta and submissions from the collection
  data, status_code, headers = api_instance.delete_sample_v3_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->delete_sample_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The file SHA256. |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extraction_create_v1

> <ClientExtractionCreateResponseV1> extraction_create_v1(body)

Extracts files from an uploaded archive and copies them to internal storage making it available for content analysis.

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

api_instance = Falcon::SampleUploadsApi.new
body = Falcon::ClientExtractionCreateRequestV1.new # ClientExtractionCreateRequestV1 | 

begin
  # Extracts files from an uploaded archive and copies them to internal storage making it available for content analysis.
  result = api_instance.extraction_create_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->extraction_create_v1: #{e}"
end
```

#### Using the extraction_create_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientExtractionCreateResponseV1>, Integer, Hash)> extraction_create_v1_with_http_info(body)

```ruby
begin
  # Extracts files from an uploaded archive and copies them to internal storage making it available for content analysis.
  data, status_code, headers = api_instance.extraction_create_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientExtractionCreateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->extraction_create_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ClientExtractionCreateRequestV1**](ClientExtractionCreateRequestV1.md) |  |  |

### Return type

[**ClientExtractionCreateResponseV1**](ClientExtractionCreateResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## extraction_get_v1

> <ClientExtractionCreateResponseV1> extraction_get_v1(id, opts)

Retrieves the files extraction operation statuses. Status `done` means that all files were processed successfully. Status `error` means that at least one of the file could not be processed.

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

api_instance = Falcon::SampleUploadsApi.new
id = 'id_example' # String | The extraction operation ID.
opts = {
  include_files: true # Boolean | If `true` includes processed archive files in response.
}

begin
  # Retrieves the files extraction operation statuses. Status `done` means that all files were processed successfully. Status `error` means that at least one of the file could not be processed.
  result = api_instance.extraction_get_v1(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->extraction_get_v1: #{e}"
end
```

#### Using the extraction_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientExtractionCreateResponseV1>, Integer, Hash)> extraction_get_v1_with_http_info(id, opts)

```ruby
begin
  # Retrieves the files extraction operation statuses. Status `done` means that all files were processed successfully. Status `error` means that at least one of the file could not be processed.
  data, status_code, headers = api_instance.extraction_get_v1_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientExtractionCreateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->extraction_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The extraction operation ID. |  |
| **include_files** | **Boolean** | If &#x60;true&#x60; includes processed archive files in response. | [optional][default to false] |

### Return type

[**ClientExtractionCreateResponseV1**](ClientExtractionCreateResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extraction_list_v1

> <ClientExtractionListFilesResponseV1> extraction_list_v1(id, opts)

Retrieves the files extractions in chunks. Status `done` means that all files were processed successfully. Status `error` means that at least one of the file could not be processed.

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

api_instance = Falcon::SampleUploadsApi.new
id = 'id_example' # String | The extraction operation ID.
opts = {
  limit: 56, # Integer | Max number of file extractions to retrieve.
  offset: 'offset_example' # String | Offset from where to get file extractions.
}

begin
  # Retrieves the files extractions in chunks. Status `done` means that all files were processed successfully. Status `error` means that at least one of the file could not be processed.
  result = api_instance.extraction_list_v1(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->extraction_list_v1: #{e}"
end
```

#### Using the extraction_list_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientExtractionListFilesResponseV1>, Integer, Hash)> extraction_list_v1_with_http_info(id, opts)

```ruby
begin
  # Retrieves the files extractions in chunks. Status `done` means that all files were processed successfully. Status `error` means that at least one of the file could not be processed.
  data, status_code, headers = api_instance.extraction_list_v1_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientExtractionListFilesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->extraction_list_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The extraction operation ID. |  |
| **limit** | **Integer** | Max number of file extractions to retrieve. | [optional][default to 0] |
| **offset** | **String** | Offset from where to get file extractions. | [optional] |

### Return type

[**ClientExtractionListFilesResponseV1**](ClientExtractionListFilesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sample_v3

> String get_sample_v3(ids, opts)

Retrieves the file associated with the given ID (SHA256)

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

api_instance = Falcon::SampleUploadsApi.new
ids = 'ids_example' # String | The file SHA256.
opts = {
  password_protected: true # Boolean | Flag whether the sample should be zipped and password protected with pass='infected'
}

begin
  # Retrieves the file associated with the given ID (SHA256)
  result = api_instance.get_sample_v3(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->get_sample_v3: #{e}"
end
```

#### Using the get_sample_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_sample_v3_with_http_info(ids, opts)

```ruby
begin
  # Retrieves the file associated with the given ID (SHA256)
  data, status_code, headers = api_instance.get_sample_v3_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->get_sample_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The file SHA256. |  |
| **password_protected** | **Boolean** | Flag whether the sample should be zipped and password protected with pass&#x3D;&#39;infected&#39; | [optional][default to false] |

### Return type

**String**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## upload_sample_v3

> <ClientSampleMetadataResponseV2> upload_sample_v3(sample, file_name, opts)

Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.

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

api_instance = Falcon::SampleUploadsApi.new
sample = File.new('/path/to/some/file') # File | Content of the uploaded sample in binary format. For example, use `--data-binary @$FILE_PATH` when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: `.exe`, `.scr`, `.pif`, `.dll`, `.com`, `.cpl`, etc. - Office documents: `.doc`, `.docx`, `.ppt`, `.pps`, `.pptx`, `.ppsx`, `.xls`, `.xlsx`, `.rtf`, `.pub` - PDF - APK - Executable JAR - Windows script component: `.sct` - Windows shortcut: `.lnk` - Windows help: `.chm` - HTML application: `.hta` - Windows script file: `.wsf` - Javascript: `.js` - Visual Basic: `.vbs`,  `.vbe` - Shockwave Flash: `.swf` - Perl: `.pl` - Powershell: `.ps1`, `.psd1`, `.psm1` - Scalable vector graphics: `.svg` - Python: `.py` - Linux ELF executables - Email files: MIME RFC 822 `.eml`, Outlook `.msg`.
file_name = 'file_name_example' # String | Name of the file.
opts = {
  comment: 'comment_example', # String | A descriptive comment to identify the file for other users.
  is_confidential: true # Boolean | Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - `true`: File is only shown to users within your customer account - `false`: File can be seen by other CrowdStrike customers   Default: `true`.
}

begin
  # Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.
  result = api_instance.upload_sample_v3(sample, file_name, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->upload_sample_v3: #{e}"
end
```

#### Using the upload_sample_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientSampleMetadataResponseV2>, Integer, Hash)> upload_sample_v3_with_http_info(sample, file_name, opts)

```ruby
begin
  # Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.
  data, status_code, headers = api_instance.upload_sample_v3_with_http_info(sample, file_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientSampleMetadataResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling SampleUploadsApi->upload_sample_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sample** | **File** | Content of the uploaded sample in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: &#x60;.exe&#x60;, &#x60;.scr&#x60;, &#x60;.pif&#x60;, &#x60;.dll&#x60;, &#x60;.com&#x60;, &#x60;.cpl&#x60;, etc. - Office documents: &#x60;.doc&#x60;, &#x60;.docx&#x60;, &#x60;.ppt&#x60;, &#x60;.pps&#x60;, &#x60;.pptx&#x60;, &#x60;.ppsx&#x60;, &#x60;.xls&#x60;, &#x60;.xlsx&#x60;, &#x60;.rtf&#x60;, &#x60;.pub&#x60; - PDF - APK - Executable JAR - Windows script component: &#x60;.sct&#x60; - Windows shortcut: &#x60;.lnk&#x60; - Windows help: &#x60;.chm&#x60; - HTML application: &#x60;.hta&#x60; - Windows script file: &#x60;.wsf&#x60; - Javascript: &#x60;.js&#x60; - Visual Basic: &#x60;.vbs&#x60;,  &#x60;.vbe&#x60; - Shockwave Flash: &#x60;.swf&#x60; - Perl: &#x60;.pl&#x60; - Powershell: &#x60;.ps1&#x60;, &#x60;.psd1&#x60;, &#x60;.psm1&#x60; - Scalable vector graphics: &#x60;.svg&#x60; - Python: &#x60;.py&#x60; - Linux ELF executables - Email files: MIME RFC 822 &#x60;.eml&#x60;, Outlook &#x60;.msg&#x60;. |  |
| **file_name** | **String** | Name of the file. |  |
| **comment** | **String** | A descriptive comment to identify the file for other users. | [optional] |
| **is_confidential** | **Boolean** | Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;. | [optional][default to true] |

### Return type

[**ClientSampleMetadataResponseV2**](ClientSampleMetadataResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data, application/octet-stream
- **Accept**: application/json


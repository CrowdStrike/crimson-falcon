# Falcon::SampleUploadsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_sample_v3**](SampleUploadsApi.md#delete_sample_v3) | **DELETE** /samples/entities/samples/v3 | Removes a sample, including file, meta and submissions from the collection |
| [**get_sample_v3**](SampleUploadsApi.md#get_sample_v3) | **GET** /samples/entities/samples/v3 | Retrieves the file associated with the given ID (SHA256) |
| [**upload_sample_v3**](SampleUploadsApi.md#upload_sample_v3) | **POST** /samples/entities/samples/v3 | Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint. |


## delete_sample_v3

> <MsaQueryResponse> delete_sample_v3(ids)

Removes a sample, including file, meta and submissions from the collection

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
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

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sample_v3

> String get_sample_v3(ids, opts)

Retrieves the file associated with the given ID (SHA256)

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
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

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## upload_sample_v3

> <ClientSampleMetadataResponseV2> upload_sample_v3(sample, file_name, opts)

Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
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

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/octet-stream
- **Accept**: application/json


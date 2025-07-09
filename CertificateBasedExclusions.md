# Falcon::CertificateBasedExclusions

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cb_exclusions_create_v1**](CertificateBasedExclusions.md#cb_exclusions_create_v1) | **POST** /exclusions/entities/cert-based-exclusions/v1 | Create new Certificate Based Exclusions. |
| [**cb_exclusions_delete_v1**](CertificateBasedExclusions.md#cb_exclusions_delete_v1) | **DELETE** /exclusions/entities/cert-based-exclusions/v1 | Delete the exclusions by id |
| [**cb_exclusions_get_v1**](CertificateBasedExclusions.md#cb_exclusions_get_v1) | **GET** /exclusions/entities/cert-based-exclusions/v1 | Find all exclusion IDs matching the query with filter |
| [**cb_exclusions_query_v1**](CertificateBasedExclusions.md#cb_exclusions_query_v1) | **GET** /exclusions/queries/cert-based-exclusions/v1 | Search for cert-based exclusions. |
| [**cb_exclusions_update_v1**](CertificateBasedExclusions.md#cb_exclusions_update_v1) | **PATCH** /exclusions/entities/cert-based-exclusions/v1 | Updates existing Certificate Based Exclusions |
| [**certificates_get_v1**](CertificateBasedExclusions.md#certificates_get_v1) | **GET** /exclusions/entities/certificates/v1 | Retrieves certificate signing information for a file |


## cb_exclusions_create_v1

> <ApiCertBasedExclusionRespV1> cb_exclusions_create_v1(body)

Create new Certificate Based Exclusions.

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

api_instance = Falcon::CertificateBasedExclusions.new
body = Falcon::ApiCertBasedExclusionsCreateReqV1.new({exclusions: [Falcon::ApiCertBasedExclusionCreateReqV1.new({name: 'name_example'})]}) # ApiCertBasedExclusionsCreateReqV1 | 

begin
  # Create new Certificate Based Exclusions.
  result = api_instance.cb_exclusions_create_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_create_v1: #{e}"
end
```

#### Using the cb_exclusions_create_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCertBasedExclusionRespV1>, Integer, Hash)> cb_exclusions_create_v1_with_http_info(body)

```ruby
begin
  # Create new Certificate Based Exclusions.
  data, status_code, headers = api_instance.cb_exclusions_create_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCertBasedExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_create_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiCertBasedExclusionsCreateReqV1**](ApiCertBasedExclusionsCreateReqV1.md) |  |  |

### Return type

[**ApiCertBasedExclusionRespV1**](ApiCertBasedExclusionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cb_exclusions_delete_v1

> <ApiCertBasedExclusionRespV1> cb_exclusions_delete_v1(ids, opts)

Delete the exclusions by id

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

api_instance = Falcon::CertificateBasedExclusions.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to delete
opts = {
  comment: 'comment_example' # String | The comment why these exclusions were deleted
}

begin
  # Delete the exclusions by id
  result = api_instance.cb_exclusions_delete_v1(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_delete_v1: #{e}"
end
```

#### Using the cb_exclusions_delete_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCertBasedExclusionRespV1>, Integer, Hash)> cb_exclusions_delete_v1_with_http_info(ids, opts)

```ruby
begin
  # Delete the exclusions by id
  data, status_code, headers = api_instance.cb_exclusions_delete_v1_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCertBasedExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_delete_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to delete |  |
| **comment** | **String** | The comment why these exclusions were deleted | [optional] |

### Return type

[**ApiCertBasedExclusionRespV1**](ApiCertBasedExclusionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cb_exclusions_get_v1

> <ApiCertBasedExclusionRespV1> cb_exclusions_get_v1(ids)

Find all exclusion IDs matching the query with filter

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

api_instance = Falcon::CertificateBasedExclusions.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to retrieve

begin
  # Find all exclusion IDs matching the query with filter
  result = api_instance.cb_exclusions_get_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_get_v1: #{e}"
end
```

#### Using the cb_exclusions_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCertBasedExclusionRespV1>, Integer, Hash)> cb_exclusions_get_v1_with_http_info(ids)

```ruby
begin
  # Find all exclusion IDs matching the query with filter
  data, status_code, headers = api_instance.cb_exclusions_get_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCertBasedExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to retrieve |  |

### Return type

[**ApiCertBasedExclusionRespV1**](ApiCertBasedExclusionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cb_exclusions_query_v1

> <MsaspecQueryResponse> cb_exclusions_query_v1(opts)

Search for cert-based exclusions.

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

api_instance = Falcon::CertificateBasedExclusions.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results.
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-100]
  sort: 'created_by' # String | The sort expression that should be used to sort the results.
}

begin
  # Search for cert-based exclusions.
  result = api_instance.cb_exclusions_query_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_query_v1: #{e}"
end
```

#### Using the cb_exclusions_query_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> cb_exclusions_query_v1_with_http_info(opts)

```ruby
begin
  # Search for cert-based exclusions.
  data, status_code, headers = api_instance.cb_exclusions_query_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_query_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results. | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-100] | [optional] |
| **sort** | **String** | The sort expression that should be used to sort the results. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cb_exclusions_update_v1

> <ApiCertBasedExclusionRespV1> cb_exclusions_update_v1(body)

Updates existing Certificate Based Exclusions

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

api_instance = Falcon::CertificateBasedExclusions.new
body = Falcon::ApiCertBasedExclusionsUpdateReqV1.new({exclusions: [Falcon::ApiCertBasedExclusionUpdateReqV1.new({id: 'id_example'})]}) # ApiCertBasedExclusionsUpdateReqV1 | 

begin
  # Updates existing Certificate Based Exclusions
  result = api_instance.cb_exclusions_update_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_update_v1: #{e}"
end
```

#### Using the cb_exclusions_update_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCertBasedExclusionRespV1>, Integer, Hash)> cb_exclusions_update_v1_with_http_info(body)

```ruby
begin
  # Updates existing Certificate Based Exclusions
  data, status_code, headers = api_instance.cb_exclusions_update_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCertBasedExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->cb_exclusions_update_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiCertBasedExclusionsUpdateReqV1**](ApiCertBasedExclusionsUpdateReqV1.md) |  |  |

### Return type

[**ApiCertBasedExclusionRespV1**](ApiCertBasedExclusionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## certificates_get_v1

> <ApiRespCertificatesV1> certificates_get_v1(ids)

Retrieves certificate signing information for a file

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

api_instance = Falcon::CertificateBasedExclusions.new
ids = 'ids_example' # String | The SHA256 Hash of the file to retrieve certificate signing info for

begin
  # Retrieves certificate signing information for a file
  result = api_instance.certificates_get_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->certificates_get_v1: #{e}"
end
```

#### Using the certificates_get_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiRespCertificatesV1>, Integer, Hash)> certificates_get_v1_with_http_info(ids)

```ruby
begin
  # Retrieves certificate signing information for a file
  data, status_code, headers = api_instance.certificates_get_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiRespCertificatesV1>
rescue Falcon::ApiError => e
  puts "Error when calling CertificateBasedExclusions->certificates_get_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The SHA256 Hash of the file to retrieve certificate signing info for |  |

### Return type

[**ApiRespCertificatesV1**](ApiRespCertificatesV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


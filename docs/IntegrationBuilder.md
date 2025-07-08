# Falcon::IntegrationBuilder

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**integration_builder_end_transaction_v3**](IntegrationBuilder.md#integration_builder_end_transaction_v3) | **POST** /saas-security/entities/custom-integration-close/v3 | POST Data Upload Transaction Completion |
| [**integration_builder_get_status_v3**](IntegrationBuilder.md#integration_builder_get_status_v3) | **GET** /saas-security/entities/custom-integration-status/v3 | GET Status |
| [**integration_builder_reset_v3**](IntegrationBuilder.md#integration_builder_reset_v3) | **POST** /saas-security/entities/custom-integration-reset/v3 | Reset |
| [**integration_builder_upload_v3**](IntegrationBuilder.md#integration_builder_upload_v3) | **POST** /saas-security/entities/custom-integration-upload/v3 | POST Upload |


## integration_builder_end_transaction_v3

> <GetEndTransaction> integration_builder_end_transaction_v3(id)

POST Data Upload Transaction Completion

Make a close transaction call after uploading the data

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

api_instance = Falcon::IntegrationBuilder.new
id = 'id_example' # String | Integration ID

begin
  # POST Data Upload Transaction Completion
  result = api_instance.integration_builder_end_transaction_v3(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntegrationBuilder->integration_builder_end_transaction_v3: #{e}"
end
```

#### Using the integration_builder_end_transaction_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndTransaction>, Integer, Hash)> integration_builder_end_transaction_v3_with_http_info(id)

```ruby
begin
  # POST Data Upload Transaction Completion
  data, status_code, headers = api_instance.integration_builder_end_transaction_v3_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndTransaction>
rescue Falcon::ApiError => e
  puts "Error when calling IntegrationBuilder->integration_builder_end_transaction_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Integration ID |  |

### Return type

[**GetEndTransaction**](GetEndTransaction.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## integration_builder_get_status_v3

> <GetTransactionStatus> integration_builder_get_status_v3(id)

GET Status

Get transaction status for a custom integration

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

api_instance = Falcon::IntegrationBuilder.new
id = 'id_example' # String | Integration ID

begin
  # GET Status
  result = api_instance.integration_builder_get_status_v3(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntegrationBuilder->integration_builder_get_status_v3: #{e}"
end
```

#### Using the integration_builder_get_status_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionStatus>, Integer, Hash)> integration_builder_get_status_v3_with_http_info(id)

```ruby
begin
  # GET Status
  data, status_code, headers = api_instance.integration_builder_get_status_v3_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionStatus>
rescue Falcon::ApiError => e
  puts "Error when calling IntegrationBuilder->integration_builder_get_status_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Integration ID |  |

### Return type

[**GetTransactionStatus**](GetTransactionStatus.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## integration_builder_reset_v3

> <GetTransactionStatus> integration_builder_reset_v3(id)

Reset

Make a reset call to a custom integration

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

api_instance = Falcon::IntegrationBuilder.new
id = 'id_example' # String | Integration ID

begin
  # Reset
  result = api_instance.integration_builder_reset_v3(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntegrationBuilder->integration_builder_reset_v3: #{e}"
end
```

#### Using the integration_builder_reset_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionStatus>, Integer, Hash)> integration_builder_reset_v3_with_http_info(id)

```ruby
begin
  # Reset
  data, status_code, headers = api_instance.integration_builder_reset_v3_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionStatus>
rescue Falcon::ApiError => e
  puts "Error when calling IntegrationBuilder->integration_builder_reset_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Integration ID |  |

### Return type

[**GetTransactionStatus**](GetTransactionStatus.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## integration_builder_upload_v3

> <UploadDataResponse> integration_builder_upload_v3(id, source_id, data)

POST Upload

Send data to a specific source in a custom integration

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

api_instance = Falcon::IntegrationBuilder.new
id = 'id_example' # String | Integration ID
source_id = 'source_id_example' # String | Source ID
data = Falcon::UploadDataRequest.new({data: 'data_example'}) # UploadDataRequest | 

begin
  # POST Upload
  result = api_instance.integration_builder_upload_v3(id, source_id, data)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntegrationBuilder->integration_builder_upload_v3: #{e}"
end
```

#### Using the integration_builder_upload_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadDataResponse>, Integer, Hash)> integration_builder_upload_v3_with_http_info(id, source_id, data)

```ruby
begin
  # POST Upload
  data, status_code, headers = api_instance.integration_builder_upload_v3_with_http_info(id, source_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadDataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntegrationBuilder->integration_builder_upload_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Integration ID |  |
| **source_id** | **String** | Source ID |  |
| **data** | [**UploadDataRequest**](UploadDataRequest.md) |  |  |

### Return type

[**UploadDataResponse**](UploadDataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


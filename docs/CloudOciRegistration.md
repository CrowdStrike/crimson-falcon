# Falcon::CloudOciRegistration

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cloud_security_registration_oci_create_account**](CloudOciRegistration.md#cloud_security_registration_oci_create_account) | **POST** /cloud-security-registration-oci/entities/accounts/v1 | Create OCI tenancy account in CSPM |
| [**cloud_security_registration_oci_delete_account**](CloudOciRegistration.md#cloud_security_registration_oci_delete_account) | **DELETE** /cloud-security-registration-oci/entities/accounts/v1 | Delete an existing OCI tenancy in CSPM. |
| [**cloud_security_registration_oci_download_script**](CloudOciRegistration.md#cloud_security_registration_oci_download_script) | **POST** /cloud-security-registration-oci/entities/scripts/v1 | Retrieve script to create resources in tenancy OCID |
| [**cloud_security_registration_oci_get_account**](CloudOciRegistration.md#cloud_security_registration_oci_get_account) | **GET** /cloud-security-registration-oci/combined/accounts/v1 | Retrieve a list of OCI tenancies with support for FQL filtering, sorting, and pagination |
| [**cloud_security_registration_oci_rotate_key**](CloudOciRegistration.md#cloud_security_registration_oci_rotate_key) | **POST** /cloud-security-registration-oci/entities/account-rotate-keys/v1 | Refresh key for the OCI Tenancy |
| [**cloud_security_registration_oci_update_account**](CloudOciRegistration.md#cloud_security_registration_oci_update_account) | **PATCH** /cloud-security-registration-oci/entities/accounts/v1 | Patch an existing OCI account in our system for a customer. |
| [**cloud_security_registration_oci_validate_tenancy**](CloudOciRegistration.md#cloud_security_registration_oci_validate_tenancy) | **POST** /cloud-security-registration-oci/entities/account-validate/v1 | Validate the OCI account in CSPM for a provided CID. For internal clients only. |


## cloud_security_registration_oci_create_account

> <DomainOCITenancyCreateResponseExtV1> cloud_security_registration_oci_create_account(body)

Create OCI tenancy account in CSPM

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

api_instance = Falcon::CloudOciRegistration.new
body = Falcon::DomainOCITenancyCreateRequestExtV1.new({resources: [Falcon::DomainOCITenancyCreateExtV1.new({home_region: 'home_region_example', products: [Falcon::DomainCloudOCIProductFeature.new({features: [Falcon::DomainCloudOCIFeature.new({feature: 'feature_example', persona: 'persona_example', registration_detailed_status: 'registration_detailed_status_example'})], product: 'product_example'})], tenancy_ocid: 'tenancy_ocid_example', user_email: 'user_email_example'})]}) # DomainOCITenancyCreateRequestExtV1 | 

begin
  # Create OCI tenancy account in CSPM
  result = api_instance.cloud_security_registration_oci_create_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_create_account: #{e}"
end
```

#### Using the cloud_security_registration_oci_create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainOCITenancyCreateResponseExtV1>, Integer, Hash)> cloud_security_registration_oci_create_account_with_http_info(body)

```ruby
begin
  # Create OCI tenancy account in CSPM
  data, status_code, headers = api_instance.cloud_security_registration_oci_create_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainOCITenancyCreateResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainOCITenancyCreateRequestExtV1**](DomainOCITenancyCreateRequestExtV1.md) |  |  |

### Return type

[**DomainOCITenancyCreateResponseExtV1**](DomainOCITenancyCreateResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cloud_security_registration_oci_delete_account

> <MsaspecResponseFields> cloud_security_registration_oci_delete_account(opts)

Delete an existing OCI tenancy in CSPM.

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

api_instance = Falcon::CloudOciRegistration.new
opts = {
  ids: ['inner_example'] # Array<String> | OCI tenancy ocids to remove
}

begin
  # Delete an existing OCI tenancy in CSPM.
  result = api_instance.cloud_security_registration_oci_delete_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_delete_account: #{e}"
end
```

#### Using the cloud_security_registration_oci_delete_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> cloud_security_registration_oci_delete_account_with_http_info(opts)

```ruby
begin
  # Delete an existing OCI tenancy in CSPM.
  data, status_code, headers = api_instance.cloud_security_registration_oci_delete_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | OCI tenancy ocids to remove | [optional] |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_security_registration_oci_download_script

> <DomainOCIProvisionGetAccountScriptResponseV1> cloud_security_registration_oci_download_script(body)

Retrieve script to create resources in tenancy OCID

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

api_instance = Falcon::CloudOciRegistration.new
body = Falcon::DomainOCIDownloadScriptRequestV1.new({resources: [Falcon::DomainOCIDownloadScriptRequestData.new({deployment_method: 'deployment_method_example', is_download: false})]}) # DomainOCIDownloadScriptRequestV1 | 

begin
  # Retrieve script to create resources in tenancy OCID
  result = api_instance.cloud_security_registration_oci_download_script(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_download_script: #{e}"
end
```

#### Using the cloud_security_registration_oci_download_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainOCIProvisionGetAccountScriptResponseV1>, Integer, Hash)> cloud_security_registration_oci_download_script_with_http_info(body)

```ruby
begin
  # Retrieve script to create resources in tenancy OCID
  data, status_code, headers = api_instance.cloud_security_registration_oci_download_script_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainOCIProvisionGetAccountScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_download_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainOCIDownloadScriptRequestV1**](DomainOCIDownloadScriptRequestV1.md) |  |  |

### Return type

[**DomainOCIProvisionGetAccountScriptResponseV1**](DomainOCIProvisionGetAccountScriptResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cloud_security_registration_oci_get_account

> <DomainOCITenancyResponseExtV1> cloud_security_registration_oci_get_account(opts)

Retrieve a list of OCI tenancies with support for FQL filtering, sorting, and pagination

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

api_instance = Falcon::CloudOciRegistration.new
opts = {
  filter: 'filter_example', # String | FQL (Falcon Query Language) string for filtering results. Allowed filters are Set{overall_status, created_at, updated_at, tenancy_ocid, tenancy_name, home_region, key_age}
  sort: 'sort_example', # String | Field and direction for sorting results - allowed sort fields are Set{updated_at, tenancy_ocid, tenancy_name, home_region, key_age, overall_status, created_at}
  next_token: 'next_token_example', # String | Token for cursor-based pagination. Currently unsupported.
  limit: 56, # Integer | Maximum number of records to return (default: 100, max: 10000)
  offset: 56 # Integer | Starting index of result
}

begin
  # Retrieve a list of OCI tenancies with support for FQL filtering, sorting, and pagination
  result = api_instance.cloud_security_registration_oci_get_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_get_account: #{e}"
end
```

#### Using the cloud_security_registration_oci_get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainOCITenancyResponseExtV1>, Integer, Hash)> cloud_security_registration_oci_get_account_with_http_info(opts)

```ruby
begin
  # Retrieve a list of OCI tenancies with support for FQL filtering, sorting, and pagination
  data, status_code, headers = api_instance.cloud_security_registration_oci_get_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainOCITenancyResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL (Falcon Query Language) string for filtering results. Allowed filters are Set{overall_status, created_at, updated_at, tenancy_ocid, tenancy_name, home_region, key_age} | [optional] |
| **sort** | **String** | Field and direction for sorting results - allowed sort fields are Set{updated_at, tenancy_ocid, tenancy_name, home_region, key_age, overall_status, created_at} | [optional] |
| **next_token** | **String** | Token for cursor-based pagination. Currently unsupported. | [optional] |
| **limit** | **Integer** | Maximum number of records to return (default: 100, max: 10000) | [optional][default to 100] |
| **offset** | **Integer** | Starting index of result | [optional][default to 0] |

### Return type

[**DomainOCITenancyResponseExtV1**](DomainOCITenancyResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_security_registration_oci_rotate_key

> <DomainOCITenancyRotateKeyResponseExtV1> cloud_security_registration_oci_rotate_key(body)

Refresh key for the OCI Tenancy

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

api_instance = Falcon::CloudOciRegistration.new
body = Falcon::DomainOCITenancyRotateKeyRequestExtV1.new({resources: [Falcon::DomainTenancyOCID.new({tenancy_ocid: 'tenancy_ocid_example'})]}) # DomainOCITenancyRotateKeyRequestExtV1 | 

begin
  # Refresh key for the OCI Tenancy
  result = api_instance.cloud_security_registration_oci_rotate_key(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_rotate_key: #{e}"
end
```

#### Using the cloud_security_registration_oci_rotate_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainOCITenancyRotateKeyResponseExtV1>, Integer, Hash)> cloud_security_registration_oci_rotate_key_with_http_info(body)

```ruby
begin
  # Refresh key for the OCI Tenancy
  data, status_code, headers = api_instance.cloud_security_registration_oci_rotate_key_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainOCITenancyRotateKeyResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_rotate_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainOCITenancyRotateKeyRequestExtV1**](DomainOCITenancyRotateKeyRequestExtV1.md) |  |  |

### Return type

[**DomainOCITenancyRotateKeyResponseExtV1**](DomainOCITenancyRotateKeyResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cloud_security_registration_oci_update_account

> <DomainOCITenancyUpdateResponseExtV1> cloud_security_registration_oci_update_account(body)

Patch an existing OCI account in our system for a customer.

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

api_instance = Falcon::CloudOciRegistration.new
body = Falcon::DomainOCITenancyUpdateRequestExtV1.new({resources: [Falcon::DomainOCITenancyUpdateExtV1.new({products: [Falcon::DomainCloudOCIProductFeature.new({features: [Falcon::DomainCloudOCIFeature.new({feature: 'feature_example', persona: 'persona_example', registration_detailed_status: 'registration_detailed_status_example'})], product: 'product_example'})]})]}) # DomainOCITenancyUpdateRequestExtV1 | 

begin
  # Patch an existing OCI account in our system for a customer.
  result = api_instance.cloud_security_registration_oci_update_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_update_account: #{e}"
end
```

#### Using the cloud_security_registration_oci_update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainOCITenancyUpdateResponseExtV1>, Integer, Hash)> cloud_security_registration_oci_update_account_with_http_info(body)

```ruby
begin
  # Patch an existing OCI account in our system for a customer.
  data, status_code, headers = api_instance.cloud_security_registration_oci_update_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainOCITenancyUpdateResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainOCITenancyUpdateRequestExtV1**](DomainOCITenancyUpdateRequestExtV1.md) |  |  |

### Return type

[**DomainOCITenancyUpdateResponseExtV1**](DomainOCITenancyUpdateResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cloud_security_registration_oci_validate_tenancy

> <DomainOCITenancyValidationResponse> cloud_security_registration_oci_validate_tenancy(body)

Validate the OCI account in CSPM for a provided CID. For internal clients only.

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

api_instance = Falcon::CloudOciRegistration.new
body = Falcon::DomainOCIValidateRequestV1.new({resources: [Falcon::DomainOCIValidateRequestData.new({products: [Falcon::DomainProductFeatures.new({features: ['features_example'], product: 'product_example'})], tenancy_ocid: 'tenancy_ocid_example'})]}) # DomainOCIValidateRequestV1 | 

begin
  # Validate the OCI account in CSPM for a provided CID. For internal clients only.
  result = api_instance.cloud_security_registration_oci_validate_tenancy(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_validate_tenancy: #{e}"
end
```

#### Using the cloud_security_registration_oci_validate_tenancy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainOCITenancyValidationResponse>, Integer, Hash)> cloud_security_registration_oci_validate_tenancy_with_http_info(body)

```ruby
begin
  # Validate the OCI account in CSPM for a provided CID. For internal clients only.
  data, status_code, headers = api_instance.cloud_security_registration_oci_validate_tenancy_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainOCITenancyValidationResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudOciRegistration->cloud_security_registration_oci_validate_tenancy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainOCIValidateRequestV1**](DomainOCIValidateRequestV1.md) |  |  |

### Return type

[**DomainOCITenancyValidationResponse**](DomainOCITenancyValidationResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


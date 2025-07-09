# Falcon::CloudAzureRegistration

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cloud_registration_azure_create_registration**](CloudAzureRegistration.md#cloud_registration_azure_create_registration) | **POST** /cloud-security-registration-azure/entities/registrations/v1 | Create an Azure registration for a tenant. |
| [**cloud_registration_azure_delete_registration**](CloudAzureRegistration.md#cloud_registration_azure_delete_registration) | **DELETE** /cloud-security-registration-azure/entities/registrations/v1 | Deletes existing Azure registrations. |
| [**cloud_registration_azure_download_script**](CloudAzureRegistration.md#cloud_registration_azure_download_script) | **POST** /cloud-security-registration-azure/entities/scripts/v1 | Retrieve script to create resources |
| [**cloud_registration_azure_get_registration**](CloudAzureRegistration.md#cloud_registration_azure_get_registration) | **GET** /cloud-security-registration-azure/entities/registrations/v1 | Retrieve existing Azure registration for a tenant. |
| [**cloud_registration_azure_update_registration**](CloudAzureRegistration.md#cloud_registration_azure_update_registration) | **PATCH** /cloud-security-registration-azure/entities/registrations/v1 | Update an existing Azure registration for a tenant. |
| [**download_azure_script**](CloudAzureRegistration.md#download_azure_script) | **GET** /cloud-security-registration-azure/entities/scripts/v1 | Download Azure deployment script (Terraform or Bicep) |


## cloud_registration_azure_create_registration

> <AzureAzureRegistrationResponseExtV1> cloud_registration_azure_create_registration(body)

Create an Azure registration for a tenant.

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

api_instance = Falcon::CloudAzureRegistration.new
body = Falcon::AzureAzureRegistrationCreateRequestExtV1.new({resource: Falcon::AzureAzureRegistrationCreateInput.new({additional_features: [Falcon::AzureAdditionalFeature.new({feature: 'feature_example', product: 'product_example', subscription_ids: ['subscription_ids_example']})], deployment_method: 'deployment_method_example', event_hub_settings: [Falcon::AzureEventHubSettings.new({cid: 'cid_example', consumer_group: 'consumer_group_example', event_hub_id: 'event_hub_id_example', purpose: 'purpose_example', tenant_id: 'tenant_id_example'})], management_group_ids: ['management_group_ids_example'], microsoft_graph_permission_ids: ['microsoft_graph_permission_ids_example'], subscription_ids: ['subscription_ids_example'], tags: { key: 'inner_example'}, tenant_id: 'tenant_id_example'})}) # AzureAzureRegistrationCreateRequestExtV1 | 

begin
  # Create an Azure registration for a tenant.
  result = api_instance.cloud_registration_azure_create_registration(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_create_registration: #{e}"
end
```

#### Using the cloud_registration_azure_create_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AzureAzureRegistrationResponseExtV1>, Integer, Hash)> cloud_registration_azure_create_registration_with_http_info(body)

```ruby
begin
  # Create an Azure registration for a tenant.
  data, status_code, headers = api_instance.cloud_registration_azure_create_registration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AzureAzureRegistrationResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_create_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AzureAzureRegistrationCreateRequestExtV1**](AzureAzureRegistrationCreateRequestExtV1.md) |  |  |

### Return type

[**AzureAzureRegistrationResponseExtV1**](AzureAzureRegistrationResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cloud_registration_azure_delete_registration

> <AzureDeleteRegistrationResponseExtV1> cloud_registration_azure_delete_registration(tenant_ids)

Deletes existing Azure registrations.

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

api_instance = Falcon::CloudAzureRegistration.new
tenant_ids = ['inner_example'] # Array<String> | Azure tenant IDs

begin
  # Deletes existing Azure registrations.
  result = api_instance.cloud_registration_azure_delete_registration(tenant_ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_delete_registration: #{e}"
end
```

#### Using the cloud_registration_azure_delete_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AzureDeleteRegistrationResponseExtV1>, Integer, Hash)> cloud_registration_azure_delete_registration_with_http_info(tenant_ids)

```ruby
begin
  # Deletes existing Azure registrations.
  data, status_code, headers = api_instance.cloud_registration_azure_delete_registration_with_http_info(tenant_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AzureDeleteRegistrationResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_delete_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_ids** | [**Array&lt;String&gt;**](String.md) | Azure tenant IDs |  |

### Return type

[**AzureDeleteRegistrationResponseExtV1**](AzureDeleteRegistrationResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_registration_azure_download_script

> <AzureAzureProvisionGetAccountScriptResponseV1> cloud_registration_azure_download_script(body)

Retrieve script to create resources

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

api_instance = Falcon::CloudAzureRegistration.new
body = Falcon::AzureAzureDownloadScriptRequestV1.new({resources: [Falcon::AzureAzureDownloadScriptRequestData.new({tenant_id: 'tenant_id_example'})]}) # AzureAzureDownloadScriptRequestV1 | 

begin
  # Retrieve script to create resources
  result = api_instance.cloud_registration_azure_download_script(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_download_script: #{e}"
end
```

#### Using the cloud_registration_azure_download_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AzureAzureProvisionGetAccountScriptResponseV1>, Integer, Hash)> cloud_registration_azure_download_script_with_http_info(body)

```ruby
begin
  # Retrieve script to create resources
  data, status_code, headers = api_instance.cloud_registration_azure_download_script_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AzureAzureProvisionGetAccountScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_download_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AzureAzureDownloadScriptRequestV1**](AzureAzureDownloadScriptRequestV1.md) |  |  |

### Return type

[**AzureAzureProvisionGetAccountScriptResponseV1**](AzureAzureProvisionGetAccountScriptResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cloud_registration_azure_get_registration

> <AzureAzureRegistrationResponseExtV1> cloud_registration_azure_get_registration(tenant_id)

Retrieve existing Azure registration for a tenant.

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

api_instance = Falcon::CloudAzureRegistration.new
tenant_id = 'tenant_id_example' # String | Tenant ID

begin
  # Retrieve existing Azure registration for a tenant.
  result = api_instance.cloud_registration_azure_get_registration(tenant_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_get_registration: #{e}"
end
```

#### Using the cloud_registration_azure_get_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AzureAzureRegistrationResponseExtV1>, Integer, Hash)> cloud_registration_azure_get_registration_with_http_info(tenant_id)

```ruby
begin
  # Retrieve existing Azure registration for a tenant.
  data, status_code, headers = api_instance.cloud_registration_azure_get_registration_with_http_info(tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AzureAzureRegistrationResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_get_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID |  |

### Return type

[**AzureAzureRegistrationResponseExtV1**](AzureAzureRegistrationResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_registration_azure_update_registration

> <AzureAzureRegistrationResponseExtV1> cloud_registration_azure_update_registration(body)

Update an existing Azure registration for a tenant.

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

api_instance = Falcon::CloudAzureRegistration.new
body = Falcon::AzureAzureRegistrationUpdateRequestExtV1.new({resource: Falcon::AzureAzureRegistrationUpdateInput.new({additional_features: [Falcon::AzureAdditionalFeature.new({feature: 'feature_example', product: 'product_example', subscription_ids: ['subscription_ids_example']})], event_hub_settings: [Falcon::AzureEventHubSettings.new({cid: 'cid_example', consumer_group: 'consumer_group_example', event_hub_id: 'event_hub_id_example', purpose: 'purpose_example', tenant_id: 'tenant_id_example'})], management_group_ids: ['management_group_ids_example'], microsoft_graph_permission_ids: ['microsoft_graph_permission_ids_example'], subscription_ids: ['subscription_ids_example'], tags: { key: 'inner_example'}, tenant_id: 'tenant_id_example'})}) # AzureAzureRegistrationUpdateRequestExtV1 | 

begin
  # Update an existing Azure registration for a tenant.
  result = api_instance.cloud_registration_azure_update_registration(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_update_registration: #{e}"
end
```

#### Using the cloud_registration_azure_update_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AzureAzureRegistrationResponseExtV1>, Integer, Hash)> cloud_registration_azure_update_registration_with_http_info(body)

```ruby
begin
  # Update an existing Azure registration for a tenant.
  data, status_code, headers = api_instance.cloud_registration_azure_update_registration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AzureAzureRegistrationResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->cloud_registration_azure_update_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AzureAzureRegistrationUpdateRequestExtV1**](AzureAzureRegistrationUpdateRequestExtV1.md) |  |  |

### Return type

[**AzureAzureRegistrationResponseExtV1**](AzureAzureRegistrationResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## download_azure_script

> download_azure_script(tenant_id)

Download Azure deployment script (Terraform or Bicep)

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

api_instance = Falcon::CloudAzureRegistration.new
tenant_id = 'tenant_id_example' # String | Azure tenant ID

begin
  # Download Azure deployment script (Terraform or Bicep)
  api_instance.download_azure_script(tenant_id)
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->download_azure_script: #{e}"
end
```

#### Using the download_azure_script_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> download_azure_script_with_http_info(tenant_id)

```ruby
begin
  # Download Azure deployment script (Terraform or Bicep)
  data, status_code, headers = api_instance.download_azure_script_with_http_info(tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling CloudAzureRegistration->download_azure_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Azure tenant ID |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


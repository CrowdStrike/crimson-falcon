# Falcon::D4cRegistrationApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_d4_c_aws_account**](D4cRegistrationApi.md#create_d4_c_aws_account) | **POST** /cloud-connect-aws/entities/account/v2 | Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access. |
| [**create_d4_cgcp_account**](D4cRegistrationApi.md#create_d4_cgcp_account) | **POST** /cloud-connect-gcp/entities/account/v1 | Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access. |
| [**create_discover_cloud_azure_account**](D4cRegistrationApi.md#create_discover_cloud_azure_account) | **POST** /cloud-connect-azure/entities/account/v1 | Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access. |
| [**delete_d4_c_aws_account**](D4cRegistrationApi.md#delete_d4_c_aws_account) | **DELETE** /cloud-connect-aws/entities/account/v2 | Deletes an existing AWS account or organization in our system. |
| [**discover_cloud_azure_download_certificate**](D4cRegistrationApi.md#discover_cloud_azure_download_certificate) | **GET** /cloud-connect-azure/entities/download-certificate/v1 | Returns JSON object(s) that contain the base64 encoded certificate for a service principal. |
| [**get_d4_c_aws_account**](D4cRegistrationApi.md#get_d4_c_aws_account) | **GET** /cloud-connect-aws/entities/account/v2 | Returns information about the current status of an AWS account. |
| [**get_d4_c_aws_console_setup_urls**](D4cRegistrationApi.md#get_d4_c_aws_console_setup_urls) | **GET** /cloud-connect-aws/entities/console-setup-urls/v1 | Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment. |
| [**get_d4_caws_account_scripts_attachment**](D4cRegistrationApi.md#get_d4_caws_account_scripts_attachment) | **GET** /cloud-connect-aws/entities/user-scripts-download/v1 | Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment. |
| [**get_d4_ccgp_account**](D4cRegistrationApi.md#get_d4_ccgp_account) | **GET** /cloud-connect-gcp/entities/account/v1 | Returns information about the current status of an GCP account. |
| [**get_d4_cgcp_user_scripts**](D4cRegistrationApi.md#get_d4_cgcp_user_scripts) | **GET** /cloud-connect-gcp/entities/user-scripts/v1 | Return a script for customer to run in their cloud environment to grant us access to their GCP environment |
| [**get_discover_cloud_azure_account**](D4cRegistrationApi.md#get_discover_cloud_azure_account) | **GET** /cloud-connect-azure/entities/account/v1 | Return information about Azure account registration |
| [**get_discover_cloud_azure_tenant_ids**](D4cRegistrationApi.md#get_discover_cloud_azure_tenant_ids) | **GET** /cloud-connect-azure/entities/tenant-id/v1 | Return available tenant ids for discover for cloud |
| [**get_discover_cloud_azure_user_scripts**](D4cRegistrationApi.md#get_discover_cloud_azure_user_scripts) | **GET** /cloud-connect-azure/entities/user-scripts/v1 | Return a script for customer to run in their cloud environment to grant us access to their Azure environment |
| [**get_discover_cloud_azure_user_scripts_attachment**](D4cRegistrationApi.md#get_discover_cloud_azure_user_scripts_attachment) | **GET** /cloud-connect-azure/entities/user-scripts-download/v1 | Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment |
| [**get_horizon_d4_c_scripts**](D4cRegistrationApi.md#get_horizon_d4_c_scripts) | **GET** /settings-discover/entities/gen/scripts/v1 | Returns static install scripts for Horizon. |
| [**update_discover_cloud_azure_account_client_id**](D4cRegistrationApi.md#update_discover_cloud_azure_account_client_id) | **PATCH** /cloud-connect-azure/entities/client-id/v1 | Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided |


## create_d4_c_aws_account

> <RegistrationAWSAccountResponseV2> create_d4_c_aws_account(body)

Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
body = Falcon::RegistrationAWSAccountCreateRequestD4CExtV2.new({resources: [Falcon::RegistrationAWSAccountD4CExtV2.new({account_id: 'account_id_example', cloudtrail_region: 'cloudtrail_region_example', iam_role_arn: 'iam_role_arn_example', organization_id: 'organization_id_example'})]}) # RegistrationAWSAccountCreateRequestD4CExtV2 | 

begin
  # Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.
  result = api_instance.create_d4_c_aws_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_d4_c_aws_account: #{e}"
end
```

#### Using the create_d4_c_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAWSAccountResponseV2>, Integer, Hash)> create_d4_c_aws_account_with_http_info(body)

```ruby
begin
  # Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.
  data, status_code, headers = api_instance.create_d4_c_aws_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAWSAccountResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_d4_c_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationAWSAccountCreateRequestD4CExtV2**](RegistrationAWSAccountCreateRequestD4CExtV2.md) |  |  |

### Return type

[**RegistrationAWSAccountResponseV2**](RegistrationAWSAccountResponseV2.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_d4_cgcp_account

> <RegistrationGCPAccountResponseV1> create_d4_cgcp_account(body)

Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
body = Falcon::RegistrationGCPAccountCreateRequestExtV1.new({resources: [Falcon::RegistrationGCPAccountExtV1.new({parent_id: 'parent_id_example'})]}) # RegistrationGCPAccountCreateRequestExtV1 | 

begin
  # Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.
  result = api_instance.create_d4_cgcp_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_d4_cgcp_account: #{e}"
end
```

#### Using the create_d4_cgcp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountResponseV1>, Integer, Hash)> create_d4_cgcp_account_with_http_info(body)

```ruby
begin
  # Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.
  data, status_code, headers = api_instance.create_d4_cgcp_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_d4_cgcp_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationGCPAccountCreateRequestExtV1**](RegistrationGCPAccountCreateRequestExtV1.md) |  |  |

### Return type

[**RegistrationGCPAccountResponseV1**](RegistrationGCPAccountResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_discover_cloud_azure_account

> <RegistrationAzureAccountResponseV1> create_discover_cloud_azure_account(body)

Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
body = Falcon::RegistrationAzureAccountCreateRequestExternalV1.new({resources: [Falcon::RegistrationAzureAccountExternalV1.new]}) # RegistrationAzureAccountCreateRequestExternalV1 | 

begin
  # Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.
  result = api_instance.create_discover_cloud_azure_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_discover_cloud_azure_account: #{e}"
end
```

#### Using the create_discover_cloud_azure_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureAccountResponseV1>, Integer, Hash)> create_discover_cloud_azure_account_with_http_info(body)

```ruby
begin
  # Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.
  data, status_code, headers = api_instance.create_discover_cloud_azure_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_discover_cloud_azure_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationAzureAccountCreateRequestExternalV1**](RegistrationAzureAccountCreateRequestExternalV1.md) |  |  |

### Return type

[**RegistrationAzureAccountResponseV1**](RegistrationAzureAccountResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_d4_c_aws_account

> <MsaBaseEntitiesResponse> delete_d4_c_aws_account(opts)

Deletes an existing AWS account or organization in our system.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  ids: ['inner_example'], # Array<String> | AWS account IDs to remove
  organization_ids: ['inner_example'] # Array<String> | AWS organization IDs to remove
}

begin
  # Deletes an existing AWS account or organization in our system.
  result = api_instance.delete_d4_c_aws_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->delete_d4_c_aws_account: #{e}"
end
```

#### Using the delete_d4_c_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaBaseEntitiesResponse>, Integer, Hash)> delete_d4_c_aws_account_with_http_info(opts)

```ruby
begin
  # Deletes an existing AWS account or organization in our system.
  data, status_code, headers = api_instance.delete_d4_c_aws_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaBaseEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->delete_d4_c_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS account IDs to remove | [optional] |
| **organization_ids** | [**Array&lt;String&gt;**](String.md) | AWS organization IDs to remove | [optional] |

### Return type

[**MsaBaseEntitiesResponse**](MsaBaseEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## discover_cloud_azure_download_certificate

> <RegistrationAzureDownloadCertificateResponseV1> discover_cloud_azure_download_certificate(tenant_id, opts)

Returns JSON object(s) that contain the base64 encoded certificate for a service principal.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
tenant_id = ['inner_example'] # Array<String> | Azure Tenant ID
opts = {
  refresh: true, # Boolean | Setting to true will invalidate the current certificate and generate a new certificate
  years_valid: 'years_valid_example' # String | Years the certificate should be valid (only used when refresh=true)
}

begin
  # Returns JSON object(s) that contain the base64 encoded certificate for a service principal.
  result = api_instance.discover_cloud_azure_download_certificate(tenant_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->discover_cloud_azure_download_certificate: #{e}"
end
```

#### Using the discover_cloud_azure_download_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureDownloadCertificateResponseV1>, Integer, Hash)> discover_cloud_azure_download_certificate_with_http_info(tenant_id, opts)

```ruby
begin
  # Returns JSON object(s) that contain the base64 encoded certificate for a service principal.
  data, status_code, headers = api_instance.discover_cloud_azure_download_certificate_with_http_info(tenant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureDownloadCertificateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->discover_cloud_azure_download_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | [**Array&lt;String&gt;**](String.md) | Azure Tenant ID |  |
| **refresh** | **Boolean** | Setting to true will invalidate the current certificate and generate a new certificate | [optional][default to false] |
| **years_valid** | **String** | Years the certificate should be valid (only used when refresh&#x3D;true) | [optional] |

### Return type

[**RegistrationAzureDownloadCertificateResponseV1**](RegistrationAzureDownloadCertificateResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## get_d4_c_aws_account

> <RegistrationAWSAccountResponseV2> get_d4_c_aws_account(opts)

Returns information about the current status of an AWS account.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  scan_type: 'scan_type_example', # String | Type of scan, dry or full, to perform on selected accounts
  ids: ['inner_example'], # Array<String> | AWS account IDs
  organization_ids: ['inner_example'], # Array<String> | AWS organization IDs
  status: 'status_example', # String | Account status to filter results by.
  limit: 56, # Integer | The maximum records to return. Defaults to 100.
  offset: 56, # Integer | The offset to start retrieving records from
  migrated: 'false' # String | Only return migrated d4c accounts
}

begin
  # Returns information about the current status of an AWS account.
  result = api_instance.get_d4_c_aws_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_c_aws_account: #{e}"
end
```

#### Using the get_d4_c_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAWSAccountResponseV2>, Integer, Hash)> get_d4_c_aws_account_with_http_info(opts)

```ruby
begin
  # Returns information about the current status of an AWS account.
  data, status_code, headers = api_instance.get_d4_c_aws_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAWSAccountResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_c_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scan_type** | **String** | Type of scan, dry or full, to perform on selected accounts | [optional] |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS account IDs | [optional] |
| **organization_ids** | [**Array&lt;String&gt;**](String.md) | AWS organization IDs | [optional] |
| **status** | **String** | Account status to filter results by. | [optional] |
| **limit** | **Integer** | The maximum records to return. Defaults to 100. | [optional][default to 100] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **migrated** | **String** | Only return migrated d4c accounts | [optional] |

### Return type

[**RegistrationAWSAccountResponseV2**](RegistrationAWSAccountResponseV2.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_d4_c_aws_console_setup_urls

> <RegistrationAWSAccountConsoleURL> get_d4_c_aws_console_setup_urls(opts)

Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  region: 'region_example' # String | Region
}

begin
  # Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.
  result = api_instance.get_d4_c_aws_console_setup_urls(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_c_aws_console_setup_urls: #{e}"
end
```

#### Using the get_d4_c_aws_console_setup_urls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAWSAccountConsoleURL>, Integer, Hash)> get_d4_c_aws_console_setup_urls_with_http_info(opts)

```ruby
begin
  # Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.
  data, status_code, headers = api_instance.get_d4_c_aws_console_setup_urls_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAWSAccountConsoleURL>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_c_aws_console_setup_urls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | Region | [optional] |

### Return type

[**RegistrationAWSAccountConsoleURL**](RegistrationAWSAccountConsoleURL.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_d4_caws_account_scripts_attachment

> <RegistrationAWSProvisionGetAccountScriptResponseV2> get_d4_caws_account_scripts_attachment(opts)

Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  ids: ['inner_example'] # Array<String> | AWS account IDs
}

begin
  # Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.
  result = api_instance.get_d4_caws_account_scripts_attachment(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_caws_account_scripts_attachment: #{e}"
end
```

#### Using the get_d4_caws_account_scripts_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAWSProvisionGetAccountScriptResponseV2>, Integer, Hash)> get_d4_caws_account_scripts_attachment_with_http_info(opts)

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.
  data, status_code, headers = api_instance.get_d4_caws_account_scripts_attachment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAWSProvisionGetAccountScriptResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_caws_account_scripts_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS account IDs | [optional] |

### Return type

[**RegistrationAWSProvisionGetAccountScriptResponseV2**](RegistrationAWSProvisionGetAccountScriptResponseV2.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## get_d4_ccgp_account

> <RegistrationGCPAccountResponseV1> get_d4_ccgp_account(opts)

Returns information about the current status of an GCP account.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  parent_type: 'Folder', # String | GCP Hierarchy Parent Type, organization/folder/project
  ids: ['inner_example'], # Array<String> | Hierarchical Resource IDs of accounts
  scan_type: 'dry', # String | Type of scan, dry or full, to perform on selected accounts
  status: 'operational', # String | Account status to filter results by.
  limit: 56, # Integer | The maximum records to return. Defaults to 100.
  offset: 56, # Integer | The offset to start retrieving records from
  sort: 'sort_example' # String | Order fields in ascending or descending order. Ex: parent_type|asc.
}

begin
  # Returns information about the current status of an GCP account.
  result = api_instance.get_d4_ccgp_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_ccgp_account: #{e}"
end
```

#### Using the get_d4_ccgp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountResponseV1>, Integer, Hash)> get_d4_ccgp_account_with_http_info(opts)

```ruby
begin
  # Returns information about the current status of an GCP account.
  data, status_code, headers = api_instance.get_d4_ccgp_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_ccgp_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_type** | **String** | GCP Hierarchy Parent Type, organization/folder/project | [optional] |
| **ids** | [**Array&lt;String&gt;**](String.md) | Hierarchical Resource IDs of accounts | [optional] |
| **scan_type** | **String** | Type of scan, dry or full, to perform on selected accounts | [optional] |
| **status** | **String** | Account status to filter results by. | [optional] |
| **limit** | **Integer** | The maximum records to return. Defaults to 100. | [optional][default to 100] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **sort** | **String** | Order fields in ascending or descending order. Ex: parent_type|asc. | [optional] |

### Return type

[**RegistrationGCPAccountResponseV1**](RegistrationGCPAccountResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_d4_cgcp_user_scripts

> <RegistrationGCPProvisionGetUserScriptResponseV1> get_d4_cgcp_user_scripts(opts)

Return a script for customer to run in their cloud environment to grant us access to their GCP environment

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  parent_type: 'Folder' # String | GCP Hierarchy Parent Type, organization/folder/project
}

begin
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment
  result = api_instance.get_d4_cgcp_user_scripts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_cgcp_user_scripts: #{e}"
end
```

#### Using the get_d4_cgcp_user_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPProvisionGetUserScriptResponseV1>, Integer, Hash)> get_d4_cgcp_user_scripts_with_http_info(opts)

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment
  data, status_code, headers = api_instance.get_d4_cgcp_user_scripts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_d4_cgcp_user_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_type** | **String** | GCP Hierarchy Parent Type, organization/folder/project | [optional] |

### Return type

[**RegistrationGCPProvisionGetUserScriptResponseV1**](RegistrationGCPProvisionGetUserScriptResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discover_cloud_azure_account

> <RegistrationAzureAccountResponseV1> get_discover_cloud_azure_account(opts)

Return information about Azure account registration

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  ids: ['inner_example'], # Array<String> | SubscriptionIDs of accounts to select for this status operation. If this is empty then all accounts are returned.
  tenant_ids: ['inner_example'], # Array<String> | Tenant ids to filter azure accounts
  scan_type: 'scan_type_example', # String | Type of scan, dry or full, to perform on selected accounts
  status: 'status_example', # String | Account status to filter results by.
  limit: 56, # Integer | The maximum records to return. Defaults to 100.
  offset: 56 # Integer | The offset to start retrieving records from
}

begin
  # Return information about Azure account registration
  result = api_instance.get_discover_cloud_azure_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_discover_cloud_azure_account: #{e}"
end
```

#### Using the get_discover_cloud_azure_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureAccountResponseV1>, Integer, Hash)> get_discover_cloud_azure_account_with_http_info(opts)

```ruby
begin
  # Return information about Azure account registration
  data, status_code, headers = api_instance.get_discover_cloud_azure_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_discover_cloud_azure_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | SubscriptionIDs of accounts to select for this status operation. If this is empty then all accounts are returned. | [optional] |
| **tenant_ids** | [**Array&lt;String&gt;**](String.md) | Tenant ids to filter azure accounts | [optional] |
| **scan_type** | **String** | Type of scan, dry or full, to perform on selected accounts | [optional] |
| **status** | **String** | Account status to filter results by. | [optional] |
| **limit** | **Integer** | The maximum records to return. Defaults to 100. | [optional][default to 100] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |

### Return type

[**RegistrationAzureAccountResponseV1**](RegistrationAzureAccountResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discover_cloud_azure_tenant_ids

> <RegistrationAzureTenantIDsResponseV1> get_discover_cloud_azure_tenant_ids

Return available tenant ids for discover for cloud

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new

begin
  # Return available tenant ids for discover for cloud
  result = api_instance.get_discover_cloud_azure_tenant_ids
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_discover_cloud_azure_tenant_ids: #{e}"
end
```

#### Using the get_discover_cloud_azure_tenant_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureTenantIDsResponseV1>, Integer, Hash)> get_discover_cloud_azure_tenant_ids_with_http_info

```ruby
begin
  # Return available tenant ids for discover for cloud
  data, status_code, headers = api_instance.get_discover_cloud_azure_tenant_ids_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureTenantIDsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_discover_cloud_azure_tenant_ids_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RegistrationAzureTenantIDsResponseV1**](RegistrationAzureTenantIDsResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discover_cloud_azure_user_scripts

> <RegistrationAzureProvisionGetUserScriptResponseV1> get_discover_cloud_azure_user_scripts

Return a script for customer to run in their cloud environment to grant us access to their Azure environment

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new

begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment
  result = api_instance.get_discover_cloud_azure_user_scripts
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_discover_cloud_azure_user_scripts: #{e}"
end
```

#### Using the get_discover_cloud_azure_user_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureProvisionGetUserScriptResponseV1>, Integer, Hash)> get_discover_cloud_azure_user_scripts_with_http_info

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment
  data, status_code, headers = api_instance.get_discover_cloud_azure_user_scripts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_discover_cloud_azure_user_scripts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RegistrationAzureProvisionGetUserScriptResponseV1**](RegistrationAzureProvisionGetUserScriptResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discover_cloud_azure_user_scripts_attachment

> <RegistrationAzureProvisionGetUserScriptResponseV1> get_discover_cloud_azure_user_scripts_attachment(tenant_id, opts)

Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
tenant_id = ['inner_example'] # Array<String> | Azure Tenant ID
opts = {
  subscription_ids: ['inner_example'], # Array<String> | Azure Subscription ID
  template: 'template_example' # String | Template to be rendered
}

begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment
  result = api_instance.get_discover_cloud_azure_user_scripts_attachment(tenant_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_discover_cloud_azure_user_scripts_attachment: #{e}"
end
```

#### Using the get_discover_cloud_azure_user_scripts_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureProvisionGetUserScriptResponseV1>, Integer, Hash)> get_discover_cloud_azure_user_scripts_attachment_with_http_info(tenant_id, opts)

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment
  data, status_code, headers = api_instance.get_discover_cloud_azure_user_scripts_attachment_with_http_info(tenant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_discover_cloud_azure_user_scripts_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | [**Array&lt;String&gt;**](String.md) | Azure Tenant ID |  |
| **subscription_ids** | [**Array&lt;String&gt;**](String.md) | Azure Subscription ID | [optional] |
| **template** | **String** | Template to be rendered | [optional] |

### Return type

[**RegistrationAzureProvisionGetUserScriptResponseV1**](RegistrationAzureProvisionGetUserScriptResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## get_horizon_d4_c_scripts

> <RegistrationStaticScriptsResponse> get_horizon_d4_c_scripts(opts)

Returns static install scripts for Horizon.

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  single_account: 'false', # String | Get static script for single account
  organization_id: 'organization_id_example', # String | AWS organization ID
  delete: 'false', # String | 
  account_type: 'commercial' # String | Account type (e.g.: commercial,gov) Only applicable when registering AWS commercial account in a Gov environment
}

begin
  # Returns static install scripts for Horizon.
  result = api_instance.get_horizon_d4_c_scripts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_horizon_d4_c_scripts: #{e}"
end
```

#### Using the get_horizon_d4_c_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationStaticScriptsResponse>, Integer, Hash)> get_horizon_d4_c_scripts_with_http_info(opts)

```ruby
begin
  # Returns static install scripts for Horizon.
  data, status_code, headers = api_instance.get_horizon_d4_c_scripts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationStaticScriptsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_horizon_d4_c_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **single_account** | **String** | Get static script for single account | [optional] |
| **organization_id** | **String** | AWS organization ID | [optional] |
| **delete** | **String** |  | [optional] |
| **account_type** | **String** | Account type (e.g.: commercial,gov) Only applicable when registering AWS commercial account in a Gov environment | [optional] |

### Return type

[**RegistrationStaticScriptsResponse**](RegistrationStaticScriptsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_discover_cloud_azure_account_client_id

> <RegistrationAzureTenantConfigurationResponseV1> update_discover_cloud_azure_account_client_id(id, opts)

Update an Azure service account in our system by with the user-created client_id created with the public key we've provided

### Examples

```ruby
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
id = 'id_example' # String | ClientID to use for the Service Principal associated with the customer's Azure account
opts = {
  object_id: 'object_id_example', # String | Object ID to use for the Service Principal associated with the customer's Azure account
  tenant_id: 'tenant_id_example' # String | Tenant ID to update client ID for. Required if multiple tenants are registered.
}

begin
  # Update an Azure service account in our system by with the user-created client_id created with the public key we've provided
  result = api_instance.update_discover_cloud_azure_account_client_id(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->update_discover_cloud_azure_account_client_id: #{e}"
end
```

#### Using the update_discover_cloud_azure_account_client_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureTenantConfigurationResponseV1>, Integer, Hash)> update_discover_cloud_azure_account_client_id_with_http_info(id, opts)

```ruby
begin
  # Update an Azure service account in our system by with the user-created client_id created with the public key we've provided
  data, status_code, headers = api_instance.update_discover_cloud_azure_account_client_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureTenantConfigurationResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->update_discover_cloud_azure_account_client_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ClientID to use for the Service Principal associated with the customer&#39;s Azure account |  |
| **object_id** | **String** | Object ID to use for the Service Principal associated with the customer&#39;s Azure account | [optional] |
| **tenant_id** | **String** | Tenant ID to update client ID for. Required if multiple tenants are registered. | [optional] |

### Return type

[**RegistrationAzureTenantConfigurationResponseV1**](RegistrationAzureTenantConfigurationResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


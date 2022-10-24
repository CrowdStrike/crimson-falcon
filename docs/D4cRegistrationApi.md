# Falcon::D4cRegistrationApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cspm_azure_account**](D4cRegistrationApi.md#create_cspm_azure_account) | **POST** /cloud-connect-azure/entities/account/v1 | Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access. |
| [**create_cspmgcp_account**](D4cRegistrationApi.md#create_cspmgcp_account) | **POST** /cloud-connect-gcp/entities/account/v1 | Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access. |
| [**discover_cloud_azure_download_certificate**](D4cRegistrationApi.md#discover_cloud_azure_download_certificate) | **GET** /cloud-connect-azure/entities/download-certificate/v1 | Returns JSON object(s) that contain the base64 encoded certificate for a service principal. |
| [**get_cspm_azure_account**](D4cRegistrationApi.md#get_cspm_azure_account) | **GET** /cloud-connect-azure/entities/account/v1 | Return information about Azure account registration |
| [**get_cspm_azure_user_scripts**](D4cRegistrationApi.md#get_cspm_azure_user_scripts) | **GET** /cloud-connect-azure/entities/user-scripts/v1 | Return a script for customer to run in their cloud environment to grant us access to their Azure environment |
| [**get_cspm_azure_user_scripts_attachment**](D4cRegistrationApi.md#get_cspm_azure_user_scripts_attachment) | **GET** /cloud-connect-azure/entities/user-scripts-download/v1 | Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment |
| [**get_cspmcgp_account**](D4cRegistrationApi.md#get_cspmcgp_account) | **GET** /cloud-connect-gcp/entities/account/v1 | Returns information about the current status of an GCP account. |
| [**get_cspmgcp_user_scripts**](D4cRegistrationApi.md#get_cspmgcp_user_scripts) | **GET** /cloud-connect-gcp/entities/user-scripts/v1 | Return a script for customer to run in their cloud environment to grant us access to their GCP environment |
| [**get_cspmgcp_user_scripts_attachment**](D4cRegistrationApi.md#get_cspmgcp_user_scripts_attachment) | **GET** /cloud-connect-gcp/entities/user-scripts-download/v1 | Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment |
| [**update_cspm_azure_account_client_id**](D4cRegistrationApi.md#update_cspm_azure_account_client_id) | **PATCH** /cloud-connect-azure/entities/client-id/v1 | Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided |


## create_cspm_azure_account

> <RegistrationAzureAccountResponseV1> create_cspm_azure_account(body)

Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
body = Falcon::RegistrationAzureAccountCreateRequestExternalV1.new({resources: [Falcon::RegistrationAzureAccountExternalV1.new]}) # RegistrationAzureAccountCreateRequestExternalV1 | 

begin
  # Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.
  result = api_instance.create_cspm_azure_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_cspm_azure_account: #{e}"
end
```

#### Using the create_cspm_azure_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureAccountResponseV1>, Integer, Hash)> create_cspm_azure_account_with_http_info(body)

```ruby
begin
  # Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.
  data, status_code, headers = api_instance.create_cspm_azure_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_cspm_azure_account_with_http_info: #{e}"
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


## create_cspmgcp_account

> <RegistrationGCPAccountResponseV1> create_cspmgcp_account(body)

Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
body = Falcon::RegistrationGCPAccountCreateRequestExtV1.new({resources: [Falcon::RegistrationGCPAccountExtV1.new({parent_id: 'parent_id_example'})]}) # RegistrationGCPAccountCreateRequestExtV1 | 

begin
  # Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.
  result = api_instance.create_cspmgcp_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_cspmgcp_account: #{e}"
end
```

#### Using the create_cspmgcp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountResponseV1>, Integer, Hash)> create_cspmgcp_account_with_http_info(body)

```ruby
begin
  # Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.
  data, status_code, headers = api_instance.create_cspmgcp_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->create_cspmgcp_account_with_http_info: #{e}"
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


## discover_cloud_azure_download_certificate

> <RegistrationAzureDownloadCertificateResponseV1> discover_cloud_azure_download_certificate(tenant_id, opts)

Returns JSON object(s) that contain the base64 encoded certificate for a service principal.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
tenant_id = ['inner_example'] # Array<String> | Azure Tenant ID
opts = {
  refresh: 'false' # String | 
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
| **refresh** | **String** |  | [optional][default to &#39;false&#39;] |

### Return type

[**RegistrationAzureDownloadCertificateResponseV1**](RegistrationAzureDownloadCertificateResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_azure_account

> <RegistrationAzureAccountResponseV1> get_cspm_azure_account(opts)

Return information about Azure account registration

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  ids: ['inner_example'], # Array<String> | SubscriptionIDs of accounts to select for this status operation. If this is empty then all accounts are returned.
  scan_type: 'scan_type_example' # String | Type of scan, dry or full, to perform on selected accounts
}

begin
  # Return information about Azure account registration
  result = api_instance.get_cspm_azure_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspm_azure_account: #{e}"
end
```

#### Using the get_cspm_azure_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureAccountResponseV1>, Integer, Hash)> get_cspm_azure_account_with_http_info(opts)

```ruby
begin
  # Return information about Azure account registration
  data, status_code, headers = api_instance.get_cspm_azure_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspm_azure_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | SubscriptionIDs of accounts to select for this status operation. If this is empty then all accounts are returned. | [optional] |
| **scan_type** | **String** | Type of scan, dry or full, to perform on selected accounts | [optional] |

### Return type

[**RegistrationAzureAccountResponseV1**](RegistrationAzureAccountResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_azure_user_scripts

> <RegistrationAzureProvisionGetUserScriptResponseV1> get_cspm_azure_user_scripts

Return a script for customer to run in their cloud environment to grant us access to their Azure environment

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new

begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment
  result = api_instance.get_cspm_azure_user_scripts
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspm_azure_user_scripts: #{e}"
end
```

#### Using the get_cspm_azure_user_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureProvisionGetUserScriptResponseV1>, Integer, Hash)> get_cspm_azure_user_scripts_with_http_info

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment
  data, status_code, headers = api_instance.get_cspm_azure_user_scripts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspm_azure_user_scripts_with_http_info: #{e}"
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


## get_cspm_azure_user_scripts_attachment

> <RegistrationAzureProvisionGetUserScriptResponseV1> get_cspm_azure_user_scripts_attachment

Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new

begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment
  result = api_instance.get_cspm_azure_user_scripts_attachment
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspm_azure_user_scripts_attachment: #{e}"
end
```

#### Using the get_cspm_azure_user_scripts_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureProvisionGetUserScriptResponseV1>, Integer, Hash)> get_cspm_azure_user_scripts_attachment_with_http_info

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment
  data, status_code, headers = api_instance.get_cspm_azure_user_scripts_attachment_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspm_azure_user_scripts_attachment_with_http_info: #{e}"
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
- **Accept**: application/json, application/octet-stream


## get_cspmcgp_account

> <RegistrationGCPAccountResponseV1> get_cspmcgp_account(opts)

Returns information about the current status of an GCP account.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
opts = {
  scan_type: 'scan_type_example', # String | Type of scan, dry or full, to perform on selected accounts
  ids: ['inner_example'] # Array<String> | Parent IDs of accounts
}

begin
  # Returns information about the current status of an GCP account.
  result = api_instance.get_cspmcgp_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspmcgp_account: #{e}"
end
```

#### Using the get_cspmcgp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountResponseV1>, Integer, Hash)> get_cspmcgp_account_with_http_info(opts)

```ruby
begin
  # Returns information about the current status of an GCP account.
  data, status_code, headers = api_instance.get_cspmcgp_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspmcgp_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scan_type** | **String** | Type of scan, dry or full, to perform on selected accounts | [optional] |
| **ids** | [**Array&lt;String&gt;**](String.md) | Parent IDs of accounts | [optional] |

### Return type

[**RegistrationGCPAccountResponseV1**](RegistrationGCPAccountResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspmgcp_user_scripts

> <RegistrationGCPProvisionGetUserScriptResponseV1> get_cspmgcp_user_scripts

Return a script for customer to run in their cloud environment to grant us access to their GCP environment

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new

begin
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment
  result = api_instance.get_cspmgcp_user_scripts
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspmgcp_user_scripts: #{e}"
end
```

#### Using the get_cspmgcp_user_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPProvisionGetUserScriptResponseV1>, Integer, Hash)> get_cspmgcp_user_scripts_with_http_info

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment
  data, status_code, headers = api_instance.get_cspmgcp_user_scripts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspmgcp_user_scripts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RegistrationGCPProvisionGetUserScriptResponseV1**](RegistrationGCPProvisionGetUserScriptResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspmgcp_user_scripts_attachment

> <RegistrationGCPProvisionGetUserScriptResponseV1> get_cspmgcp_user_scripts_attachment

Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new

begin
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment
  result = api_instance.get_cspmgcp_user_scripts_attachment
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspmgcp_user_scripts_attachment: #{e}"
end
```

#### Using the get_cspmgcp_user_scripts_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPProvisionGetUserScriptResponseV1>, Integer, Hash)> get_cspmgcp_user_scripts_attachment_with_http_info

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment
  data, status_code, headers = api_instance.get_cspmgcp_user_scripts_attachment_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->get_cspmgcp_user_scripts_attachment_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RegistrationGCPProvisionGetUserScriptResponseV1**](RegistrationGCPProvisionGetUserScriptResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## update_cspm_azure_account_client_id

> <RegistrationAzureServicePrincipalResponseV1> update_cspm_azure_account_client_id(id)

Update an Azure service account in our system by with the user-created client_id created with the public key we've provided

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::D4cRegistrationApi.new
id = 'id_example' # String | ClientID to use for the Service Principal associated with the customer's Azure account

begin
  # Update an Azure service account in our system by with the user-created client_id created with the public key we've provided
  result = api_instance.update_cspm_azure_account_client_id(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->update_cspm_azure_account_client_id: #{e}"
end
```

#### Using the update_cspm_azure_account_client_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureServicePrincipalResponseV1>, Integer, Hash)> update_cspm_azure_account_client_id_with_http_info(id)

```ruby
begin
  # Update an Azure service account in our system by with the user-created client_id created with the public key we've provided
  data, status_code, headers = api_instance.update_cspm_azure_account_client_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureServicePrincipalResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling D4cRegistrationApi->update_cspm_azure_account_client_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ClientID to use for the Service Principal associated with the customer&#39;s Azure account |  |

### Return type

[**RegistrationAzureServicePrincipalResponseV1**](RegistrationAzureServicePrincipalResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


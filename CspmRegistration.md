# Falcon::CspmRegistration

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**azure_download_certificate**](CspmRegistration.md#azure_download_certificate) | **GET** /cloud-connect-cspm-azure/entities/download-certificate/v1 | Returns JSON object(s) that contain the base64 encoded certificate for a service principal. |
| [**azure_refresh_certificate**](CspmRegistration.md#azure_refresh_certificate) | **POST** /cloud-connect-cspm-azure/entities/refresh-certificate/v1 | Refresh certificate and returns JSON object(s) that contain the base64 encoded certificate for a service principal. |
| [**connect_cspm_gcp_account**](CspmRegistration.md#connect_cspm_gcp_account) | **POST** /cloud-connect-cspm-gcp/entities/account/v2 | Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id |
| [**create_cspm_aws_account**](CspmRegistration.md#create_cspm_aws_account) | **POST** /cloud-connect-cspm-aws/entities/account/v1 | Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access. |
| [**create_cspm_azure_account**](CspmRegistration.md#create_cspm_azure_account) | **POST** /cloud-connect-cspm-azure/entities/account/v1 | Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access. |
| [**create_cspm_azure_management_group**](CspmRegistration.md#create_cspm_azure_management_group) | **POST** /cloud-connect-cspm-azure/entities/management-group/v1 | Creates a new management group in our system for a customer. |
| [**create_cspm_gcp_account**](CspmRegistration.md#create_cspm_gcp_account) | **POST** /cloud-connect-cspm-gcp/entities/account/v1 | Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access. |
| [**delete_cspm_aws_account**](CspmRegistration.md#delete_cspm_aws_account) | **DELETE** /cloud-connect-cspm-aws/entities/account/v1 | Deletes an existing AWS account or organization in our system. |
| [**delete_cspm_azure_account**](CspmRegistration.md#delete_cspm_azure_account) | **DELETE** /cloud-connect-cspm-azure/entities/account/v1 | Deletes an Azure subscription from the system. |
| [**delete_cspm_azure_management_group**](CspmRegistration.md#delete_cspm_azure_management_group) | **DELETE** /cloud-connect-cspm-azure/entities/management-group/v1 | Deletes Azure management groups from the system. |
| [**delete_cspm_gcp_account**](CspmRegistration.md#delete_cspm_gcp_account) | **DELETE** /cloud-connect-cspm-gcp/entities/account/v1 | Deletes a GCP account from the system. |
| [**get_behavior_detections**](CspmRegistration.md#get_behavior_detections) | **GET** /detects/entities/ioa/v1 | Get list of detected behaviors |
| [**get_cloud_event_ids**](CspmRegistration.md#get_cloud_event_ids) | **GET** /detects/queries/cloud-events/v1 | Get list of related cloud event LogScale IDs for a given IOA |
| [**get_configuration_detection_entities**](CspmRegistration.md#get_configuration_detection_entities) | **GET** /detects/entities/iom/v2 | Get misconfigurations based on the ID - including custom policy detections in addition to default policy detections. |
| [**get_configuration_detection_ids_v2**](CspmRegistration.md#get_configuration_detection_ids_v2) | **GET** /detects/queries/iom/v2 | Get list of active misconfiguration ids - including custom policy detections in addition to default policy detections. |
| [**get_configuration_detections**](CspmRegistration.md#get_configuration_detections) | **GET** /detects/entities/iom/v1 | Get list of active misconfigurations. This endpoint is deprecated, please use /queries/iom/v2 and /entities/iom/v2 instead |
| [**get_cspm_aws_account**](CspmRegistration.md#get_cspm_aws_account) | **GET** /cloud-connect-cspm-aws/entities/account/v1 | Returns information about the current status of an AWS account. |
| [**get_cspm_aws_console_setup_urls**](CspmRegistration.md#get_cspm_aws_console_setup_urls) | **GET** /cloud-connect-cspm-aws/entities/console-setup-urls/v1 | Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment. |
| [**get_cspm_azure_account**](CspmRegistration.md#get_cspm_azure_account) | **GET** /cloud-connect-cspm-azure/entities/account/v1 | Return information about Azure account registration |
| [**get_cspm_azure_management_group**](CspmRegistration.md#get_cspm_azure_management_group) | **GET** /cloud-connect-cspm-azure/entities/management-group/v1 | Return information about Azure management group registration |
| [**get_cspm_azure_user_scripts_attachment**](CspmRegistration.md#get_cspm_azure_user_scripts_attachment) | **GET** /cloud-connect-cspm-azure/entities/user-scripts-download/v1 | Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment |
| [**get_cspm_gcp_account**](CspmRegistration.md#get_cspm_gcp_account) | **GET** /cloud-connect-cspm-gcp/entities/account/v1 | Returns information about the current status of an GCP account. |
| [**get_cspm_gcp_service_accounts_ext**](CspmRegistration.md#get_cspm_gcp_service_accounts_ext) | **GET** /cloud-connect-cspm-gcp/entities/service-accounts/v1 | Returns the service account id and client email for external clients. |
| [**get_cspm_gcp_user_scripts_attachment**](CspmRegistration.md#get_cspm_gcp_user_scripts_attachment) | **GET** /cloud-connect-cspm-gcp/entities/user-scripts-download/v1 | Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment |
| [**get_cspm_gcp_validate_accounts_ext**](CspmRegistration.md#get_cspm_gcp_validate_accounts_ext) | **POST** /cloud-connect-cspm-gcp/entities/account/validate/v1 | Run a synchronous health check. |
| [**get_cspm_policies_details**](CspmRegistration.md#get_cspm_policies_details) | **GET** /settings/entities/policy-details/v2 | Given an array of policy IDs, returns detailed policies information. |
| [**get_cspm_policy**](CspmRegistration.md#get_cspm_policy) | **GET** /settings/entities/policy-details/v1 | Given a policy ID, returns detailed policy information. |
| [**get_cspm_policy_settings**](CspmRegistration.md#get_cspm_policy_settings) | **GET** /settings/entities/policy/v1 | Returns information about current policy settings. |
| [**get_cspm_scan_schedule**](CspmRegistration.md#get_cspm_scan_schedule) | **GET** /settings/scan-schedule/v1 | Returns scan schedule configuration for one or more cloud platforms. |
| [**patch_cspm_aws_account**](CspmRegistration.md#patch_cspm_aws_account) | **PATCH** /cloud-connect-cspm-aws/entities/account/v1 | Patches a existing account in our system for a customer. |
| [**update_cspm_azure_account**](CspmRegistration.md#update_cspm_azure_account) | **PATCH** /cloud-connect-cspm-azure/entities/account/v1 | Patches a existing account in our system for a customer. |
| [**update_cspm_azure_account_client_id**](CspmRegistration.md#update_cspm_azure_account_client_id) | **PATCH** /cloud-connect-cspm-azure/entities/client-id/v1 | Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided |
| [**update_cspm_azure_tenant_default_subscription_id**](CspmRegistration.md#update_cspm_azure_tenant_default_subscription_id) | **PATCH** /cloud-connect-cspm-azure/entities/default-subscription-id/v1 | Update an Azure default subscription_id in our system for given tenant_id |
| [**update_cspm_gcp_account**](CspmRegistration.md#update_cspm_gcp_account) | **PATCH** /cloud-connect-cspm-gcp/entities/account/v1 | Patches a existing account in our system for a customer. |
| [**update_cspm_gcp_service_accounts_ext**](CspmRegistration.md#update_cspm_gcp_service_accounts_ext) | **PATCH** /cloud-connect-cspm-gcp/entities/service-accounts/v1 | Patches the service account key for external clients. |
| [**update_cspm_policy_settings**](CspmRegistration.md#update_cspm_policy_settings) | **PATCH** /settings/entities/policy/v1 | Updates a policy setting - can be used to override policy severity or to disable a policy entirely. |
| [**update_cspm_scan_schedule**](CspmRegistration.md#update_cspm_scan_schedule) | **POST** /settings/scan-schedule/v1 | Updates scan schedule configuration for one or more cloud platforms. |
| [**validate_cspm_gcp_service_account_ext**](CspmRegistration.md#validate_cspm_gcp_service_account_ext) | **POST** /cloud-connect-cspm-gcp/entities/service-accounts/validate/v1 | Validates credentials for a service account |


## azure_download_certificate

> <RegistrationAzureDownloadCertificateResponseV1> azure_download_certificate(tenant_id)

Returns JSON object(s) that contain the base64 encoded certificate for a service principal.

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

api_instance = Falcon::CspmRegistration.new
tenant_id = ['inner_example'] # Array<String> | Azure Tenant ID

begin
  # Returns JSON object(s) that contain the base64 encoded certificate for a service principal.
  result = api_instance.azure_download_certificate(tenant_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->azure_download_certificate: #{e}"
end
```

#### Using the azure_download_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureDownloadCertificateResponseV1>, Integer, Hash)> azure_download_certificate_with_http_info(tenant_id)

```ruby
begin
  # Returns JSON object(s) that contain the base64 encoded certificate for a service principal.
  data, status_code, headers = api_instance.azure_download_certificate_with_http_info(tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureDownloadCertificateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->azure_download_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | [**Array&lt;String&gt;**](String.md) | Azure Tenant ID |  |

### Return type

[**RegistrationAzureDownloadCertificateResponseV1**](RegistrationAzureDownloadCertificateResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## azure_refresh_certificate

> <RegistrationAzureDownloadCertificateResponseV1> azure_refresh_certificate(tenant_id, opts)

Refresh certificate and returns JSON object(s) that contain the base64 encoded certificate for a service principal.

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

api_instance = Falcon::CspmRegistration.new
tenant_id = ['inner_example'] # Array<String> | Azure Tenant ID
opts = {
  years_valid: 'years_valid_example' # String | Years the certificate should be valid. Max 2
}

begin
  # Refresh certificate and returns JSON object(s) that contain the base64 encoded certificate for a service principal.
  result = api_instance.azure_refresh_certificate(tenant_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->azure_refresh_certificate: #{e}"
end
```

#### Using the azure_refresh_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureDownloadCertificateResponseV1>, Integer, Hash)> azure_refresh_certificate_with_http_info(tenant_id, opts)

```ruby
begin
  # Refresh certificate and returns JSON object(s) that contain the base64 encoded certificate for a service principal.
  data, status_code, headers = api_instance.azure_refresh_certificate_with_http_info(tenant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureDownloadCertificateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->azure_refresh_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | [**Array&lt;String&gt;**](String.md) | Azure Tenant ID |  |
| **years_valid** | **String** | Years the certificate should be valid. Max 2 | [optional][default to &#39;1&#39;] |

### Return type

[**RegistrationAzureDownloadCertificateResponseV1**](RegistrationAzureDownloadCertificateResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## connect_cspm_gcp_account

> <RegistrationGCPAccountResponseExtV2> connect_cspm_gcp_account(body)

Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationGCPAccountExtRequestV2.new({resources: [Falcon::RegistrationGCPAccountReqObjV2.new({parent_id: 'parent_id_example'})]}) # RegistrationGCPAccountExtRequestV2 | 

begin
  # Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id
  result = api_instance.connect_cspm_gcp_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->connect_cspm_gcp_account: #{e}"
end
```

#### Using the connect_cspm_gcp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountResponseExtV2>, Integer, Hash)> connect_cspm_gcp_account_with_http_info(body)

```ruby
begin
  # Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id
  data, status_code, headers = api_instance.connect_cspm_gcp_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountResponseExtV2>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->connect_cspm_gcp_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationGCPAccountExtRequestV2**](RegistrationGCPAccountExtRequestV2.md) |  |  |

### Return type

[**RegistrationGCPAccountResponseExtV2**](RegistrationGCPAccountResponseExtV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cspm_aws_account

> <RegistrationAWSAccountResponseV2> create_cspm_aws_account(body)

Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationAWSAccountCreateRequestExtV2.new({resources: [Falcon::RegistrationAWSAccountExtV2.new({account_id: 'account_id_example', cloudtrail_region: 'cloudtrail_region_example', iam_role_arn: 'iam_role_arn_example', organization_id: 'organization_id_example'})]}) # RegistrationAWSAccountCreateRequestExtV2 | 

begin
  # Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.
  result = api_instance.create_cspm_aws_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->create_cspm_aws_account: #{e}"
end
```

#### Using the create_cspm_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAWSAccountResponseV2>, Integer, Hash)> create_cspm_aws_account_with_http_info(body)

```ruby
begin
  # Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.
  data, status_code, headers = api_instance.create_cspm_aws_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAWSAccountResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->create_cspm_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationAWSAccountCreateRequestExtV2**](RegistrationAWSAccountCreateRequestExtV2.md) |  |  |

### Return type

[**RegistrationAWSAccountResponseV2**](RegistrationAWSAccountResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cspm_azure_account

> <RegistrationAzureAccountResponseV1> create_cspm_azure_account(body)

Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationAzureAccountCreateRequestExternalV1.new({resources: [Falcon::RegistrationAzureAccountExternalV1.new]}) # RegistrationAzureAccountCreateRequestExternalV1 | 

begin
  # Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.
  result = api_instance.create_cspm_azure_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->create_cspm_azure_account: #{e}"
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
  puts "Error when calling CspmRegistration->create_cspm_azure_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationAzureAccountCreateRequestExternalV1**](RegistrationAzureAccountCreateRequestExternalV1.md) |  |  |

### Return type

[**RegistrationAzureAccountResponseV1**](RegistrationAzureAccountResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cspm_azure_management_group

> <RegistrationAzureAccountResponseV1> create_cspm_azure_management_group(body)

Creates a new management group in our system for a customer.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationAzureManagementGroupCreateRequestExternalV1.new({resources: [Falcon::RegistrationAzureManagementGroupExternalV1.new({tenant_id: 'tenant_id_example'})]}) # RegistrationAzureManagementGroupCreateRequestExternalV1 | 

begin
  # Creates a new management group in our system for a customer.
  result = api_instance.create_cspm_azure_management_group(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->create_cspm_azure_management_group: #{e}"
end
```

#### Using the create_cspm_azure_management_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureAccountResponseV1>, Integer, Hash)> create_cspm_azure_management_group_with_http_info(body)

```ruby
begin
  # Creates a new management group in our system for a customer.
  data, status_code, headers = api_instance.create_cspm_azure_management_group_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->create_cspm_azure_management_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationAzureManagementGroupCreateRequestExternalV1**](RegistrationAzureManagementGroupCreateRequestExternalV1.md) |  |  |

### Return type

[**RegistrationAzureAccountResponseV1**](RegistrationAzureAccountResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cspm_gcp_account

> <RegistrationGCPAccountResponseV1> create_cspm_gcp_account(body)

Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationGCPAccountCreateRequestExtV1.new({resources: [Falcon::RegistrationGCPAccountExtV1.new({parent_id: 'parent_id_example'})]}) # RegistrationGCPAccountCreateRequestExtV1 | 

begin
  # Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.
  result = api_instance.create_cspm_gcp_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->create_cspm_gcp_account: #{e}"
end
```

#### Using the create_cspm_gcp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountResponseV1>, Integer, Hash)> create_cspm_gcp_account_with_http_info(body)

```ruby
begin
  # Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.
  data, status_code, headers = api_instance.create_cspm_gcp_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->create_cspm_gcp_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationGCPAccountCreateRequestExtV1**](RegistrationGCPAccountCreateRequestExtV1.md) |  |  |

### Return type

[**RegistrationGCPAccountResponseV1**](RegistrationGCPAccountResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cspm_aws_account

> <MsaspecResponseFields> delete_cspm_aws_account(opts)

Deletes an existing AWS account or organization in our system.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  ids: ['inner_example'], # Array<String> | AWS account IDs to remove
  organization_ids: ['inner_example'] # Array<String> | AWS organization IDs to remove
}

begin
  # Deletes an existing AWS account or organization in our system.
  result = api_instance.delete_cspm_aws_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->delete_cspm_aws_account: #{e}"
end
```

#### Using the delete_cspm_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> delete_cspm_aws_account_with_http_info(opts)

```ruby
begin
  # Deletes an existing AWS account or organization in our system.
  data, status_code, headers = api_instance.delete_cspm_aws_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->delete_cspm_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS account IDs to remove | [optional] |
| **organization_ids** | [**Array&lt;String&gt;**](String.md) | AWS organization IDs to remove | [optional] |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cspm_azure_account

> <MsaBaseEntitiesResponse> delete_cspm_azure_account(opts)

Deletes an Azure subscription from the system.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  ids: ['inner_example'], # Array<String> | Azure subscription IDs to remove
  tenant_ids: ['inner_example'], # Array<String> | Tenant ids to remove
  retain_tenant: 'retain_tenant_example' # String | 
}

begin
  # Deletes an Azure subscription from the system.
  result = api_instance.delete_cspm_azure_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->delete_cspm_azure_account: #{e}"
end
```

#### Using the delete_cspm_azure_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaBaseEntitiesResponse>, Integer, Hash)> delete_cspm_azure_account_with_http_info(opts)

```ruby
begin
  # Deletes an Azure subscription from the system.
  data, status_code, headers = api_instance.delete_cspm_azure_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaBaseEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->delete_cspm_azure_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Azure subscription IDs to remove | [optional] |
| **tenant_ids** | [**Array&lt;String&gt;**](String.md) | Tenant ids to remove | [optional] |
| **retain_tenant** | **String** |  | [optional] |

### Return type

[**MsaBaseEntitiesResponse**](MsaBaseEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cspm_azure_management_group

> <MsaspecResponseFields> delete_cspm_azure_management_group(opts)

Deletes Azure management groups from the system.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  tenant_ids: ['inner_example'] # Array<String> | Tenant ids to remove
}

begin
  # Deletes Azure management groups from the system.
  result = api_instance.delete_cspm_azure_management_group(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->delete_cspm_azure_management_group: #{e}"
end
```

#### Using the delete_cspm_azure_management_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> delete_cspm_azure_management_group_with_http_info(opts)

```ruby
begin
  # Deletes Azure management groups from the system.
  data, status_code, headers = api_instance.delete_cspm_azure_management_group_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->delete_cspm_azure_management_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_ids** | [**Array&lt;String&gt;**](String.md) | Tenant ids to remove | [optional] |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cspm_gcp_account

> <MsaBaseEntitiesResponse> delete_cspm_gcp_account(opts)

Deletes a GCP account from the system.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  ids: ['inner_example'] # Array<String> | Hierarchical Resource IDs of accounts
}

begin
  # Deletes a GCP account from the system.
  result = api_instance.delete_cspm_gcp_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->delete_cspm_gcp_account: #{e}"
end
```

#### Using the delete_cspm_gcp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaBaseEntitiesResponse>, Integer, Hash)> delete_cspm_gcp_account_with_http_info(opts)

```ruby
begin
  # Deletes a GCP account from the system.
  data, status_code, headers = api_instance.delete_cspm_gcp_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaBaseEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->delete_cspm_gcp_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Hierarchical Resource IDs of accounts | [optional] |

### Return type

[**MsaBaseEntitiesResponse**](MsaBaseEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_behavior_detections

> <RegistrationExternalIOAEventResponse> get_behavior_detections(opts)

Get list of detected behaviors

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

api_instance = Falcon::CspmRegistration.new
opts = {
  cloud_provider: 'aws', # String | Cloud Provider (e.g.: aws|azure)
  service: 'ACM', # String | Cloud Service (e.g. EC2 | EBS | S3)
  account_id: 'account_id_example', # String | Cloud Account ID (e.g.: AWS accountID, Azure subscriptionID)
  aws_account_id: 'aws_account_id_example', # String | AWS Account ID
  azure_subscription_id: 'azure_subscription_id_example', # String | Azure Subscription ID
  azure_tenant_id: 'azure_tenant_id_example', # String | Azure Tenant ID
  state: 'closed', # String | State (e.g.: open | closed)
  date_time_since: 'date_time_since_example', # String | Filter to get all events after this date, in format RFC3339 : e.g. 2006-01-02T15:04:05Z07:00
  since: 'since_example', # String | Filter events using a duration string (e.g. 24h)
  severity: 'Critical', # String | Policy Severity
  next_token: 'next_token_example', # String | String to get next page of results, is associated with a previous execution of GetBehaviorDetections. Must include all filters from previous execution.
  limit: 56, # Integer | The maximum records to return. [1-500]
  resource_id: ['inner_example'], # Array<String> | Resource ID
  resource_uuid: ['inner_example'] # Array<String> | Resource UUID
}

begin
  # Get list of detected behaviors
  result = api_instance.get_behavior_detections(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_behavior_detections: #{e}"
end
```

#### Using the get_behavior_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationExternalIOAEventResponse>, Integer, Hash)> get_behavior_detections_with_http_info(opts)

```ruby
begin
  # Get list of detected behaviors
  data, status_code, headers = api_instance.get_behavior_detections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationExternalIOAEventResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_behavior_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_provider** | **String** | Cloud Provider (e.g.: aws|azure) | [optional] |
| **service** | **String** | Cloud Service (e.g. EC2 | EBS | S3) | [optional] |
| **account_id** | **String** | Cloud Account ID (e.g.: AWS accountID, Azure subscriptionID) | [optional] |
| **aws_account_id** | **String** | AWS Account ID | [optional] |
| **azure_subscription_id** | **String** | Azure Subscription ID | [optional] |
| **azure_tenant_id** | **String** | Azure Tenant ID | [optional] |
| **state** | **String** | State (e.g.: open | closed) | [optional] |
| **date_time_since** | **String** | Filter to get all events after this date, in format RFC3339 : e.g. 2006-01-02T15:04:05Z07:00 | [optional] |
| **since** | **String** | Filter events using a duration string (e.g. 24h) | [optional][default to &#39;24h&#39;] |
| **severity** | **String** | Policy Severity | [optional] |
| **next_token** | **String** | String to get next page of results, is associated with a previous execution of GetBehaviorDetections. Must include all filters from previous execution. | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **resource_id** | [**Array&lt;String&gt;**](String.md) | Resource ID | [optional] |
| **resource_uuid** | [**Array&lt;String&gt;**](String.md) | Resource UUID | [optional] |

### Return type

[**RegistrationExternalIOAEventResponse**](RegistrationExternalIOAEventResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cloud_event_ids

> <CdrioamanagerGetCloudEventIDsResponse> get_cloud_event_ids(x_cs_useruuid, id)

Get list of related cloud event LogScale IDs for a given IOA

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

api_instance = Falcon::CspmRegistration.new
x_cs_useruuid = 'x_cs_useruuid_example' # String | Requester User UUID
id = 'id_example' # String | IOA Aggregate Event ID

begin
  # Get list of related cloud event LogScale IDs for a given IOA
  result = api_instance.get_cloud_event_ids(x_cs_useruuid, id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cloud_event_ids: #{e}"
end
```

#### Using the get_cloud_event_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdrioamanagerGetCloudEventIDsResponse>, Integer, Hash)> get_cloud_event_ids_with_http_info(x_cs_useruuid, id)

```ruby
begin
  # Get list of related cloud event LogScale IDs for a given IOA
  data, status_code, headers = api_instance.get_cloud_event_ids_with_http_info(x_cs_useruuid, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdrioamanagerGetCloudEventIDsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cloud_event_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_cs_useruuid** | **String** | Requester User UUID |  |
| **id** | **String** | IOA Aggregate Event ID |  |

### Return type

[**CdrioamanagerGetCloudEventIDsResponse**](CdrioamanagerGetCloudEventIDsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_configuration_detection_entities

> <RegistrationExternalIOMEventResponseV2> get_configuration_detection_entities(ids)

Get misconfigurations based on the ID - including custom policy detections in addition to default policy detections.

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

api_instance = Falcon::CspmRegistration.new
ids = ['inner_example'] # Array<String> | detection ids

begin
  # Get misconfigurations based on the ID - including custom policy detections in addition to default policy detections.
  result = api_instance.get_configuration_detection_entities(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_configuration_detection_entities: #{e}"
end
```

#### Using the get_configuration_detection_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationExternalIOMEventResponseV2>, Integer, Hash)> get_configuration_detection_entities_with_http_info(ids)

```ruby
begin
  # Get misconfigurations based on the ID - including custom policy detections in addition to default policy detections.
  data, status_code, headers = api_instance.get_configuration_detection_entities_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationExternalIOMEventResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_configuration_detection_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | detection ids |  |

### Return type

[**RegistrationExternalIOMEventResponseV2**](RegistrationExternalIOMEventResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_configuration_detection_ids_v2

> <RegistrationIOMEventIDsResponseV2> get_configuration_detection_ids_v2(opts)

Get list of active misconfiguration ids - including custom policy detections in addition to default policy detections.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  filter: 'filter_example', # String | use_current_scan_ids - *use this to get records for latest scans (ignored when next_token is set)* account_name account_id agent_id attack_types azure_subscription_id cloud_provider cloud_service_keyword custom_policy_id is_managed policy_id policy_type resource_id region status scan_time severity severity_string 
  sort: 'sort_example', # String | account_name account_id attack_types azure_subscription_id cloud_provider cloud_service_keyword status is_managed policy_id policy_type resource_id region scan_time severity severity_string timestamp
  limit: 56, # Integer | The max number of detections to return
  offset: 56, # Integer | Offset returned detections. Cannot be combined with next_token filter
  next_token: 'next_token_example' # String | String to get next page of results. Cannot be combined with any filter except limit.
}

begin
  # Get list of active misconfiguration ids - including custom policy detections in addition to default policy detections.
  result = api_instance.get_configuration_detection_ids_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_configuration_detection_ids_v2: #{e}"
end
```

#### Using the get_configuration_detection_ids_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationIOMEventIDsResponseV2>, Integer, Hash)> get_configuration_detection_ids_v2_with_http_info(opts)

```ruby
begin
  # Get list of active misconfiguration ids - including custom policy detections in addition to default policy detections.
  data, status_code, headers = api_instance.get_configuration_detection_ids_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationIOMEventIDsResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_configuration_detection_ids_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | use_current_scan_ids - *use this to get records for latest scans (ignored when next_token is set)* account_name account_id agent_id attack_types azure_subscription_id cloud_provider cloud_service_keyword custom_policy_id is_managed policy_id policy_type resource_id region status scan_time severity severity_string  | [optional] |
| **sort** | **String** | account_name account_id attack_types azure_subscription_id cloud_provider cloud_service_keyword status is_managed policy_id policy_type resource_id region scan_time severity severity_string timestamp | [optional][default to &#39;timestamp|desc&#39;] |
| **limit** | **Integer** | The max number of detections to return | [optional][default to 500] |
| **offset** | **Integer** | Offset returned detections. Cannot be combined with next_token filter | [optional] |
| **next_token** | **String** | String to get next page of results. Cannot be combined with any filter except limit. | [optional] |

### Return type

[**RegistrationIOMEventIDsResponseV2**](RegistrationIOMEventIDsResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_configuration_detections

> <RegistrationExternalIOMEventResponse> get_configuration_detections(opts)

Get list of active misconfigurations. This endpoint is deprecated, please use /queries/iom/v2 and /entities/iom/v2 instead

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

api_instance = Falcon::CspmRegistration.new
opts = {
  cloud_provider: 'aws', # String | Cloud Provider (e.g.: aws|azure|gcp)
  account_id: 'account_id_example', # String | AWS account ID or GCP Project Number or Azure subscription ID
  azure_subscription_id: 'azure_subscription_id_example', # String | Azure Subscription ID
  azure_tenant_id: 'azure_tenant_id_example', # String | Azure Tenant ID
  status: 'all', # String | Status (e.g.: new|reoccurring|all)
  region: 'region_example', # String | Cloud Provider Region
  severity: 'Critical', # String | Policy Severity
  service: 'ACM', # String | Cloud Service (e.g.: EBS|EC2|S3 etc.)
  next_token: 'next_token_example', # String | String to get next page of results, is associated with a previous execution of GetConfigurationDetections. Cannot be combined with any filter except limit.
  limit: 56 # Integer | The maximum records to return. [1-500]
}

begin
  # Get list of active misconfigurations. This endpoint is deprecated, please use /queries/iom/v2 and /entities/iom/v2 instead
  result = api_instance.get_configuration_detections(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_configuration_detections: #{e}"
end
```

#### Using the get_configuration_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationExternalIOMEventResponse>, Integer, Hash)> get_configuration_detections_with_http_info(opts)

```ruby
begin
  # Get list of active misconfigurations. This endpoint is deprecated, please use /queries/iom/v2 and /entities/iom/v2 instead
  data, status_code, headers = api_instance.get_configuration_detections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationExternalIOMEventResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_configuration_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_provider** | **String** | Cloud Provider (e.g.: aws|azure|gcp) | [optional] |
| **account_id** | **String** | AWS account ID or GCP Project Number or Azure subscription ID | [optional] |
| **azure_subscription_id** | **String** | Azure Subscription ID | [optional] |
| **azure_tenant_id** | **String** | Azure Tenant ID | [optional] |
| **status** | **String** | Status (e.g.: new|reoccurring|all) | [optional] |
| **region** | **String** | Cloud Provider Region | [optional] |
| **severity** | **String** | Policy Severity | [optional] |
| **service** | **String** | Cloud Service (e.g.: EBS|EC2|S3 etc.) | [optional] |
| **next_token** | **String** | String to get next page of results, is associated with a previous execution of GetConfigurationDetections. Cannot be combined with any filter except limit. | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |

### Return type

[**RegistrationExternalIOMEventResponse**](RegistrationExternalIOMEventResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_aws_account

> <RegistrationAWSAccountResponseV2> get_cspm_aws_account(opts)

Returns information about the current status of an AWS account.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  scan_type: 'dry', # String | Type of scan, dry or full, to perform on selected accounts
  ids: ['inner_example'], # Array<String> | AWS account IDs
  iam_role_arns: ['inner_example'], # Array<String> | AWS IAM role ARNs
  organization_ids: ['inner_example'], # Array<String> | AWS organization IDs
  status: 'provisioned', # String | Account status to filter results by.
  limit: 56, # Integer | The maximum records to return. Defaults to 100.
  cspm_lite: 'true', # String | Only return CSPM Lite accounts
  migrated: 'true', # String | Only return migrated d4c accounts
  offset: 56, # Integer | The offset to start retrieving records from
  group_by: 'organization' # String | Field to group by.
}

begin
  # Returns information about the current status of an AWS account.
  result = api_instance.get_cspm_aws_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_aws_account: #{e}"
end
```

#### Using the get_cspm_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAWSAccountResponseV2>, Integer, Hash)> get_cspm_aws_account_with_http_info(opts)

```ruby
begin
  # Returns information about the current status of an AWS account.
  data, status_code, headers = api_instance.get_cspm_aws_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAWSAccountResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scan_type** | **String** | Type of scan, dry or full, to perform on selected accounts | [optional] |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS account IDs | [optional] |
| **iam_role_arns** | [**Array&lt;String&gt;**](String.md) | AWS IAM role ARNs | [optional] |
| **organization_ids** | [**Array&lt;String&gt;**](String.md) | AWS organization IDs | [optional] |
| **status** | **String** | Account status to filter results by. | [optional] |
| **limit** | **Integer** | The maximum records to return. Defaults to 100. | [optional][default to 100] |
| **cspm_lite** | **String** | Only return CSPM Lite accounts | [optional] |
| **migrated** | **String** | Only return migrated d4c accounts | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **group_by** | **String** | Field to group by. | [optional] |

### Return type

[**RegistrationAWSAccountResponseV2**](RegistrationAWSAccountResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_aws_console_setup_urls

> <RegistrationAWSConsoleURLResponseV2> get_cspm_aws_console_setup_urls(opts)

Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  ids: ['inner_example'], # Array<String> | AWS account IDs
  use_existing_cloudtrail: 'true', # String | 
  region: 'region_example', # String | Region
  tags: 'tags_example', # String | Base64 encoded JSON string to be used as AWS tags
  template: 'aws-url' # String | Template to be rendered
}

begin
  # Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.
  result = api_instance.get_cspm_aws_console_setup_urls(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_aws_console_setup_urls: #{e}"
end
```

#### Using the get_cspm_aws_console_setup_urls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAWSConsoleURLResponseV2>, Integer, Hash)> get_cspm_aws_console_setup_urls_with_http_info(opts)

```ruby
begin
  # Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.
  data, status_code, headers = api_instance.get_cspm_aws_console_setup_urls_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAWSConsoleURLResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_aws_console_setup_urls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS account IDs | [optional] |
| **use_existing_cloudtrail** | **String** |  | [optional] |
| **region** | **String** | Region | [optional] |
| **tags** | **String** | Base64 encoded JSON string to be used as AWS tags | [optional] |
| **template** | **String** | Template to be rendered | [optional] |

### Return type

[**RegistrationAWSConsoleURLResponseV2**](RegistrationAWSConsoleURLResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_azure_account

> <RegistrationAzureAccountResponseV1> get_cspm_azure_account(opts)

Return information about Azure account registration

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

api_instance = Falcon::CspmRegistration.new
opts = {
  ids: ['inner_example'], # Array<String> | SubscriptionIDs of accounts to select for this status operation. If this is empty then all accounts are returned.
  tenant_ids: ['inner_example'], # Array<String> | Tenant ids to filter azure accounts
  scan_type: 'scan_type_example', # String | Type of scan, dry or full, to perform on selected accounts
  status: 'status_example', # String | Account status to filter results by.
  cspm_lite: 'false', # String | Only return CSPM Lite accounts
  limit: 56, # Integer | The maximum records to return. Defaults to 100.
  offset: 56 # Integer | The offset to start retrieving records from
}

begin
  # Return information about Azure account registration
  result = api_instance.get_cspm_azure_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_azure_account: #{e}"
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
  puts "Error when calling CspmRegistration->get_cspm_azure_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | SubscriptionIDs of accounts to select for this status operation. If this is empty then all accounts are returned. | [optional] |
| **tenant_ids** | [**Array&lt;String&gt;**](String.md) | Tenant ids to filter azure accounts | [optional] |
| **scan_type** | **String** | Type of scan, dry or full, to perform on selected accounts | [optional] |
| **status** | **String** | Account status to filter results by. | [optional] |
| **cspm_lite** | **String** | Only return CSPM Lite accounts | [optional] |
| **limit** | **Integer** | The maximum records to return. Defaults to 100. | [optional][default to 100] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |

### Return type

[**RegistrationAzureAccountResponseV1**](RegistrationAzureAccountResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_azure_management_group

> <RegistrationAzureManagementGroupResponseV1> get_cspm_azure_management_group(opts)

Return information about Azure management group registration

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

api_instance = Falcon::CspmRegistration.new
opts = {
  tenant_ids: ['inner_example'], # Array<String> | Tenant ids to filter azure accounts
  limit: 56, # Integer | The maximum records to return. Defaults to 100.
  offset: 56 # Integer | The offset to start retrieving records from
}

begin
  # Return information about Azure management group registration
  result = api_instance.get_cspm_azure_management_group(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_azure_management_group: #{e}"
end
```

#### Using the get_cspm_azure_management_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureManagementGroupResponseV1>, Integer, Hash)> get_cspm_azure_management_group_with_http_info(opts)

```ruby
begin
  # Return information about Azure management group registration
  data, status_code, headers = api_instance.get_cspm_azure_management_group_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureManagementGroupResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_azure_management_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_ids** | [**Array&lt;String&gt;**](String.md) | Tenant ids to filter azure accounts | [optional] |
| **limit** | **Integer** | The maximum records to return. Defaults to 100. | [optional][default to 100] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |

### Return type

[**RegistrationAzureManagementGroupResponseV1**](RegistrationAzureManagementGroupResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_azure_user_scripts_attachment

> <RegistrationAzureProvisionGetUserScriptResponseV1> get_cspm_azure_user_scripts_attachment(opts)

Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment

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

api_instance = Falcon::CspmRegistration.new
opts = {
  tenant_id: 'tenant_id_example', # String | Tenant ID to generate script for. Defaults to most recently registered tenant.
  subscription_ids: ['inner_example'], # Array<String> | Subscription IDs to generate script for. Defaults to all.
  account_type: 'commercial', # String | 
  template: 'template_example', # String | Template to be rendered
  azure_management_group: true # Boolean | Use Azure Management Group
}

begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment
  result = api_instance.get_cspm_azure_user_scripts_attachment(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_azure_user_scripts_attachment: #{e}"
end
```

#### Using the get_cspm_azure_user_scripts_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureProvisionGetUserScriptResponseV1>, Integer, Hash)> get_cspm_azure_user_scripts_attachment_with_http_info(opts)

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment
  data, status_code, headers = api_instance.get_cspm_azure_user_scripts_attachment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_azure_user_scripts_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID to generate script for. Defaults to most recently registered tenant. | [optional] |
| **subscription_ids** | [**Array&lt;String&gt;**](String.md) | Subscription IDs to generate script for. Defaults to all. | [optional] |
| **account_type** | **String** |  | [optional] |
| **template** | **String** | Template to be rendered | [optional] |
| **azure_management_group** | **Boolean** | Use Azure Management Group | [optional] |

### Return type

[**RegistrationAzureProvisionGetUserScriptResponseV1**](RegistrationAzureProvisionGetUserScriptResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## get_cspm_gcp_account

> <RegistrationGCPAccountResponseV1> get_cspm_gcp_account(opts)

Returns information about the current status of an GCP account.

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

api_instance = Falcon::CspmRegistration.new
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
  result = api_instance.get_cspm_gcp_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_gcp_account: #{e}"
end
```

#### Using the get_cspm_gcp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountResponseV1>, Integer, Hash)> get_cspm_gcp_account_with_http_info(opts)

```ruby
begin
  # Returns information about the current status of an GCP account.
  data, status_code, headers = api_instance.get_cspm_gcp_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_gcp_account_with_http_info: #{e}"
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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_gcp_service_accounts_ext

> <RegistrationGCPServiceAccountResponseExtV1> get_cspm_gcp_service_accounts_ext(opts)

Returns the service account id and client email for external clients.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  id: 'id_example' # String | Service Account ID
}

begin
  # Returns the service account id and client email for external clients.
  result = api_instance.get_cspm_gcp_service_accounts_ext(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_gcp_service_accounts_ext: #{e}"
end
```

#### Using the get_cspm_gcp_service_accounts_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPServiceAccountResponseExtV1>, Integer, Hash)> get_cspm_gcp_service_accounts_ext_with_http_info(opts)

```ruby
begin
  # Returns the service account id and client email for external clients.
  data, status_code, headers = api_instance.get_cspm_gcp_service_accounts_ext_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPServiceAccountResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_gcp_service_accounts_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Service Account ID | [optional] |

### Return type

[**RegistrationGCPServiceAccountResponseExtV1**](RegistrationGCPServiceAccountResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_gcp_user_scripts_attachment

> <RegistrationGCPProvisionGetUserScriptResponseV1> get_cspm_gcp_user_scripts_attachment(opts)

Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment

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

api_instance = Falcon::CspmRegistration.new
opts = {
  parent_type: 'Folder', # String | GCP Hierarchy Parent Type, organization/folder/project
  ids: ['inner_example'] # Array<String> | Hierarchical Resource IDs of accounts
}

begin
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment
  result = api_instance.get_cspm_gcp_user_scripts_attachment(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_gcp_user_scripts_attachment: #{e}"
end
```

#### Using the get_cspm_gcp_user_scripts_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPProvisionGetUserScriptResponseV1>, Integer, Hash)> get_cspm_gcp_user_scripts_attachment_with_http_info(opts)

```ruby
begin
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment
  data, status_code, headers = api_instance.get_cspm_gcp_user_scripts_attachment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPProvisionGetUserScriptResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_gcp_user_scripts_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_type** | **String** | GCP Hierarchy Parent Type, organization/folder/project | [optional] |
| **ids** | [**Array&lt;String&gt;**](String.md) | Hierarchical Resource IDs of accounts | [optional] |

### Return type

[**RegistrationGCPProvisionGetUserScriptResponseV1**](RegistrationGCPProvisionGetUserScriptResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## get_cspm_gcp_validate_accounts_ext

> <RegistrationGCPAccountValidationResponseV1> get_cspm_gcp_validate_accounts_ext(body)

Run a synchronous health check.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationGCPAccountValidationRequestV1.new({resources: [Falcon::RegistrationGCPAccountValidationReqObjV1.new({parent_id: 'parent_id_example'})]}) # RegistrationGCPAccountValidationRequestV1 | 

begin
  # Run a synchronous health check.
  result = api_instance.get_cspm_gcp_validate_accounts_ext(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_gcp_validate_accounts_ext: #{e}"
end
```

#### Using the get_cspm_gcp_validate_accounts_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountValidationResponseV1>, Integer, Hash)> get_cspm_gcp_validate_accounts_ext_with_http_info(body)

```ruby
begin
  # Run a synchronous health check.
  data, status_code, headers = api_instance.get_cspm_gcp_validate_accounts_ext_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountValidationResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_gcp_validate_accounts_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationGCPAccountValidationRequestV1**](RegistrationGCPAccountValidationRequestV1.md) |  |  |

### Return type

[**RegistrationGCPAccountValidationResponseV1**](RegistrationGCPAccountValidationResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cspm_policies_details

> <RegistrationPolicyResponseV1> get_cspm_policies_details(ids)

Given an array of policy IDs, returns detailed policies information.

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

api_instance = Falcon::CspmRegistration.new
ids = [37] # Array<Integer> | Policy IDs

begin
  # Given an array of policy IDs, returns detailed policies information.
  result = api_instance.get_cspm_policies_details(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_policies_details: #{e}"
end
```

#### Using the get_cspm_policies_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationPolicyResponseV1>, Integer, Hash)> get_cspm_policies_details_with_http_info(ids)

```ruby
begin
  # Given an array of policy IDs, returns detailed policies information.
  data, status_code, headers = api_instance.get_cspm_policies_details_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationPolicyResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_policies_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;Integer&gt;**](Integer.md) | Policy IDs |  |

### Return type

[**RegistrationPolicyResponseV1**](RegistrationPolicyResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_policy

> <RegistrationPolicyResponseV1> get_cspm_policy(ids)

Given a policy ID, returns detailed policy information.

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

api_instance = Falcon::CspmRegistration.new
ids = 56 # Integer | Policy ID

begin
  # Given a policy ID, returns detailed policy information.
  result = api_instance.get_cspm_policy(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_policy: #{e}"
end
```

#### Using the get_cspm_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationPolicyResponseV1>, Integer, Hash)> get_cspm_policy_with_http_info(ids)

```ruby
begin
  # Given a policy ID, returns detailed policy information.
  data, status_code, headers = api_instance.get_cspm_policy_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationPolicyResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Integer** | Policy ID |  |

### Return type

[**RegistrationPolicyResponseV1**](RegistrationPolicyResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_policy_settings

> <RegistrationPolicySettingsResponseV1> get_cspm_policy_settings(opts)

Returns information about current policy settings.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  service: 'ACM', # String | Service type to filter policy settings by.
  policy_id: 'policy_id_example', # String | Policy ID
  cloud_platform: 'aws' # String | Cloud Platform (e.g.: aws|azure|gcp)
}

begin
  # Returns information about current policy settings.
  result = api_instance.get_cspm_policy_settings(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_policy_settings: #{e}"
end
```

#### Using the get_cspm_policy_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationPolicySettingsResponseV1>, Integer, Hash)> get_cspm_policy_settings_with_http_info(opts)

```ruby
begin
  # Returns information about current policy settings.
  data, status_code, headers = api_instance.get_cspm_policy_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationPolicySettingsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_policy_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Service type to filter policy settings by. | [optional] |
| **policy_id** | **String** | Policy ID | [optional] |
| **cloud_platform** | **String** | Cloud Platform (e.g.: aws|azure|gcp) | [optional] |

### Return type

[**RegistrationPolicySettingsResponseV1**](RegistrationPolicySettingsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_scan_schedule

> <RegistrationScanScheduleResponseV1> get_cspm_scan_schedule(opts)

Returns scan schedule configuration for one or more cloud platforms.

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

api_instance = Falcon::CspmRegistration.new
opts = {
  cloud_platform: ['inner_example'] # Array<String> | Cloud Platform
}

begin
  # Returns scan schedule configuration for one or more cloud platforms.
  result = api_instance.get_cspm_scan_schedule(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_scan_schedule: #{e}"
end
```

#### Using the get_cspm_scan_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationScanScheduleResponseV1>, Integer, Hash)> get_cspm_scan_schedule_with_http_info(opts)

```ruby
begin
  # Returns scan schedule configuration for one or more cloud platforms.
  data, status_code, headers = api_instance.get_cspm_scan_schedule_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationScanScheduleResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->get_cspm_scan_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_platform** | [**Array&lt;String&gt;**](String.md) | Cloud Platform | [optional] |

### Return type

[**RegistrationScanScheduleResponseV1**](RegistrationScanScheduleResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_cspm_aws_account

> <RegistrationAWSAccountResponseV2> patch_cspm_aws_account(body)

Patches a existing account in our system for a customer.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationAWSAccountPatchRequest.new({resources: [Falcon::RegistrationAWSAccountPatch.new({account_id: 'account_id_example', behavior_assessment_enabled: false, dspm_enabled: false, iam_role_arn: 'iam_role_arn_example', sensor_management_enabled: false})]}) # RegistrationAWSAccountPatchRequest | 

begin
  # Patches a existing account in our system for a customer.
  result = api_instance.patch_cspm_aws_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->patch_cspm_aws_account: #{e}"
end
```

#### Using the patch_cspm_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAWSAccountResponseV2>, Integer, Hash)> patch_cspm_aws_account_with_http_info(body)

```ruby
begin
  # Patches a existing account in our system for a customer.
  data, status_code, headers = api_instance.patch_cspm_aws_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAWSAccountResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->patch_cspm_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationAWSAccountPatchRequest**](RegistrationAWSAccountPatchRequest.md) |  |  |

### Return type

[**RegistrationAWSAccountResponseV2**](RegistrationAWSAccountResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cspm_azure_account

> <RegistrationAzureAccountResponseV1> update_cspm_azure_account(body)

Patches a existing account in our system for a customer.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationAzureAccountPatchRequest.new({resources: [Falcon::RegistrationAzureAccountPatch.new({subscription_id: 'subscription_id_example'})]}) # RegistrationAzureAccountPatchRequest | 

begin
  # Patches a existing account in our system for a customer.
  result = api_instance.update_cspm_azure_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_azure_account: #{e}"
end
```

#### Using the update_cspm_azure_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureAccountResponseV1>, Integer, Hash)> update_cspm_azure_account_with_http_info(body)

```ruby
begin
  # Patches a existing account in our system for a customer.
  data, status_code, headers = api_instance.update_cspm_azure_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_azure_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationAzureAccountPatchRequest**](RegistrationAzureAccountPatchRequest.md) |  |  |

### Return type

[**RegistrationAzureAccountResponseV1**](RegistrationAzureAccountResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cspm_azure_account_client_id

> <RegistrationAzureTenantConfigurationResponseV1> update_cspm_azure_account_client_id(id, opts)

Update an Azure service account in our system by with the user-created client_id created with the public key we've provided

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

api_instance = Falcon::CspmRegistration.new
id = 'id_example' # String | ClientID to use for the Service Principal associated with the customer's Azure account
opts = {
  tenant_id: 'tenant_id_example' # String | Tenant ID to update client ID for. Required if multiple tenants are registered.
}

begin
  # Update an Azure service account in our system by with the user-created client_id created with the public key we've provided
  result = api_instance.update_cspm_azure_account_client_id(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_azure_account_client_id: #{e}"
end
```

#### Using the update_cspm_azure_account_client_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureTenantConfigurationResponseV1>, Integer, Hash)> update_cspm_azure_account_client_id_with_http_info(id, opts)

```ruby
begin
  # Update an Azure service account in our system by with the user-created client_id created with the public key we've provided
  data, status_code, headers = api_instance.update_cspm_azure_account_client_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureTenantConfigurationResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_azure_account_client_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ClientID to use for the Service Principal associated with the customer&#39;s Azure account |  |
| **tenant_id** | **String** | Tenant ID to update client ID for. Required if multiple tenants are registered. | [optional] |

### Return type

[**RegistrationAzureTenantConfigurationResponseV1**](RegistrationAzureTenantConfigurationResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cspm_azure_tenant_default_subscription_id

> <RegistrationAzureTenantDefaultSubscriptionIDResponseV1> update_cspm_azure_tenant_default_subscription_id(subscription_id, opts)

Update an Azure default subscription_id in our system for given tenant_id

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

api_instance = Falcon::CspmRegistration.new
subscription_id = 'subscription_id_example' # String | Default Subscription ID to patch for all subscriptions belonged to a tenant.
opts = {
  tenant_id: 'tenant_id_example' # String | Tenant ID to update client ID for. Required if multiple tenants are registered.
}

begin
  # Update an Azure default subscription_id in our system for given tenant_id
  result = api_instance.update_cspm_azure_tenant_default_subscription_id(subscription_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_azure_tenant_default_subscription_id: #{e}"
end
```

#### Using the update_cspm_azure_tenant_default_subscription_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationAzureTenantDefaultSubscriptionIDResponseV1>, Integer, Hash)> update_cspm_azure_tenant_default_subscription_id_with_http_info(subscription_id, opts)

```ruby
begin
  # Update an Azure default subscription_id in our system for given tenant_id
  data, status_code, headers = api_instance.update_cspm_azure_tenant_default_subscription_id_with_http_info(subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationAzureTenantDefaultSubscriptionIDResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_azure_tenant_default_subscription_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Default Subscription ID to patch for all subscriptions belonged to a tenant. |  |
| **tenant_id** | **String** | Tenant ID to update client ID for. Required if multiple tenants are registered. | [optional] |

### Return type

[**RegistrationAzureTenantDefaultSubscriptionIDResponseV1**](RegistrationAzureTenantDefaultSubscriptionIDResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cspm_gcp_account

> <RegistrationGCPAccountResponseV1> update_cspm_gcp_account(body)

Patches a existing account in our system for a customer.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationGCPAccountPatchRequestV1.new({resources: [Falcon::RegistrationGCPAccountPatchV1.new({parent_id: 'parent_id_example', service_account: Falcon::RegistrationGCPServiceAccountPatchV1.new})]}) # RegistrationGCPAccountPatchRequestV1 | 

begin
  # Patches a existing account in our system for a customer.
  result = api_instance.update_cspm_gcp_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_gcp_account: #{e}"
end
```

#### Using the update_cspm_gcp_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPAccountResponseV1>, Integer, Hash)> update_cspm_gcp_account_with_http_info(body)

```ruby
begin
  # Patches a existing account in our system for a customer.
  data, status_code, headers = api_instance.update_cspm_gcp_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPAccountResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_gcp_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationGCPAccountPatchRequestV1**](RegistrationGCPAccountPatchRequestV1.md) |  |  |

### Return type

[**RegistrationGCPAccountResponseV1**](RegistrationGCPAccountResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cspm_gcp_service_accounts_ext

> <RegistrationGCPServiceAccountResponseExtV1> update_cspm_gcp_service_accounts_ext(body)

Patches the service account key for external clients.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationGCPServiceAccountPatchRequestV1.new({resources: [Falcon::RegistrationGCPServiceAccountPatchV1.new]}) # RegistrationGCPServiceAccountPatchRequestV1 | 

begin
  # Patches the service account key for external clients.
  result = api_instance.update_cspm_gcp_service_accounts_ext(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_gcp_service_accounts_ext: #{e}"
end
```

#### Using the update_cspm_gcp_service_accounts_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPServiceAccountResponseExtV1>, Integer, Hash)> update_cspm_gcp_service_accounts_ext_with_http_info(body)

```ruby
begin
  # Patches the service account key for external clients.
  data, status_code, headers = api_instance.update_cspm_gcp_service_accounts_ext_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPServiceAccountResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_gcp_service_accounts_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationGCPServiceAccountPatchRequestV1**](RegistrationGCPServiceAccountPatchRequestV1.md) |  |  |

### Return type

[**RegistrationGCPServiceAccountResponseExtV1**](RegistrationGCPServiceAccountResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cspm_policy_settings

> <RegistrationPolicySettingsResponseV1> update_cspm_policy_settings(body)

Updates a policy setting - can be used to override policy severity or to disable a policy entirely.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationPolicyRequestExtV1.new({resources: [Falcon::RegistrationPolicyExtV1.new({account_id: 'account_id_example', account_ids: ['account_ids_example'], enabled: false, policy_id: 37, regions: ['regions_example'], severity: 'severity_example', tag_excluded: false})]}) # RegistrationPolicyRequestExtV1 | 

begin
  # Updates a policy setting - can be used to override policy severity or to disable a policy entirely.
  result = api_instance.update_cspm_policy_settings(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_policy_settings: #{e}"
end
```

#### Using the update_cspm_policy_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationPolicySettingsResponseV1>, Integer, Hash)> update_cspm_policy_settings_with_http_info(body)

```ruby
begin
  # Updates a policy setting - can be used to override policy severity or to disable a policy entirely.
  data, status_code, headers = api_instance.update_cspm_policy_settings_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationPolicySettingsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_policy_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationPolicyRequestExtV1**](RegistrationPolicyRequestExtV1.md) |  |  |

### Return type

[**RegistrationPolicySettingsResponseV1**](RegistrationPolicySettingsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cspm_scan_schedule

> <RegistrationScanScheduleResponseV1> update_cspm_scan_schedule(body)

Updates scan schedule configuration for one or more cloud platforms.

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationScanScheduleUpdateRequestV1.new({resources: [Falcon::DomainScanScheduleDataV1.new({cloud_platform: 'cloud_platform_example'})]}) # RegistrationScanScheduleUpdateRequestV1 | 

begin
  # Updates scan schedule configuration for one or more cloud platforms.
  result = api_instance.update_cspm_scan_schedule(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_scan_schedule: #{e}"
end
```

#### Using the update_cspm_scan_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationScanScheduleResponseV1>, Integer, Hash)> update_cspm_scan_schedule_with_http_info(body)

```ruby
begin
  # Updates scan schedule configuration for one or more cloud platforms.
  data, status_code, headers = api_instance.update_cspm_scan_schedule_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationScanScheduleResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->update_cspm_scan_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationScanScheduleUpdateRequestV1**](RegistrationScanScheduleUpdateRequestV1.md) |  |  |

### Return type

[**RegistrationScanScheduleResponseV1**](RegistrationScanScheduleResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_cspm_gcp_service_account_ext

> <RegistrationGCPServiceAccountValidationResponseV1> validate_cspm_gcp_service_account_ext(body)

Validates credentials for a service account

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

api_instance = Falcon::CspmRegistration.new
body = Falcon::RegistrationGCPServiceAccountValidationRequestV1.new({resources: [Falcon::RegistrationGCPServiceAccountValidationRequestObjV1.new]}) # RegistrationGCPServiceAccountValidationRequestV1 | 

begin
  # Validates credentials for a service account
  result = api_instance.validate_cspm_gcp_service_account_ext(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->validate_cspm_gcp_service_account_ext: #{e}"
end
```

#### Using the validate_cspm_gcp_service_account_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationGCPServiceAccountValidationResponseV1>, Integer, Hash)> validate_cspm_gcp_service_account_ext_with_http_info(body)

```ruby
begin
  # Validates credentials for a service account
  data, status_code, headers = api_instance.validate_cspm_gcp_service_account_ext_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationGCPServiceAccountValidationResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CspmRegistration->validate_cspm_gcp_service_account_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistrationGCPServiceAccountValidationRequestV1**](RegistrationGCPServiceAccountValidationRequestV1.md) |  |  |

### Return type

[**RegistrationGCPServiceAccountValidationResponseV1**](RegistrationGCPServiceAccountValidationResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# Falcon::KubernetesProtectionApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_aws_account**](KubernetesProtectionApi.md#create_aws_account) | **POST** /kubernetes-protection/entities/accounts/aws/v1 | Creates a new AWS account in our system for a customer and generates the installation script |
| [**create_azure_subscription**](KubernetesProtectionApi.md#create_azure_subscription) | **POST** /kubernetes-protection/entities/accounts/azure/v1 | Creates a new Azure Subscription in our system |
| [**delete_aws_accounts_mixin0**](KubernetesProtectionApi.md#delete_aws_accounts_mixin0) | **DELETE** /kubernetes-protection/entities/accounts/aws/v1 | Delete AWS accounts. |
| [**delete_azure_subscription**](KubernetesProtectionApi.md#delete_azure_subscription) | **DELETE** /kubernetes-protection/entities/accounts/azure/v1 | Deletes a new Azure Subscription in our system |
| [**get_aws_accounts_mixin0**](KubernetesProtectionApi.md#get_aws_accounts_mixin0) | **GET** /kubernetes-protection/entities/accounts/aws/v1 | Provides a list of AWS accounts. |
| [**get_azure_install_script**](KubernetesProtectionApi.md#get_azure_install_script) | **GET** /kubernetes-protection/entities/user-script/azure/v1 | Provides the script to run for a given tenant id and subscription IDs |
| [**get_azure_tenant_config**](KubernetesProtectionApi.md#get_azure_tenant_config) | **GET** /kubernetes-protection/entities/config/azure/v1 | Gets the Azure tenant Config |
| [**get_azure_tenant_ids**](KubernetesProtectionApi.md#get_azure_tenant_ids) | **GET** /kubernetes-protection/entities/tenants/azure/v1 | Provides all the azure subscriptions and tenants |
| [**get_clusters**](KubernetesProtectionApi.md#get_clusters) | **GET** /kubernetes-protection/entities/kubernetes/clusters/v1 | Provides the clusters acknowledged by the Kubernetes Protection service |
| [**get_combined_cloud_clusters**](KubernetesProtectionApi.md#get_combined_cloud_clusters) | **GET** /kubernetes-protection/entities/cloud_cluster/v1 | Returns a combined list of provisioned cloud accounts and known kubernetes clusters |
| [**get_helm_values_yaml**](KubernetesProtectionApi.md#get_helm_values_yaml) | **GET** /kubernetes-protection/entities/integration/agent/v1 | Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart |
| [**get_locations**](KubernetesProtectionApi.md#get_locations) | **GET** /kubernetes-protection/entities/cloud-locations/v1 | Provides the cloud locations acknowledged by the Kubernetes Protection service |
| [**get_static_scripts**](KubernetesProtectionApi.md#get_static_scripts) | **GET** /kubernetes-protection/entities/gen/scripts/v1 | Gets static bash scripts that are used during registration |
| [**list_azure_accounts**](KubernetesProtectionApi.md#list_azure_accounts) | **GET** /kubernetes-protection/entities/accounts/azure/v1 | Provides the azure subscriptions registered to Kubernetes Protection |
| [**patch_azure_service_principal**](KubernetesProtectionApi.md#patch_azure_service_principal) | **PATCH** /kubernetes-protection/entities/service-principal/azure/v1 | Adds the client ID for the given tenant ID to our system |
| [**regenerate_api_key**](KubernetesProtectionApi.md#regenerate_api_key) | **POST** /kubernetes-protection/entities/integration/api-key/v1 | Regenerate API key for docker registry integrations |
| [**trigger_scan**](KubernetesProtectionApi.md#trigger_scan) | **POST** /kubernetes-protection/entities/scan/trigger/v1 | Triggers a dry run or a full scan of a customer&#39;s kubernetes footprint |
| [**update_aws_account**](KubernetesProtectionApi.md#update_aws_account) | **PATCH** /kubernetes-protection/entities/accounts/aws/v1 | Updates the AWS account per the query parameters provided |


## create_aws_account

> <K8sregCreateAWSAccResp> create_aws_account(body)

Creates a new AWS account in our system for a customer and generates the installation script

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
body = Falcon::K8sregCreateAWSAccReq.new({resources: [Falcon::K8sregCreateAWSAccReqResources.new({account_id: 'account_id_example', region: 'region_example'})]}) # K8sregCreateAWSAccReq | 

begin
  # Creates a new AWS account in our system for a customer and generates the installation script
  result = api_instance.create_aws_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->create_aws_account: #{e}"
end
```

#### Using the create_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregCreateAWSAccResp>, Integer, Hash)> create_aws_account_with_http_info(body)

```ruby
begin
  # Creates a new AWS account in our system for a customer and generates the installation script
  data, status_code, headers = api_instance.create_aws_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregCreateAWSAccResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->create_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**K8sregCreateAWSAccReq**](K8sregCreateAWSAccReq.md) |  |  |

### Return type

[**K8sregCreateAWSAccResp**](K8sregCreateAWSAccResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_azure_subscription

> <MsaBaseEntitiesResponse> create_azure_subscription(body)

Creates a new Azure Subscription in our system

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
body = Falcon::K8sregCreateAzureSubReq.new({resources: [Falcon::K8sregAzureSubEntity.new({subscription_id: 'subscription_id_example', tenant_id: 'tenant_id_example'})]}) # K8sregCreateAzureSubReq | 

begin
  # Creates a new Azure Subscription in our system
  result = api_instance.create_azure_subscription(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->create_azure_subscription: #{e}"
end
```

#### Using the create_azure_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaBaseEntitiesResponse>, Integer, Hash)> create_azure_subscription_with_http_info(body)

```ruby
begin
  # Creates a new Azure Subscription in our system
  data, status_code, headers = api_instance.create_azure_subscription_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaBaseEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->create_azure_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**K8sregCreateAzureSubReq**](K8sregCreateAzureSubReq.md) |  |  |

### Return type

[**MsaBaseEntitiesResponse**](MsaBaseEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_aws_accounts_mixin0

> <MsaspecMetaInfo> delete_aws_accounts_mixin0(ids)

Delete AWS accounts.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
ids = ['inner_example'] # Array<String> | AWS Account IDs

begin
  # Delete AWS accounts.
  result = api_instance.delete_aws_accounts_mixin0(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->delete_aws_accounts_mixin0: #{e}"
end
```

#### Using the delete_aws_accounts_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecMetaInfo>, Integer, Hash)> delete_aws_accounts_mixin0_with_http_info(ids)

```ruby
begin
  # Delete AWS accounts.
  data, status_code, headers = api_instance.delete_aws_accounts_mixin0_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecMetaInfo>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->delete_aws_accounts_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS Account IDs |  |

### Return type

[**MsaspecMetaInfo**](MsaspecMetaInfo.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_azure_subscription

> <MsaBaseEntitiesResponse> delete_azure_subscription(opts)

Deletes a new Azure Subscription in our system

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  ids: ['inner_example'] # Array<String> | Azure Subscription IDs
}

begin
  # Deletes a new Azure Subscription in our system
  result = api_instance.delete_azure_subscription(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->delete_azure_subscription: #{e}"
end
```

#### Using the delete_azure_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaBaseEntitiesResponse>, Integer, Hash)> delete_azure_subscription_with_http_info(opts)

```ruby
begin
  # Deletes a new Azure Subscription in our system
  data, status_code, headers = api_instance.delete_azure_subscription_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaBaseEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->delete_azure_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Azure Subscription IDs | [optional] |

### Return type

[**MsaBaseEntitiesResponse**](MsaBaseEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aws_accounts_mixin0

> <K8sregGetAWSAccountsResp> get_aws_accounts_mixin0(opts)

Provides a list of AWS accounts.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  ids: ['inner_example'], # Array<String> | AWS Account IDs
  is_horizon_acct: 'false', # String | Filter by whether an account originates from Horizon or not
  status: 'operational', # String | Filter by account status
  limit: 56, # Integer | Limit returned accounts
  offset: 56 # Integer | Offset returned accounts
}

begin
  # Provides a list of AWS accounts.
  result = api_instance.get_aws_accounts_mixin0(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_aws_accounts_mixin0: #{e}"
end
```

#### Using the get_aws_accounts_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetAWSAccountsResp>, Integer, Hash)> get_aws_accounts_mixin0_with_http_info(opts)

```ruby
begin
  # Provides a list of AWS accounts.
  data, status_code, headers = api_instance.get_aws_accounts_mixin0_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetAWSAccountsResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_aws_accounts_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS Account IDs | [optional] |
| **is_horizon_acct** | **String** | Filter by whether an account originates from Horizon or not | [optional] |
| **status** | **String** | Filter by account status | [optional] |
| **limit** | **Integer** | Limit returned accounts | [optional] |
| **offset** | **Integer** | Offset returned accounts | [optional] |

### Return type

[**K8sregGetAWSAccountsResp**](K8sregGetAWSAccountsResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_azure_install_script

> <K8sregGetAzureBashScriptResp> get_azure_install_script(opts)

Provides the script to run for a given tenant id and subscription IDs

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  id: 'id_example', # String | Azure Tenant ID
  subscription_id: ['inner_example'] # Array<String> | Azure Subscription IDs
}

begin
  # Provides the script to run for a given tenant id and subscription IDs
  result = api_instance.get_azure_install_script(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_azure_install_script: #{e}"
end
```

#### Using the get_azure_install_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetAzureBashScriptResp>, Integer, Hash)> get_azure_install_script_with_http_info(opts)

```ruby
begin
  # Provides the script to run for a given tenant id and subscription IDs
  data, status_code, headers = api_instance.get_azure_install_script_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetAzureBashScriptResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_azure_install_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Azure Tenant ID | [optional] |
| **subscription_id** | [**Array&lt;String&gt;**](String.md) | Azure Subscription IDs | [optional] |

### Return type

[**K8sregGetAzureBashScriptResp**](K8sregGetAzureBashScriptResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_azure_tenant_config

> <K8sregGetAzureTenantConfigResp> get_azure_tenant_config(opts)

Gets the Azure tenant Config

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  ids: ['inner_example'], # Array<String> | Azure Tenant IDs
  limit: 56, # Integer | Limit returned accounts
  offset: 56 # Integer | Offset returned accounts
}

begin
  # Gets the Azure tenant Config
  result = api_instance.get_azure_tenant_config(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_azure_tenant_config: #{e}"
end
```

#### Using the get_azure_tenant_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetAzureTenantConfigResp>, Integer, Hash)> get_azure_tenant_config_with_http_info(opts)

```ruby
begin
  # Gets the Azure tenant Config
  data, status_code, headers = api_instance.get_azure_tenant_config_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetAzureTenantConfigResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_azure_tenant_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Azure Tenant IDs | [optional] |
| **limit** | **Integer** | Limit returned accounts | [optional] |
| **offset** | **Integer** | Offset returned accounts | [optional] |

### Return type

[**K8sregGetAzureTenantConfigResp**](K8sregGetAzureTenantConfigResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_azure_tenant_ids

> <K8sregGetAzureTenantInfoResp> get_azure_tenant_ids(opts)

Provides all the azure subscriptions and tenants

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  ids: ['inner_example'], # Array<String> | Azure Tenant IDs
  status: 'Not Installed', # String | Cluster Status
  limit: 56, # Integer | Limit returned accounts
  offset: 56 # Integer | Offset returned accounts
}

begin
  # Provides all the azure subscriptions and tenants
  result = api_instance.get_azure_tenant_ids(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_azure_tenant_ids: #{e}"
end
```

#### Using the get_azure_tenant_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetAzureTenantInfoResp>, Integer, Hash)> get_azure_tenant_ids_with_http_info(opts)

```ruby
begin
  # Provides all the azure subscriptions and tenants
  data, status_code, headers = api_instance.get_azure_tenant_ids_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetAzureTenantInfoResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_azure_tenant_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Azure Tenant IDs | [optional] |
| **status** | **String** | Cluster Status | [optional] |
| **limit** | **Integer** | Limit returned accounts | [optional] |
| **offset** | **Integer** | Offset returned accounts | [optional] |

### Return type

[**K8sregGetAzureTenantInfoResp**](K8sregGetAzureTenantInfoResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_clusters

> <K8sregGetClustersResp> get_clusters(opts)

Provides the clusters acknowledged by the Kubernetes Protection service

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  cluster_names: ['inner_example'], # Array<String> | Cluster name. For EKS it will be cluster ARN.
  status: ['inner_example'], # Array<String> | Cluster Status
  account_ids: ['inner_example'], # Array<String> | Cluster Account id. For EKS it will be AWS account ID.
  locations: ['inner_example'], # Array<String> | Cloud location
  cluster_service: 'aks', # String | Cluster Service
  limit: 56, # Integer | Limit returned accounts
  offset: 56 # Integer | Offset returned accounts
}

begin
  # Provides the clusters acknowledged by the Kubernetes Protection service
  result = api_instance.get_clusters(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_clusters: #{e}"
end
```

#### Using the get_clusters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetClustersResp>, Integer, Hash)> get_clusters_with_http_info(opts)

```ruby
begin
  # Provides the clusters acknowledged by the Kubernetes Protection service
  data, status_code, headers = api_instance.get_clusters_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetClustersResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_clusters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_names** | [**Array&lt;String&gt;**](String.md) | Cluster name. For EKS it will be cluster ARN. | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | Cluster Status | [optional] |
| **account_ids** | [**Array&lt;String&gt;**](String.md) | Cluster Account id. For EKS it will be AWS account ID. | [optional] |
| **locations** | [**Array&lt;String&gt;**](String.md) | Cloud location | [optional] |
| **cluster_service** | **String** | Cluster Service | [optional] |
| **limit** | **Integer** | Limit returned accounts | [optional] |
| **offset** | **Integer** | Offset returned accounts | [optional] |

### Return type

[**K8sregGetClustersResp**](K8sregGetClustersResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_combined_cloud_clusters

> <K8sregListClusterCloudResp> get_combined_cloud_clusters(opts)

Returns a combined list of provisioned cloud accounts and known kubernetes clusters

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  locations: ['inner_example'], # Array<String> | Cloud location
  ids: ['inner_example'], # Array<String> | Cloud Account IDs
  cluster_service: ['inner_example'], # Array<String> | Cluster Service
  cluster_status: ['inner_example'], # Array<String> | Cluster Status
  limit: 56, # Integer | Limit returned accounts
  offset: 56 # Integer | Offset returned accounts
}

begin
  # Returns a combined list of provisioned cloud accounts and known kubernetes clusters
  result = api_instance.get_combined_cloud_clusters(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_combined_cloud_clusters: #{e}"
end
```

#### Using the get_combined_cloud_clusters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregListClusterCloudResp>, Integer, Hash)> get_combined_cloud_clusters_with_http_info(opts)

```ruby
begin
  # Returns a combined list of provisioned cloud accounts and known kubernetes clusters
  data, status_code, headers = api_instance.get_combined_cloud_clusters_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregListClusterCloudResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_combined_cloud_clusters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locations** | [**Array&lt;String&gt;**](String.md) | Cloud location | [optional] |
| **ids** | [**Array&lt;String&gt;**](String.md) | Cloud Account IDs | [optional] |
| **cluster_service** | [**Array&lt;String&gt;**](String.md) | Cluster Service | [optional] |
| **cluster_status** | [**Array&lt;String&gt;**](String.md) | Cluster Status | [optional] |
| **limit** | **Integer** | Limit returned accounts | [optional] |
| **offset** | **Integer** | Offset returned accounts | [optional] |

### Return type

[**K8sregListClusterCloudResp**](K8sregListClusterCloudResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_helm_values_yaml

> Object get_helm_values_yaml(cluster_name, opts)

Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
cluster_name = 'cluster_name_example' # String | Cluster name. For EKS it will be cluster ARN.
opts = {
  is_self_managed_cluster: true # Boolean | Set to true if the cluster is not managed by a cloud provider, false if it is.
}

begin
  # Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart
  result = api_instance.get_helm_values_yaml(cluster_name, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_helm_values_yaml: #{e}"
end
```

#### Using the get_helm_values_yaml_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_helm_values_yaml_with_http_info(cluster_name, opts)

```ruby
begin
  # Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart
  data, status_code, headers = api_instance.get_helm_values_yaml_with_http_info(cluster_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_helm_values_yaml_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_name** | **String** | Cluster name. For EKS it will be cluster ARN. |  |
| **is_self_managed_cluster** | **Boolean** | Set to true if the cluster is not managed by a cloud provider, false if it is. | [optional] |

### Return type

**Object**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/yaml


## get_locations

> <K8sregGetLocationsResp> get_locations(opts)

Provides the cloud locations acknowledged by the Kubernetes Protection service

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  clouds: ['inner_example'] # Array<String> | Cloud Provider
}

begin
  # Provides the cloud locations acknowledged by the Kubernetes Protection service
  result = api_instance.get_locations(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_locations: #{e}"
end
```

#### Using the get_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetLocationsResp>, Integer, Hash)> get_locations_with_http_info(opts)

```ruby
begin
  # Provides the cloud locations acknowledged by the Kubernetes Protection service
  data, status_code, headers = api_instance.get_locations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetLocationsResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clouds** | [**Array&lt;String&gt;**](String.md) | Cloud Provider | [optional] |

### Return type

[**K8sregGetLocationsResp**](K8sregGetLocationsResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_static_scripts

> <K8sregGetScriptsResp> get_static_scripts

Gets static bash scripts that are used during registration

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new

begin
  # Gets static bash scripts that are used during registration
  result = api_instance.get_static_scripts
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_static_scripts: #{e}"
end
```

#### Using the get_static_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetScriptsResp>, Integer, Hash)> get_static_scripts_with_http_info

```ruby
begin
  # Gets static bash scripts that are used during registration
  data, status_code, headers = api_instance.get_static_scripts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetScriptsResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_static_scripts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**K8sregGetScriptsResp**](K8sregGetScriptsResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_azure_accounts

> <K8sregGetAzureSubscriptionsResp> list_azure_accounts(opts)

Provides the azure subscriptions registered to Kubernetes Protection

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  ids: ['inner_example'], # Array<String> | Azure Tenant IDs
  subscription_id: ['inner_example'], # Array<String> | Azure Subscription IDs
  status: 'operational', # String | Filter by account status
  is_horizon_acct: 'false', # String | Filter by whether an account originates from Horizon or not
  limit: 56, # Integer | Limit returned accounts
  offset: 56 # Integer | Offset returned accounts
}

begin
  # Provides the azure subscriptions registered to Kubernetes Protection
  result = api_instance.list_azure_accounts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->list_azure_accounts: #{e}"
end
```

#### Using the list_azure_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetAzureSubscriptionsResp>, Integer, Hash)> list_azure_accounts_with_http_info(opts)

```ruby
begin
  # Provides the azure subscriptions registered to Kubernetes Protection
  data, status_code, headers = api_instance.list_azure_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetAzureSubscriptionsResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->list_azure_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Azure Tenant IDs | [optional] |
| **subscription_id** | [**Array&lt;String&gt;**](String.md) | Azure Subscription IDs | [optional] |
| **status** | **String** | Filter by account status | [optional] |
| **is_horizon_acct** | **String** | Filter by whether an account originates from Horizon or not | [optional] |
| **limit** | **Integer** | Limit returned accounts | [optional] |
| **offset** | **Integer** | Offset returned accounts | [optional] |

### Return type

[**K8sregGetAzureSubscriptionsResp**](K8sregGetAzureSubscriptionsResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_azure_service_principal

> <K8sregGetAzureTenantConfigResp> patch_azure_service_principal(id, client_id)

Adds the client ID for the given tenant ID to our system

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
id = 'id_example' # String | Azure Tenant ID
client_id = 'client_id_example' # String | Azure Client ID

begin
  # Adds the client ID for the given tenant ID to our system
  result = api_instance.patch_azure_service_principal(id, client_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->patch_azure_service_principal: #{e}"
end
```

#### Using the patch_azure_service_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregGetAzureTenantConfigResp>, Integer, Hash)> patch_azure_service_principal_with_http_info(id, client_id)

```ruby
begin
  # Adds the client ID for the given tenant ID to our system
  data, status_code, headers = api_instance.patch_azure_service_principal_with_http_info(id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregGetAzureTenantConfigResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->patch_azure_service_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Azure Tenant ID |  |
| **client_id** | **String** | Azure Client ID |  |

### Return type

[**K8sregGetAzureTenantConfigResp**](K8sregGetAzureTenantConfigResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## regenerate_api_key

> <K8sregRegenAPIKeyResp> regenerate_api_key

Regenerate API key for docker registry integrations

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new

begin
  # Regenerate API key for docker registry integrations
  result = api_instance.regenerate_api_key
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->regenerate_api_key: #{e}"
end
```

#### Using the regenerate_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<K8sregRegenAPIKeyResp>, Integer, Hash)> regenerate_api_key_with_http_info

```ruby
begin
  # Regenerate API key for docker registry integrations
  data, status_code, headers = api_instance.regenerate_api_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregRegenAPIKeyResp>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->regenerate_api_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**K8sregRegenAPIKeyResp**](K8sregRegenAPIKeyResp.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_scan

> <MsaBaseEntitiesResponse> trigger_scan(scan_type)

Triggers a dry run or a full scan of a customer's kubernetes footprint

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
scan_type = 'cluster-refresh' # String | Scan Type to do

begin
  # Triggers a dry run or a full scan of a customer's kubernetes footprint
  result = api_instance.trigger_scan(scan_type)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->trigger_scan: #{e}"
end
```

#### Using the trigger_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaBaseEntitiesResponse>, Integer, Hash)> trigger_scan_with_http_info(scan_type)

```ruby
begin
  # Triggers a dry run or a full scan of a customer's kubernetes footprint
  data, status_code, headers = api_instance.trigger_scan_with_http_info(scan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaBaseEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->trigger_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scan_type** | **String** | Scan Type to do | [default to &#39;dry-run&#39;] |

### Return type

[**MsaBaseEntitiesResponse**](MsaBaseEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_aws_account

> <MsaBaseEntitiesResponse> update_aws_account(ids, opts)

Updates the AWS account per the query parameters provided

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
ids = ['inner_example'] # Array<String> | AWS Account ID
opts = {
  region: 'region_example' # String | Default Region for Account Automation
}

begin
  # Updates the AWS account per the query parameters provided
  result = api_instance.update_aws_account(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->update_aws_account: #{e}"
end
```

#### Using the update_aws_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaBaseEntitiesResponse>, Integer, Hash)> update_aws_account_with_http_info(ids, opts)

```ruby
begin
  # Updates the AWS account per the query parameters provided
  data, status_code, headers = api_instance.update_aws_account_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaBaseEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->update_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS Account ID |  |
| **region** | **String** | Default Region for Account Automation | [optional] |

### Return type

[**MsaBaseEntitiesResponse**](MsaBaseEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


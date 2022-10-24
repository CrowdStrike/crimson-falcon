# Falcon::KubernetesProtectionApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_aws_account**](KubernetesProtectionApi.md#create_aws_account) | **POST** /kubernetes-protection/entities/accounts/aws/v1 | Creates a new AWS account in our system for a customer and generates the installation script |
| [**delete_aws_accounts_mixin0**](KubernetesProtectionApi.md#delete_aws_accounts_mixin0) | **DELETE** /kubernetes-protection/entities/accounts/aws/v1 | Delete AWS accounts. |
| [**get_aws_accounts_mixin0**](KubernetesProtectionApi.md#get_aws_accounts_mixin0) | **GET** /kubernetes-protection/entities/accounts/aws/v1 | Provides a list of AWS accounts. |
| [**get_clusters**](KubernetesProtectionApi.md#get_clusters) | **GET** /kubernetes-protection/entities/kubernetes/clusters/v1 | Provides the clusters acknowledged by the Kubernetes Protection service |
| [**get_helm_values_yaml**](KubernetesProtectionApi.md#get_helm_values_yaml) | **GET** /kubernetes-protection/entities/integration/agent/v1 | Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart |
| [**get_locations**](KubernetesProtectionApi.md#get_locations) | **GET** /kubernetes-protection/entities/cloud-locations/v1 | Provides the cloud locations acknowledged by the Kubernetes Protection service |
| [**regenerate_api_key**](KubernetesProtectionApi.md#regenerate_api_key) | **POST** /kubernetes-protection/entities/integration/api-key/v1 | Regenerate API key for docker registry integrations |
| [**trigger_scan**](KubernetesProtectionApi.md#trigger_scan) | **POST** /kubernetes-protection/entities/scan/trigger/v1 | Triggers a dry run or a full scan of a customer&#39;s kubernetes footprint |
| [**update_aws_account**](KubernetesProtectionApi.md#update_aws_account) | **PATCH** /kubernetes-protection/entities/accounts/aws/v1 | Updates the AWS account per the query parameters provided |


## create_aws_account

> <K8sregCreateAWSAccReq> create_aws_account(body)

Creates a new AWS account in our system for a customer and generates the installation script

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
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

> <Array(<K8sregCreateAWSAccReq>, Integer, Hash)> create_aws_account_with_http_info(body)

```ruby
begin
  # Creates a new AWS account in our system for a customer and generates the installation script
  data, status_code, headers = api_instance.create_aws_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <K8sregCreateAWSAccReq>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->create_aws_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**K8sregCreateAWSAccReq**](K8sregCreateAWSAccReq.md) |  |  |

### Return type

[**K8sregCreateAWSAccReq**](K8sregCreateAWSAccReq.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_aws_accounts_mixin0

> <MsaMetaInfo> delete_aws_accounts_mixin0(ids)

Delete AWS accounts.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
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

> <Array(<MsaMetaInfo>, Integer, Hash)> delete_aws_accounts_mixin0_with_http_info(ids)

```ruby
begin
  # Delete AWS accounts.
  data, status_code, headers = api_instance.delete_aws_accounts_mixin0_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaMetaInfo>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->delete_aws_accounts_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS Account IDs |  |

### Return type

[**MsaMetaInfo**](MsaMetaInfo.md)

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
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  ids: ['inner_example'], # Array<String> | AWS Account IDs
  status: 'status_example', # String | Filter by account status
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


## get_clusters

> <K8sregGetClustersResp> get_clusters(opts)

Provides the clusters acknowledged by the Kubernetes Protection service

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
opts = {
  cluster_names: ['inner_example'], # Array<String> | Cluster name. For EKS it will be cluster ARN.
  account_ids: ['inner_example'], # Array<String> | Cluster Account id. For EKS it will be AWS account ID.
  locations: ['inner_example'], # Array<String> | Cloud location
  cluster_service: 'eks', # String | Cluster Service
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


## get_helm_values_yaml

> Object get_helm_values_yaml(cluster_name)

Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::KubernetesProtectionApi.new
cluster_name = 'cluster_name_example' # String | Cluster name. For EKS it will be cluster ARN.

begin
  # Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart
  result = api_instance.get_helm_values_yaml(cluster_name)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesProtectionApi->get_helm_values_yaml: #{e}"
end
```

#### Using the get_helm_values_yaml_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_helm_values_yaml_with_http_info(cluster_name)

```ruby
begin
  # Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart
  data, status_code, headers = api_instance.get_helm_values_yaml_with_http_info(cluster_name)
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
require 'crowdstrike-falcon'
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


## regenerate_api_key

> <K8sregRegenAPIKeyResp> regenerate_api_key

Regenerate API key for docker registry integrations

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
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
require 'crowdstrike-falcon'
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
require 'crowdstrike-falcon'
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


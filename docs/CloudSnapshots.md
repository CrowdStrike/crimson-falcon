# Falcon::CloudSnapshots

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_deployment_entity**](CloudSnapshots.md#create_deployment_entity) | **POST** /snapshots/entities/deployments/v1 | Launch a snapshot scan for a given cloud asset |
| [**get_credentials_mixin0_mixin60**](CloudSnapshots.md#get_credentials_mixin0_mixin60) | **GET** /snapshots/entities/image-registry-credentials/v1 | Gets the registry credentials |
| [**get_scan_report**](CloudSnapshots.md#get_scan_report) | **GET** /snapshots/entities/scanreports/v1 | retrieve the scan report for an instance |
| [**read_deployments_combined**](CloudSnapshots.md#read_deployments_combined) | **GET** /snapshots/combined/deployments/v1 | Retrieve snapshot jobs identified by the provided IDs |
| [**read_deployments_entities**](CloudSnapshots.md#read_deployments_entities) | **GET** /snapshots/entities/deployments/v1 | Retrieve snapshot jobs identified by the provided IDs |
| [**register_cspm_snapshot_account**](CloudSnapshots.md#register_cspm_snapshot_account) | **POST** /snapshots/entities/accounts/v1 | Register customer cloud account for snapshot scanning |


## create_deployment_entity

> <DeploymentsEntityResponse> create_deployment_entity(body)

Launch a snapshot scan for a given cloud asset

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

api_instance = Falcon::CloudSnapshots.new
body = Falcon::ModelsCreateDeploymentInput.new({resources: [Falcon::ModelsDeploymentResource.new({account_id: 'account_id_example', asset_identifier: 'asset_identifier_example', cloud_provider: 'cloud_provider_example', region: 'region_example'})]}) # ModelsCreateDeploymentInput | 

begin
  # Launch a snapshot scan for a given cloud asset
  result = api_instance.create_deployment_entity(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->create_deployment_entity: #{e}"
end
```

#### Using the create_deployment_entity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentsEntityResponse>, Integer, Hash)> create_deployment_entity_with_http_info(body)

```ruby
begin
  # Launch a snapshot scan for a given cloud asset
  data, status_code, headers = api_instance.create_deployment_entity_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentsEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->create_deployment_entity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsCreateDeploymentInput**](ModelsCreateDeploymentInput.md) |  |  |

### Return type

[**DeploymentsEntityResponse**](DeploymentsEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_credentials_mixin0_mixin60

> <ModelsRegistryCredentialsResponse> get_credentials_mixin0_mixin60

Gets the registry credentials

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

api_instance = Falcon::CloudSnapshots.new

begin
  # Gets the registry credentials
  result = api_instance.get_credentials_mixin0_mixin60
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->get_credentials_mixin0_mixin60: #{e}"
end
```

#### Using the get_credentials_mixin0_mixin60_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsRegistryCredentialsResponse>, Integer, Hash)> get_credentials_mixin0_mixin60_with_http_info

```ruby
begin
  # Gets the registry credentials
  data, status_code, headers = api_instance.get_credentials_mixin0_mixin60_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsRegistryCredentialsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->get_credentials_mixin0_mixin60_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelsRegistryCredentialsResponse**](ModelsRegistryCredentialsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scan_report

> <ScanreportsEntitiesResponse> get_scan_report(ids)

retrieve the scan report for an instance

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

api_instance = Falcon::CloudSnapshots.new
ids = ['inner_example'] # Array<String> | the instance identifiers to fetch the report for

begin
  # retrieve the scan report for an instance
  result = api_instance.get_scan_report(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->get_scan_report: #{e}"
end
```

#### Using the get_scan_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScanreportsEntitiesResponse>, Integer, Hash)> get_scan_report_with_http_info(ids)

```ruby
begin
  # retrieve the scan report for an instance
  data, status_code, headers = api_instance.get_scan_report_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScanreportsEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->get_scan_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | the instance identifiers to fetch the report for |  |

### Return type

[**ScanreportsEntitiesResponse**](ScanreportsEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_deployments_combined

> <DeploymentsEntityResponse> read_deployments_combined(opts)

Retrieve snapshot jobs identified by the provided IDs

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

api_instance = Falcon::CloudSnapshots.new
opts = {
  filter: 'filter_example', # String | Search snapshot jobs using a query in Falcon Query Language (FQL). Supported filters:  account_id,asset_identifier,cloud_provider,region,status
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on. Supported columns:  [account_id asset_identifier cloud_provider instance_type last_updated_timestamp region status]
}

begin
  # Retrieve snapshot jobs identified by the provided IDs
  result = api_instance.read_deployments_combined(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->read_deployments_combined: #{e}"
end
```

#### Using the read_deployments_combined_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentsEntityResponse>, Integer, Hash)> read_deployments_combined_with_http_info(opts)

```ruby
begin
  # Retrieve snapshot jobs identified by the provided IDs
  data, status_code, headers = api_instance.read_deployments_combined_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentsEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->read_deployments_combined_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search snapshot jobs using a query in Falcon Query Language (FQL). Supported filters:  account_id,asset_identifier,cloud_provider,region,status | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns:  [account_id asset_identifier cloud_provider instance_type last_updated_timestamp region status] | [optional] |

### Return type

[**DeploymentsEntityResponse**](DeploymentsEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_deployments_entities

> <DeploymentsEntityResponse> read_deployments_entities(opts)

Retrieve snapshot jobs identified by the provided IDs

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

api_instance = Falcon::CloudSnapshots.new
opts = {
  ids: ['inner_example'] # Array<String> | Search snapshot jobs by ids - The maximum amount is 100 IDs
}

begin
  # Retrieve snapshot jobs identified by the provided IDs
  result = api_instance.read_deployments_entities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->read_deployments_entities: #{e}"
end
```

#### Using the read_deployments_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentsEntityResponse>, Integer, Hash)> read_deployments_entities_with_http_info(opts)

```ruby
begin
  # Retrieve snapshot jobs identified by the provided IDs
  data, status_code, headers = api_instance.read_deployments_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentsEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->read_deployments_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Search snapshot jobs by ids - The maximum amount is 100 IDs | [optional] |

### Return type

[**DeploymentsEntityResponse**](DeploymentsEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## register_cspm_snapshot_account

> <ModelsAccountStatusResponse> register_cspm_snapshot_account(body)

Register customer cloud account for snapshot scanning

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

api_instance = Falcon::CloudSnapshots.new
body = Falcon::ModelsAccountEntitiesInput.new({aws_accounts: [Falcon::DomainAWSAccountInput.new({account_number: 'account_number_example', batch_regions: [Falcon::DomainAWSBatchClusterRegion.new({job_definition_name: 'job_definition_name_example', job_queue: 'job_queue_example', region: 'region_example'})], iam_external_id: 'iam_external_id_example', iam_role_arn: 'iam_role_arn_example', kms_alias: 'kms_alias_example', processing_account: 'processing_account_example'})]}) # ModelsAccountEntitiesInput | 

begin
  # Register customer cloud account for snapshot scanning
  result = api_instance.register_cspm_snapshot_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->register_cspm_snapshot_account: #{e}"
end
```

#### Using the register_cspm_snapshot_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsAccountStatusResponse>, Integer, Hash)> register_cspm_snapshot_account_with_http_info(body)

```ruby
begin
  # Register customer cloud account for snapshot scanning
  data, status_code, headers = api_instance.register_cspm_snapshot_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsAccountStatusResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshots->register_cspm_snapshot_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsAccountEntitiesInput**](ModelsAccountEntitiesInput.md) |  |  |

### Return type

[**ModelsAccountStatusResponse**](ModelsAccountStatusResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


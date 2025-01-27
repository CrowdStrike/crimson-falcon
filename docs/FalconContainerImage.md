# Falcon::FalconContainerImage

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_registry_entities**](FalconContainerImage.md#create_registry_entities) | **POST** /container-security/entities/registries/v1 | Create a registry entity using the provided details |
| [**delete_registry_entities**](FalconContainerImage.md#delete_registry_entities) | **DELETE** /container-security/entities/registries/v1 | Delete the registry entity identified by the entity UUID |
| [**download_export_file**](FalconContainerImage.md#download_export_file) | **GET** /container-security/entities/exports/files/v1 | Download an export file |
| [**launch_export_job**](FalconContainerImage.md#launch_export_job) | **POST** /container-security/entities/exports/v1 | Launch an export job of a Container Security resource. Maximum of 1 job in progress per resource |
| [**query_export_jobs**](FalconContainerImage.md#query_export_jobs) | **GET** /container-security/queries/exports/v1 | Query export jobs entities |
| [**read_export_jobs**](FalconContainerImage.md#read_export_jobs) | **GET** /container-security/entities/exports/v1 | Read export jobs entities |
| [**read_registry_entities**](FalconContainerImage.md#read_registry_entities) | **GET** /container-security/queries/registries/v1 | Retrieves a list of registry entities identified by the customer id. Maximum page size: 5,000 |
| [**read_registry_entities_by_uuid**](FalconContainerImage.md#read_registry_entities_by_uuid) | **GET** /container-security/entities/registries/v1 | Retrieves a list of registry entities by the provided UUIDs. Maximum page size: 100 |
| [**update_registry_entities**](FalconContainerImage.md#update_registry_entities) | **PATCH** /container-security/entities/registries/v1 | Update the registry entity, as identified by the entity UUID, using the provided details |


## create_registry_entities

> <DomainExternalRegistryResponse> create_registry_entities(body)

Create a registry entity using the provided details

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

api_instance = Falcon::FalconContainerImage.new
body = Falcon::RegistryassessmentExternalRegistryPayload.new({credential: Falcon::RegistryassessmentExternalCredPayload.new({details: 3.56}), type: 'type_example', url: 'url_example'}) # RegistryassessmentExternalRegistryPayload | 

begin
  # Create a registry entity using the provided details
  result = api_instance.create_registry_entities(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->create_registry_entities: #{e}"
end
```

#### Using the create_registry_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalRegistryResponse>, Integer, Hash)> create_registry_entities_with_http_info(body)

```ruby
begin
  # Create a registry entity using the provided details
  data, status_code, headers = api_instance.create_registry_entities_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalRegistryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->create_registry_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistryassessmentExternalRegistryPayload**](RegistryassessmentExternalRegistryPayload.md) |  |  |

### Return type

[**DomainExternalRegistryResponse**](DomainExternalRegistryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_registry_entities

> <DomainExternalRegistryListResponse> delete_registry_entities(ids)

Delete the registry entity identified by the entity UUID

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

api_instance = Falcon::FalconContainerImage.new
ids = 'ids_example' # String | Registry entity UUID

begin
  # Delete the registry entity identified by the entity UUID
  result = api_instance.delete_registry_entities(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->delete_registry_entities: #{e}"
end
```

#### Using the delete_registry_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalRegistryListResponse>, Integer, Hash)> delete_registry_entities_with_http_info(ids)

```ruby
begin
  # Delete the registry entity identified by the entity UUID
  data, status_code, headers = api_instance.delete_registry_entities_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalRegistryListResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->delete_registry_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Registry entity UUID |  |

### Return type

[**DomainExternalRegistryListResponse**](DomainExternalRegistryListResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_export_file

> Array&lt;Integer&gt; download_export_file(id)

Download an export file

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

api_instance = Falcon::FalconContainerImage.new
id = 'id_example' # String | Export job ID.

begin
  # Download an export file
  result = api_instance.download_export_file(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->download_export_file: #{e}"
end
```

#### Using the download_export_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> download_export_file_with_http_info(id)

```ruby
begin
  # Download an export file
  data, status_code, headers = api_instance.download_export_file_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->download_export_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Export job ID. |  |

### Return type

**Array&lt;Integer&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/octet-stream


## launch_export_job

> <ExportsLaunchExportResponse> launch_export_job(body)

Launch an export job of a Container Security resource. Maximum of 1 job in progress per resource

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

api_instance = Falcon::FalconContainerImage.new
body = Falcon::ExportsLaunchExportRequest.new({format: 'format_example', resource: 'resource_example', sort: 'sort_example'}) # ExportsLaunchExportRequest | Supported resources: - `assets.clusters` - `assets.containers` - `assets.deployments` - `assets.images` - `assets.namespaces` - `assets.nodes` - `assets.pods` - `images.images-assessment-detections-expanded` - `images.images-assessment-expanded` - `images.images-assessment-vulnerabilities-expanded` - `images.images-assessment` - `images.images-detections` - `images.packages` - `images.vulnerabilities` - `investigate.container-alerts` - `investigate.drift-indicators` - `investigate.kubernetes-ioms` - `investigate.runtime-detections` - `investigate.unidentified-containers` - `network.events` - `policies.exclusions`

begin
  # Launch an export job of a Container Security resource. Maximum of 1 job in progress per resource
  result = api_instance.launch_export_job(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->launch_export_job: #{e}"
end
```

#### Using the launch_export_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportsLaunchExportResponse>, Integer, Hash)> launch_export_job_with_http_info(body)

```ruby
begin
  # Launch an export job of a Container Security resource. Maximum of 1 job in progress per resource
  data, status_code, headers = api_instance.launch_export_job_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportsLaunchExportResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->launch_export_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ExportsLaunchExportRequest**](ExportsLaunchExportRequest.md) | Supported resources: - &#x60;assets.clusters&#x60; - &#x60;assets.containers&#x60; - &#x60;assets.deployments&#x60; - &#x60;assets.images&#x60; - &#x60;assets.namespaces&#x60; - &#x60;assets.nodes&#x60; - &#x60;assets.pods&#x60; - &#x60;images.images-assessment-detections-expanded&#x60; - &#x60;images.images-assessment-expanded&#x60; - &#x60;images.images-assessment-vulnerabilities-expanded&#x60; - &#x60;images.images-assessment&#x60; - &#x60;images.images-detections&#x60; - &#x60;images.packages&#x60; - &#x60;images.vulnerabilities&#x60; - &#x60;investigate.container-alerts&#x60; - &#x60;investigate.drift-indicators&#x60; - &#x60;investigate.kubernetes-ioms&#x60; - &#x60;investigate.runtime-detections&#x60; - &#x60;investigate.unidentified-containers&#x60; - &#x60;network.events&#x60; - &#x60;policies.exclusions&#x60; |  |

### Return type

[**ExportsLaunchExportResponse**](ExportsLaunchExportResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_export_jobs

> <MsaspecQueryResponse> query_export_jobs(opts)

Query export jobs entities

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

api_instance = Falcon::FalconContainerImage.new
opts = {
  filter: 'filter_example' # String | Filter exports using a query in Falcon Query Language (FQL). Only the last 100 jobs are returned. Supported filter fields: - `resource` - `status`
}

begin
  # Query export jobs entities
  result = api_instance.query_export_jobs(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->query_export_jobs: #{e}"
end
```

#### Using the query_export_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_export_jobs_with_http_info(opts)

```ruby
begin
  # Query export jobs entities
  data, status_code, headers = api_instance.query_export_jobs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->query_export_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter exports using a query in Falcon Query Language (FQL). Only the last 100 jobs are returned. Supported filter fields: - &#x60;resource&#x60; - &#x60;status&#x60; | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_export_jobs

> <ExportsExportsResponse> read_export_jobs(ids)

Read export jobs entities

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

api_instance = Falcon::FalconContainerImage.new
ids = ['inner_example'] # Array<String> | Export Job IDs to read. Allowed up to 100 IDs per request.

begin
  # Read export jobs entities
  result = api_instance.read_export_jobs(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->read_export_jobs: #{e}"
end
```

#### Using the read_export_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportsExportsResponse>, Integer, Hash)> read_export_jobs_with_http_info(ids)

```ruby
begin
  # Read export jobs entities
  data, status_code, headers = api_instance.read_export_jobs_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportsExportsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->read_export_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Export Job IDs to read. Allowed up to 100 IDs per request. |  |

### Return type

[**ExportsExportsResponse**](ExportsExportsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_registry_entities

> <DomainExternalQueryResponse> read_registry_entities(opts)

Retrieves a list of registry entities identified by the customer id. Maximum page size: 5,000

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

api_instance = Falcon::FalconContainerImage.new
opts = {
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on.
}

begin
  # Retrieves a list of registry entities identified by the customer id. Maximum page size: 5,000
  result = api_instance.read_registry_entities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->read_registry_entities: #{e}"
end
```

#### Using the read_registry_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalQueryResponse>, Integer, Hash)> read_registry_entities_with_http_info(opts)

```ruby
begin
  # Retrieves a list of registry entities identified by the customer id. Maximum page size: 5,000
  data, status_code, headers = api_instance.read_registry_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->read_registry_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. | [optional] |

### Return type

[**DomainExternalQueryResponse**](DomainExternalQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_registry_entities_by_uuid

> <DomainExternalRegistryListResponse> read_registry_entities_by_uuid(ids)

Retrieves a list of registry entities by the provided UUIDs. Maximum page size: 100

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

api_instance = Falcon::FalconContainerImage.new
ids = 'ids_example' # String | Registry entity UUID

begin
  # Retrieves a list of registry entities by the provided UUIDs. Maximum page size: 100
  result = api_instance.read_registry_entities_by_uuid(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->read_registry_entities_by_uuid: #{e}"
end
```

#### Using the read_registry_entities_by_uuid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalRegistryListResponse>, Integer, Hash)> read_registry_entities_by_uuid_with_http_info(ids)

```ruby
begin
  # Retrieves a list of registry entities by the provided UUIDs. Maximum page size: 100
  data, status_code, headers = api_instance.read_registry_entities_by_uuid_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalRegistryListResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->read_registry_entities_by_uuid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Registry entity UUID |  |

### Return type

[**DomainExternalRegistryListResponse**](DomainExternalRegistryListResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_registry_entities

> <DomainExternalRegistryResponse> update_registry_entities(id, body)

Update the registry entity, as identified by the entity UUID, using the provided details

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

api_instance = Falcon::FalconContainerImage.new
id = 'id_example' # String | Registry entity UUID
body = Falcon::RegistryassessmentExternalRegistryPatchPayload.new({credential: Falcon::ApiCredPayload.new({details: 3.56, type: 'type_example'})}) # RegistryassessmentExternalRegistryPatchPayload | 

begin
  # Update the registry entity, as identified by the entity UUID, using the provided details
  result = api_instance.update_registry_entities(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->update_registry_entities: #{e}"
end
```

#### Using the update_registry_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalRegistryResponse>, Integer, Hash)> update_registry_entities_with_http_info(id, body)

```ruby
begin
  # Update the registry entity, as identified by the entity UUID, using the provided details
  data, status_code, headers = api_instance.update_registry_entities_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalRegistryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImage->update_registry_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Registry entity UUID |  |
| **body** | [**RegistryassessmentExternalRegistryPatchPayload**](RegistryassessmentExternalRegistryPatchPayload.md) |  |  |

### Return type

[**DomainExternalRegistryResponse**](DomainExternalRegistryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


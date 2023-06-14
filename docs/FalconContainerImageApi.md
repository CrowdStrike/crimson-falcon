# Falcon::FalconContainerImageApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_registry_entities**](FalconContainerImageApi.md#create_registry_entities) | **POST** /container-security/entities/registries/v1 | Create a registry entity using the provided details |
| [**delete_registry_entities**](FalconContainerImageApi.md#delete_registry_entities) | **DELETE** /container-security/entities/registries/v1 | Delete the registry entity identified by the entity UUID |
| [**read_registry_entities**](FalconContainerImageApi.md#read_registry_entities) | **GET** /container-security/queries/registries/v1 | Retrieve registry entities identified by the customer id |
| [**read_registry_entities_by_uuid**](FalconContainerImageApi.md#read_registry_entities_by_uuid) | **GET** /container-security/entities/registries/v1 | Retrieve the registry entity identified by the entity UUID |
| [**update_registry_entities**](FalconContainerImageApi.md#update_registry_entities) | **PATCH** /container-security/entities/registries/v1 | Update the registry entity, as identified by the entity UUID, using the provided details |


## create_registry_entities

> <DomainExternalRegistryResponse> create_registry_entities(body)

Create a registry entity using the provided details

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconContainerImageApi.new
body = Falcon::RegistryassessmentExternalRegistryPayload.new({credential: Falcon::RegistryassessmentExternalCredPayload.new({details: 3.56}), type: 'type_example', url: 'url_example'}) # RegistryassessmentExternalRegistryPayload | 

begin
  # Create a registry entity using the provided details
  result = api_instance.create_registry_entities(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImageApi->create_registry_entities: #{e}"
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
  puts "Error when calling FalconContainerImageApi->create_registry_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RegistryassessmentExternalRegistryPayload**](RegistryassessmentExternalRegistryPayload.md) |  |  |

### Return type

[**DomainExternalRegistryResponse**](DomainExternalRegistryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

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
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconContainerImageApi.new
ids = 'ids_example' # String | Registry entity UUID

begin
  # Delete the registry entity identified by the entity UUID
  result = api_instance.delete_registry_entities(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImageApi->delete_registry_entities: #{e}"
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
  puts "Error when calling FalconContainerImageApi->delete_registry_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Registry entity UUID |  |

### Return type

[**DomainExternalRegistryListResponse**](DomainExternalRegistryListResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_registry_entities

> <DomainExternalQueryResponse> read_registry_entities(opts)

Retrieve registry entities identified by the customer id

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconContainerImageApi.new
opts = {
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The field to sort on, e.g. id.desc or id.asc.
}

begin
  # Retrieve registry entities identified by the customer id
  result = api_instance.read_registry_entities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImageApi->read_registry_entities: #{e}"
end
```

#### Using the read_registry_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalQueryResponse>, Integer, Hash)> read_registry_entities_with_http_info(opts)

```ruby
begin
  # Retrieve registry entities identified by the customer id
  data, status_code, headers = api_instance.read_registry_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImageApi->read_registry_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The field to sort on, e.g. id.desc or id.asc. | [optional] |

### Return type

[**DomainExternalQueryResponse**](DomainExternalQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_registry_entities_by_uuid

> <DomainExternalRegistryListResponse> read_registry_entities_by_uuid(ids)

Retrieve the registry entity identified by the entity UUID

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconContainerImageApi.new
ids = 'ids_example' # String | Registry entity UUID

begin
  # Retrieve the registry entity identified by the entity UUID
  result = api_instance.read_registry_entities_by_uuid(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImageApi->read_registry_entities_by_uuid: #{e}"
end
```

#### Using the read_registry_entities_by_uuid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalRegistryListResponse>, Integer, Hash)> read_registry_entities_by_uuid_with_http_info(ids)

```ruby
begin
  # Retrieve the registry entity identified by the entity UUID
  data, status_code, headers = api_instance.read_registry_entities_by_uuid_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalRegistryListResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImageApi->read_registry_entities_by_uuid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Registry entity UUID |  |

### Return type

[**DomainExternalRegistryListResponse**](DomainExternalRegistryListResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

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
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FalconContainerImageApi.new
id = 'id_example' # String | Registry entity UUID
body = Falcon::RegistryassessmentExternalRegistryPatchPayload.new({credential: Falcon::ApiCredPayload.new({details: 3.56, type: 'type_example'})}) # RegistryassessmentExternalRegistryPatchPayload | 

begin
  # Update the registry entity, as identified by the entity UUID, using the provided details
  result = api_instance.update_registry_entities(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FalconContainerImageApi->update_registry_entities: #{e}"
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
  puts "Error when calling FalconContainerImageApi->update_registry_entities_with_http_info: #{e}"
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

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# Falcon::ExposureManagement

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_external_assets**](ExposureManagement.md#aggregate_external_assets) | **POST** /fem/aggregates/external-assets/v1 | Returns external assets aggregates. |
| [**blob_download_external_assets**](ExposureManagement.md#blob_download_external_assets) | **GET** /fem/entities/blobs-download/v1 | Download the entire contents of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request. |
| [**blob_preview_external_assets**](ExposureManagement.md#blob_preview_external_assets) | **GET** /fem/entities/blobs-preview/v1 | Download a preview of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request. |
| [**combined_ecosystem_subsidiaries**](ExposureManagement.md#combined_ecosystem_subsidiaries) | **GET** /fem/combined/ecosystem-subsidiaries/v1 | Retrieves a list of ecosystem subsidiaries with their detailed information. |
| [**delete_external_assets**](ExposureManagement.md#delete_external_assets) | **DELETE** /fem/entities/external-assets/v1 | Delete multiple external assets. |
| [**get_ecosystem_subsidiaries**](ExposureManagement.md#get_ecosystem_subsidiaries) | **GET** /fem/entities/ecosystem-subsidiaries/v1 | Retrieves detailed information about ecosystem subsidiaries by ID. |
| [**get_external_assets**](ExposureManagement.md#get_external_assets) | **GET** /fem/entities/external-assets/v1 | Get details on external assets by providing one or more IDs. |
| [**patch_external_assets**](ExposureManagement.md#patch_external_assets) | **PATCH** /fem/entities/external-assets/v1 | Update the details of external assets. |
| [**post_external_assets_inventory_v1**](ExposureManagement.md#post_external_assets_inventory_v1) | **POST** /fem/entities/external-asset-inventory/v1 | Add external assets for external asset scanning. |
| [**query_ecosystem_subsidiaries**](ExposureManagement.md#query_ecosystem_subsidiaries) | **GET** /fem/queries/ecosystem-subsidiaries/v1 | Retrieves a list of IDs for ecosystem subsidiaries. Use these IDs with the /entities/ecosystem-subsidiaries/v1 endpoints. |
| [**query_external_assets**](ExposureManagement.md#query_external_assets) | **GET** /fem/queries/external-assets/v1 | Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoints |
| [**query_external_assets_v2**](ExposureManagement.md#query_external_assets_v2) | **GET** /fem/queries/external-assets/v2 | Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoint |


## aggregate_external_assets

> <MsaAggregatesResponse> aggregate_external_assets(body)

Returns external assets aggregates.

Returns external assets aggregates as specified via JSON in request body.

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

api_instance = Falcon::ExposureManagement.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | Aggregation specification.

begin
  # Returns external assets aggregates.
  result = api_instance.aggregate_external_assets(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->aggregate_external_assets: #{e}"
end
```

#### Using the aggregate_external_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_external_assets_with_http_info(body)

```ruby
begin
  # Returns external assets aggregates.
  data, status_code, headers = api_instance.aggregate_external_assets_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->aggregate_external_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) | Aggregation specification. |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_download_external_assets

> Array&lt;Integer&gt; blob_download_external_assets(asset_id, hash)

Download the entire contents of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.

Download the entire contents of the blob.

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

api_instance = Falcon::ExposureManagement.new
asset_id = 'asset_id_example' # String | The Asset ID
hash = 'hash_example' # String | The File Hash

begin
  # Download the entire contents of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.
  result = api_instance.blob_download_external_assets(asset_id, hash)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->blob_download_external_assets: #{e}"
end
```

#### Using the blob_download_external_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> blob_download_external_assets_with_http_info(asset_id, hash)

```ruby
begin
  # Download the entire contents of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.
  data, status_code, headers = api_instance.blob_download_external_assets_with_http_info(asset_id, hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->blob_download_external_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The Asset ID |  |
| **hash** | **String** | The File Hash |  |

### Return type

**Array&lt;Integer&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## blob_preview_external_assets

> <DomainExternalAssetsBlobAPITypeV1> blob_preview_external_assets(asset_id, hash)

Download a preview of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.

Download a preview of the blob.

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

api_instance = Falcon::ExposureManagement.new
asset_id = 'asset_id_example' # String | The Asset ID
hash = 'hash_example' # String | The File Hash

begin
  # Download a preview of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.
  result = api_instance.blob_preview_external_assets(asset_id, hash)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->blob_preview_external_assets: #{e}"
end
```

#### Using the blob_preview_external_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalAssetsBlobAPITypeV1>, Integer, Hash)> blob_preview_external_assets_with_http_info(asset_id, hash)

```ruby
begin
  # Download a preview of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.
  data, status_code, headers = api_instance.blob_preview_external_assets_with_http_info(asset_id, hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalAssetsBlobAPITypeV1>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->blob_preview_external_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The Asset ID |  |
| **hash** | **String** | The File Hash |  |

### Return type

[**DomainExternalAssetsBlobAPITypeV1**](DomainExternalAssetsBlobAPITypeV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_ecosystem_subsidiaries

> <DomainFemEcosystemSubsidiariesEntitiesResponse> combined_ecosystem_subsidiaries(opts)

Retrieves a list of ecosystem subsidiaries with their detailed information.

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

api_instance = Falcon::ExposureManagement.new
opts = {
  offset: 56, # Integer | Starting index of result set from which to return subsidiaries
  limit: 56, # Integer | The maximum number of subsidiaries to return in the response.
  filter: 'filter_example', # String | Filter ecosystem subsidiaries
  sort: 'sort_example', # String | The field by which to sort the list of subsidiaries. Possible values:<ul><li>name</li><li>primary_domain</li></ul></br>Sort order can be specified by appending \"asc\" or \"desc\" to the field name (e.g. \"name|asc\" or \"primary_domain|desc\").
  version_id: 'version_id_example' # String | The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written.
}

begin
  # Retrieves a list of ecosystem subsidiaries with their detailed information.
  result = api_instance.combined_ecosystem_subsidiaries(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->combined_ecosystem_subsidiaries: #{e}"
end
```

#### Using the combined_ecosystem_subsidiaries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainFemEcosystemSubsidiariesEntitiesResponse>, Integer, Hash)> combined_ecosystem_subsidiaries_with_http_info(opts)

```ruby
begin
  # Retrieves a list of ecosystem subsidiaries with their detailed information.
  data, status_code, headers = api_instance.combined_ecosystem_subsidiaries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainFemEcosystemSubsidiariesEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->combined_ecosystem_subsidiaries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Starting index of result set from which to return subsidiaries | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of subsidiaries to return in the response. | [optional][default to 100] |
| **filter** | **String** | Filter ecosystem subsidiaries | [optional] |
| **sort** | **String** | The field by which to sort the list of subsidiaries. Possible values:&lt;ul&gt;&lt;li&gt;name&lt;/li&gt;&lt;li&gt;primary_domain&lt;/li&gt;&lt;/ul&gt;&lt;/br&gt;Sort order can be specified by appending \&quot;asc\&quot; or \&quot;desc\&quot; to the field name (e.g. \&quot;name|asc\&quot; or \&quot;primary_domain|desc\&quot;). | [optional] |
| **version_id** | **String** | The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written. | [optional] |

### Return type

[**DomainFemEcosystemSubsidiariesEntitiesResponse**](DomainFemEcosystemSubsidiariesEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_external_assets

> <MsaspecQueryResponse> delete_external_assets(ids, body)

Delete multiple external assets.

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

api_instance = Falcon::ExposureManagement.new
ids = ['inner_example'] # Array<String> | One or more asset IDs (max: 100).
body = Falcon::DomainExternalAssetAPIDeleteRequestV1.new # DomainExternalAssetAPIDeleteRequestV1 | 

begin
  # Delete multiple external assets.
  result = api_instance.delete_external_assets(ids, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->delete_external_assets: #{e}"
end
```

#### Using the delete_external_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> delete_external_assets_with_http_info(ids, body)

```ruby
begin
  # Delete multiple external assets.
  data, status_code, headers = api_instance.delete_external_assets_with_http_info(ids, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->delete_external_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more asset IDs (max: 100). |  |
| **body** | [**DomainExternalAssetAPIDeleteRequestV1**](DomainExternalAssetAPIDeleteRequestV1.md) |  |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ecosystem_subsidiaries

> <DomainFemEcosystemSubsidiariesEntitiesResponse> get_ecosystem_subsidiaries(ids, opts)

Retrieves detailed information about ecosystem subsidiaries by ID.

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

api_instance = Falcon::ExposureManagement.new
ids = ['inner_example'] # Array<String> | One or more asset IDs (max: 100). Find ecosystem subsidiary IDs with GET `/fem/entities/ecosystem-subsidiaries/v1`
opts = {
  version_id: 'version_id_example' # String | The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written.
}

begin
  # Retrieves detailed information about ecosystem subsidiaries by ID.
  result = api_instance.get_ecosystem_subsidiaries(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->get_ecosystem_subsidiaries: #{e}"
end
```

#### Using the get_ecosystem_subsidiaries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainFemEcosystemSubsidiariesEntitiesResponse>, Integer, Hash)> get_ecosystem_subsidiaries_with_http_info(ids, opts)

```ruby
begin
  # Retrieves detailed information about ecosystem subsidiaries by ID.
  data, status_code, headers = api_instance.get_ecosystem_subsidiaries_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainFemEcosystemSubsidiariesEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->get_ecosystem_subsidiaries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more asset IDs (max: 100). Find ecosystem subsidiary IDs with GET &#x60;/fem/entities/ecosystem-subsidiaries/v1&#x60; |  |
| **version_id** | **String** | The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written. | [optional] |

### Return type

[**DomainFemEcosystemSubsidiariesEntitiesResponse**](DomainFemEcosystemSubsidiariesEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_assets

> <DomainExternalAssetsAPITypeV1> get_external_assets(ids)

Get details on external assets by providing one or more IDs.

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

api_instance = Falcon::ExposureManagement.new
ids = ['inner_example'] # Array<String> | One or more asset IDs (max: 100). Find asset IDs with GET `/fem/queries/external-assets/v1`

begin
  # Get details on external assets by providing one or more IDs.
  result = api_instance.get_external_assets(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->get_external_assets: #{e}"
end
```

#### Using the get_external_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalAssetsAPITypeV1>, Integer, Hash)> get_external_assets_with_http_info(ids)

```ruby
begin
  # Get details on external assets by providing one or more IDs.
  data, status_code, headers = api_instance.get_external_assets_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalAssetsAPITypeV1>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->get_external_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more asset IDs (max: 100). Find asset IDs with GET &#x60;/fem/queries/external-assets/v1&#x60; |  |

### Return type

[**DomainExternalAssetsAPITypeV1**](DomainExternalAssetsAPITypeV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_external_assets

> <DomainExternalAssetsAPITypeV1> patch_external_assets(body)

Update the details of external assets.

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

api_instance = Falcon::ExposureManagement.new
body = Falcon::DomainExternalAssetAPIPatchRequestV1.new({assets: [Falcon::DomainExternalAssetsAPIPatch.new({id: 'id_example'})]}) # DomainExternalAssetAPIPatchRequestV1 | 

begin
  # Update the details of external assets.
  result = api_instance.patch_external_assets(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->patch_external_assets: #{e}"
end
```

#### Using the patch_external_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExternalAssetsAPITypeV1>, Integer, Hash)> patch_external_assets_with_http_info(body)

```ruby
begin
  # Update the details of external assets.
  data, status_code, headers = api_instance.patch_external_assets_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExternalAssetsAPITypeV1>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->patch_external_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainExternalAssetAPIPatchRequestV1**](DomainExternalAssetAPIPatchRequestV1.md) |  |  |

### Return type

[**DomainExternalAssetsAPITypeV1**](DomainExternalAssetsAPITypeV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_external_assets_inventory_v1

> <InventoryapiUserExternalAssetCreateResponseV1> post_external_assets_inventory_v1(body)

Add external assets for external asset scanning.

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

api_instance = Falcon::ExposureManagement.new
body = Falcon::InventoryapiUserExternalAssetCreateRequestV1.new({data: [Falcon::InventoryapiUserExternalAssetCreate.new({assets: [Falcon::InventoryapiUserExternalAsset.new({id: 'id_example', value: 'value_example'})], subsidiary_id: 'subsidiary_id_example'})]}) # InventoryapiUserExternalAssetCreateRequestV1 | Asset addition specification.

begin
  # Add external assets for external asset scanning.
  result = api_instance.post_external_assets_inventory_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->post_external_assets_inventory_v1: #{e}"
end
```

#### Using the post_external_assets_inventory_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InventoryapiUserExternalAssetCreateResponseV1>, Integer, Hash)> post_external_assets_inventory_v1_with_http_info(body)

```ruby
begin
  # Add external assets for external asset scanning.
  data, status_code, headers = api_instance.post_external_assets_inventory_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InventoryapiUserExternalAssetCreateResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->post_external_assets_inventory_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**InventoryapiUserExternalAssetCreateRequestV1**](InventoryapiUserExternalAssetCreateRequestV1.md) | Asset addition specification. |  |

### Return type

[**InventoryapiUserExternalAssetCreateResponseV1**](InventoryapiUserExternalAssetCreateResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_ecosystem_subsidiaries

> <DomainFemEcosystemSubsidiariesQueryResponse> query_ecosystem_subsidiaries(opts)

Retrieves a list of IDs for ecosystem subsidiaries. Use these IDs with the /entities/ecosystem-subsidiaries/v1 endpoints.

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

api_instance = Falcon::ExposureManagement.new
opts = {
  offset: 56, # Integer | Starting index of result set from which to return subsidiaries
  limit: 56, # Integer | The maximum number of IDs to return in the response.
  filter: 'filter_example', # String | Filter ecosystem subsidiaries
  sort: 'sort_example', # String | The field by which to sort the list of IDs. Possible values:<ul><li>name</li><li>primary_domain</li></ul></br>Sort order can be specified by appending \"asc\" or \"desc\" to the field name (e.g. \"name|asc\" or \"primary_domain|desc\").
  version_id: 'version_id_example' # String | The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written.
}

begin
  # Retrieves a list of IDs for ecosystem subsidiaries. Use these IDs with the /entities/ecosystem-subsidiaries/v1 endpoints.
  result = api_instance.query_ecosystem_subsidiaries(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->query_ecosystem_subsidiaries: #{e}"
end
```

#### Using the query_ecosystem_subsidiaries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainFemEcosystemSubsidiariesQueryResponse>, Integer, Hash)> query_ecosystem_subsidiaries_with_http_info(opts)

```ruby
begin
  # Retrieves a list of IDs for ecosystem subsidiaries. Use these IDs with the /entities/ecosystem-subsidiaries/v1 endpoints.
  data, status_code, headers = api_instance.query_ecosystem_subsidiaries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainFemEcosystemSubsidiariesQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->query_ecosystem_subsidiaries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Starting index of result set from which to return subsidiaries | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of IDs to return in the response. | [optional][default to 100] |
| **filter** | **String** | Filter ecosystem subsidiaries | [optional] |
| **sort** | **String** | The field by which to sort the list of IDs. Possible values:&lt;ul&gt;&lt;li&gt;name&lt;/li&gt;&lt;li&gt;primary_domain&lt;/li&gt;&lt;/ul&gt;&lt;/br&gt;Sort order can be specified by appending \&quot;asc\&quot; or \&quot;desc\&quot; to the field name (e.g. \&quot;name|asc\&quot; or \&quot;primary_domain|desc\&quot;). | [optional] |
| **version_id** | **String** | The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written. | [optional] |

### Return type

[**DomainFemEcosystemSubsidiariesQueryResponse**](DomainFemEcosystemSubsidiariesQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_external_assets

> <MsaspecQueryResponse> query_external_assets(opts)

Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoints

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

api_instance = Falcon::ExposureManagement.new
opts = {
  offset: 'offset_example', # String | Starting index of result set from which to return IDs.
  limit: 56, # Integer | Number of IDs to return.
  sort: 'sort_example', # String | Order by fields.
  filter: 'filter_example' # String | Filter assets using an FQL query. Common filter options include:<ul><li>asset_type:'ip'</li><li>last_seen_timestamp:>'now-7d'</li></ul>    </br>Available filter fields that support exact match: asset_id, asset_type, confidence, connectivity_status, criticality, criticality_description, criticality_timestamp, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.last_seen, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, first_seen, id, internet_exposure, ip.asn, ip.cloud_provider, ip.cloud_vm.description, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.first_seen, ip.services.last_seen, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, last_seen, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by, triage.updated_timestamp    </br>Available filter fields that supports wildcard (*): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    </br>Available filter fields that supports in ([v1, v2]): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    </br>Available filter fields that supports range comparisons (>, <, >=, <=): criticality_timestamp, dns_domain.resolved_ips, dns_domain.services.first_seen, dns_domain.services.last_seen, dns_domain.services.port, dns_domain.services.status_code, first_seen, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.ip_address, ip.services.first_seen, ip.services.last_seen, ip.services.port, ip.services.status_code, last_seen, triage.updated_timestamp    </br>All filter fields and operations supports negation (!).
}

begin
  # Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoints
  result = api_instance.query_external_assets(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->query_external_assets: #{e}"
end
```

#### Using the query_external_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_external_assets_with_http_info(opts)

```ruby
begin
  # Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoints
  data, status_code, headers = api_instance.query_external_assets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->query_external_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of result set from which to return IDs. | [optional] |
| **limit** | **Integer** | Number of IDs to return. | [optional] |
| **sort** | **String** | Order by fields. | [optional] |
| **filter** | **String** | Filter assets using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;asset_type:&#39;ip&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;    &lt;/br&gt;Available filter fields that support exact match: asset_id, asset_type, confidence, connectivity_status, criticality, criticality_description, criticality_timestamp, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.last_seen, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, first_seen, id, internet_exposure, ip.asn, ip.cloud_provider, ip.cloud_vm.description, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.first_seen, ip.services.last_seen, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, last_seen, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by, triage.updated_timestamp    &lt;/br&gt;Available filter fields that supports wildcard (*): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    &lt;/br&gt;Available filter fields that supports in ([v1, v2]): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    &lt;/br&gt;Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): criticality_timestamp, dns_domain.resolved_ips, dns_domain.services.first_seen, dns_domain.services.last_seen, dns_domain.services.port, dns_domain.services.status_code, first_seen, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.ip_address, ip.services.first_seen, ip.services.last_seen, ip.services.port, ip.services.status_code, last_seen, triage.updated_timestamp    &lt;/br&gt;All filter fields and operations supports negation (!). | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_external_assets_v2

> <DomainDiscoverAPIResponse> query_external_assets_v2(opts)

Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoint

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

api_instance = Falcon::ExposureManagement.new
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | number of IDs to return.
  sort: 'sort_example', # String | Order by fields.
  filter: 'filter_example' # String | Filter assets using an FQL query. Common filter options include:<ul><li>asset_type:'ip'</li><li>last_seen_timestamp:>'now-7d'</li></ul>    </br>Available filter fields that support exact match: asset_id, asset_type, confidence, connectivity_status, criticality, criticality_description, criticality_timestamp, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.last_seen, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, first_seen, id, internet_exposure, ip.asn, ip.cloud_provider, ip.cloud_vm.description, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.first_seen, ip.services.last_seen, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, last_seen, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by, triage.updated_timestamp    </br>Available filter fields that supports wildcard (*): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    </br>Available filter fields that supports in ([v1, v2]): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    </br>Available filter fields that supports range comparisons (>, <, >=, <=): criticality_timestamp, dns_domain.resolved_ips, dns_domain.services.first_seen, dns_domain.services.last_seen, dns_domain.services.port, dns_domain.services.status_code, first_seen, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.ip_address, ip.services.first_seen, ip.services.last_seen, ip.services.port, ip.services.status_code, last_seen, triage.updated_timestamp    </br>All filter fields and operations supports negation (!).
}

begin
  # Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoint
  result = api_instance.query_external_assets_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->query_external_assets_v2: #{e}"
end
```

#### Using the query_external_assets_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPIResponse>, Integer, Hash)> query_external_assets_v2_with_http_info(opts)

```ruby
begin
  # Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoint
  data, status_code, headers = api_instance.query_external_assets_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPIResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ExposureManagement->query_external_assets_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | number of IDs to return. | [optional] |
| **sort** | **String** | Order by fields. | [optional] |
| **filter** | **String** | Filter assets using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;asset_type:&#39;ip&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;    &lt;/br&gt;Available filter fields that support exact match: asset_id, asset_type, confidence, connectivity_status, criticality, criticality_description, criticality_timestamp, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.last_seen, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, first_seen, id, internet_exposure, ip.asn, ip.cloud_provider, ip.cloud_vm.description, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.first_seen, ip.services.last_seen, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, last_seen, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by, triage.updated_timestamp    &lt;/br&gt;Available filter fields that supports wildcard (*): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    &lt;/br&gt;Available filter fields that supports in ([v1, v2]): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    &lt;/br&gt;Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): criticality_timestamp, dns_domain.resolved_ips, dns_domain.services.first_seen, dns_domain.services.last_seen, dns_domain.services.port, dns_domain.services.status_code, first_seen, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.ip_address, ip.services.first_seen, ip.services.last_seen, ip.services.port, ip.services.status_code, last_seen, triage.updated_timestamp    &lt;/br&gt;All filter fields and operations supports negation (!). | [optional] |

### Return type

[**DomainDiscoverAPIResponse**](DomainDiscoverAPIResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


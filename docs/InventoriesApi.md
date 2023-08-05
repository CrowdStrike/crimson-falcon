# Falcon::InventoriesApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_inventory**](InventoriesApi.md#create_inventory) | **POST** /snapshots/entities/inventories/v1 | Create inventory from data received from snapshot |


## create_inventory

> <CommonEntitiesResponse> create_inventory(body)

Create inventory from data received from snapshot

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

api_instance = Falcon::InventoriesApi.new
body = Falcon::ModelsSnapshotInventoryPayload.new({job_metadata: Falcon::ModelsJobMetaData.new({cloud_provider: 'cloud_provider_example', instance_id: 'instance_id_example', job_end_time: Time.now, job_id: 'job_id_example', job_start_time: Time.now, message: 'message_example', scanner_version: 'scanner_version_example', status: 'status_example'}), results: Falcon::ModelsScanResults.new({applications: [Falcon::ModelsSnapshotInventoryApplication.new({major_version: 'major_version_example', package_hash: 'package_hash_example', package_provider: 'package_provider_example', package_source: 'package_source_example', path: 'path_example', product: 'product_example', software_architecture: 'software_architecture_example', type: 'type_example', vendor: 'vendor_example'})], os_version: 'os_version_example'})}) # ModelsSnapshotInventoryPayload | 

begin
  # Create inventory from data received from snapshot
  result = api_instance.create_inventory(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InventoriesApi->create_inventory: #{e}"
end
```

#### Using the create_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonEntitiesResponse>, Integer, Hash)> create_inventory_with_http_info(body)

```ruby
begin
  # Create inventory from data received from snapshot
  data, status_code, headers = api_instance.create_inventory_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling InventoriesApi->create_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsSnapshotInventoryPayload**](ModelsSnapshotInventoryPayload.md) |  |  |

### Return type

[**CommonEntitiesResponse**](CommonEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


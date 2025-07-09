# Falcon::ModelsInventoryScanRequestType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_uuid** | **String** |  |  |
| **agent_version** | **String** |  |  |
| **agent_version_hash** | **String** |  |  |
| **cluster_id** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **container_id** | **String** |  | [optional] |
| **ephemeral_scan** | **Boolean** |  | [optional] |
| **helm_version** | **String** |  |  |
| **high_entropy_strings** | [**Array&lt;ModelsHEStringFileInfoType&gt;**](ModelsHEStringFileInfoType.md) |  | [optional] |
| **host_ip** | **String** |  |  |
| **host_name** | **String** |  |  |
| **inventory** | [**ModelsInventoryType**](ModelsInventoryType.md) |  |  |
| **original_image_name** | **String** |  |  |
| **pod_id** | **String** |  | [optional] |
| **pod_name** | **String** |  | [optional] |
| **pod_namespace** | **String** |  | [optional] |
| **runmode** | **String** |  |  |
| **runtime_type** | **String** |  | [optional] |
| **scan_request** | [**ModelsScanRequestType**](ModelsScanRequestType.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsInventoryScanRequestType.new(
  agent_uuid: null,
  agent_version: null,
  agent_version_hash: null,
  cluster_id: null,
  cluster_name: null,
  container_id: null,
  ephemeral_scan: null,
  helm_version: null,
  high_entropy_strings: null,
  host_ip: null,
  host_name: null,
  inventory: null,
  original_image_name: null,
  pod_id: null,
  pod_name: null,
  pod_namespace: null,
  runmode: null,
  runtime_type: null,
  scan_request: null
)
```


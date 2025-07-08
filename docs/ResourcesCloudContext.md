# Falcon::ResourcesCloudContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** |  | [optional] |
| **allows_public_access** | **Boolean** |  | [optional] |
| **application_security** | [**AspmInventoryData**](AspmInventoryData.md) |  | [optional] |
| **asset_graph** | [**ResourcesAssetGraph**](ResourcesAssetGraph.md) |  | [optional] |
| **cspm_license** | **String** |  | [optional] |
| **data_classifications** | [**DataclassificationsResponse**](DataclassificationsResponse.md) |  | [optional] |
| **detections** | [**ResourcesDetections**](ResourcesDetections.md) |  | [optional] |
| **has_falcon_sensor** | **Boolean** |  | [optional] |
| **has_tags** | **Boolean** |  | [optional] |
| **host** | [**ResourcesHost**](ResourcesHost.md) |  | [optional] |
| **insights** | [**InsightsInsight**](InsightsInsight.md) |  | [optional] |
| **instance_id** | **String** |  | [optional] |
| **instance_state** | **String** |  | [optional] |
| **legacy_resource_id** | **String** |  | [optional] |
| **legacy_type_id** | **Integer** |  | [optional] |
| **legacy_uuid** | **String** |  | [optional] |
| **managed_by** | **String** |  | [optional] |
| **publicly_exposed** | **Boolean** |  | [optional] |
| **scan_type** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ResourcesCloudContext.new(
  account_name: null,
  allows_public_access: null,
  application_security: null,
  asset_graph: null,
  cspm_license: null,
  data_classifications: null,
  detections: null,
  has_falcon_sensor: null,
  has_tags: null,
  host: null,
  insights: null,
  instance_id: null,
  instance_state: null,
  legacy_resource_id: null,
  legacy_type_id: null,
  legacy_uuid: null,
  managed_by: null,
  publicly_exposed: null,
  scan_type: null
)
```


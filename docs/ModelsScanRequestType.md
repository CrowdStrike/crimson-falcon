# Falcon::ModelsScanRequestType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**V1Image**](V1Image.md) |  |  |
| **config_info** | [**ModelsConfigInfoType**](ModelsConfigInfoType.md) |  |  |
| **image_info** | [**ModelsImageInfoType**](ModelsImageInfoType.md) |  | [optional] |
| **image_metadata** | [**ModelsImageMetadataType**](ModelsImageMetadataType.md) |  |  |
| **layers** | [**Array&lt;ModelsLayerInfoType&gt;**](ModelsLayerInfoType.md) |  |  |
| **manifest** | [**Schema2Manifest**](Schema2Manifest.md) |  |  |
| **scan_info** | [**ModelsScanInfoType**](ModelsScanInfoType.md) |  | [optional] |
| **high_entropy_strings_s3_key** | **String** |  |  |
| **image_inventory_s3_key** | **String** |  |  |
| **layer_inventory_s3_key** | **String** |  |  |
| **scan_report_s3_key** | **String** |  |  |
| **scan_request_s3_key** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsScanRequestType.new(
  config: null,
  config_info: null,
  image_info: null,
  image_metadata: null,
  layers: null,
  manifest: null,
  scan_info: null,
  high_entropy_strings_s3_key: null,
  image_inventory_s3_key: null,
  layer_inventory_s3_key: null,
  scan_report_s3_key: null,
  scan_request_s3_key: null
)
```


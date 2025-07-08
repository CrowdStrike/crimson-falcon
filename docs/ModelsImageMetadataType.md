# Falcon::ModelsImageMetadataType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_metadata_config_s3_key** | **String** |  | [optional] |
| **image_metadata_high_entropy_strings_s3_key** | **String** |  | [optional] |
| **image_metadata_image_inventory_s3_key** | **String** |  | [optional] |
| **image_metadata_image_inventory_s3_path** | **String** |  | [optional] |
| **image_metadata_manifest_s3_key** | **String** |  | [optional] |
| **image_metadata_scan_report_s3_key** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsImageMetadataType.new(
  image_metadata_config_s3_key: null,
  image_metadata_high_entropy_strings_s3_key: null,
  image_metadata_image_inventory_s3_key: null,
  image_metadata_image_inventory_s3_path: null,
  image_metadata_manifest_s3_key: null,
  image_metadata_scan_report_s3_key: null
)
```


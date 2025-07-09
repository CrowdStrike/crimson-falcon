# Falcon::ModelsLayerInfoType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  |  |
| **created_by** | **String** |  |  |
| **digest** | **String** |  |  |
| **size** | **Integer** |  |  |
| **layer_inventory_s3_key** | **String** |  | [optional] |
| **layer_reference_key** | **String** |  | [optional] |
| **layer_reference_type** | **Integer** |  | [optional] |
| **type** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsLayerInfoType.new(
  created_at: null,
  created_by: null,
  digest: null,
  size: null,
  layer_inventory_s3_key: null,
  layer_reference_key: null,
  layer_reference_type: null,
  type: null
)
```


# Falcon::InventoryapiUserExternalAssetCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assets** | [**Array&lt;InventoryapiUserExternalAsset&gt;**](InventoryapiUserExternalAsset.md) | Assets to be added |  |
| **subsidiary_id** | **String** | Subsidiary ID to which assets are to be added |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::InventoryapiUserExternalAssetCreate.new(
  assets: null,
  subsidiary_id: null
)
```


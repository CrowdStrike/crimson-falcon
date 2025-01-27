# Falcon::InventoryapiUserExternalAssetResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_type** | **String** | Asset type | [optional] |
| **current_subsidiary** | [**InventoryapidomainSubsidiary**](InventoryapidomainSubsidiary.md) |  | [optional] |
| **error** | [**InventoryapiSurfaceError**](InventoryapiSurfaceError.md) |  | [optional] |
| **id** | **String** | The ID of the asset |  |
| **index** | **Integer** | The index of the asset |  |
| **raw_value** | **String** | Raw value of the asset to be created |  |
| **subsidiary** | [**InventoryapidomainSubsidiary**](InventoryapidomainSubsidiary.md) |  |  |
| **value** | **String** | Asset | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::InventoryapiUserExternalAssetResult.new(
  asset_type: null,
  current_subsidiary: null,
  error: null,
  id: null,
  index: null,
  raw_value: null,
  subsidiary: null,
  value: null
)
```


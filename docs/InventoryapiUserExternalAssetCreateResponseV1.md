# Falcon::InventoryapiUserExternalAssetCreateResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;InventoryapiUserExternalAssetResult&gt;**](InventoryapiUserExternalAssetResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::InventoryapiUserExternalAssetCreateResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


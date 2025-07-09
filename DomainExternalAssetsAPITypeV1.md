# Falcon::DomainExternalAssetsAPITypeV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainFemExternalAsset&gt;**](DomainFemExternalAsset.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetsAPITypeV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


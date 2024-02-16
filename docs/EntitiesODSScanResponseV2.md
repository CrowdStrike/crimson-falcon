# Falcon::EntitiesODSScanResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainScanV2&gt;**](DomainScanV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EntitiesODSScanResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


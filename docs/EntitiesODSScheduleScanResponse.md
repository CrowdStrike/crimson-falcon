# Falcon::EntitiesODSScheduleScanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainScanProfile&gt;**](DomainScanProfile.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EntitiesODSScheduleScanResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


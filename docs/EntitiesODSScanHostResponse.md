# Falcon::EntitiesODSScanHostResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainScanHostMetadata&gt;**](DomainScanHostMetadata.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EntitiesODSScanHostResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


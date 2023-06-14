# Falcon::EntitiesODSScanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainScan&gt;**](DomainScan.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EntitiesODSScanResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


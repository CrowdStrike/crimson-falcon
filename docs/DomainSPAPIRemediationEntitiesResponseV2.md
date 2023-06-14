# Falcon::DomainSPAPIRemediationEntitiesResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIRemediationV2&gt;**](DomainAPIRemediationV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSPAPIRemediationEntitiesResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainSPAPIRemediationEntitiesResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIRemediationV2&gt;**](DomainAPIRemediationV2.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainSPAPIRemediationEntitiesResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainActionEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainActionV1&gt;**](DomainActionV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainActionEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


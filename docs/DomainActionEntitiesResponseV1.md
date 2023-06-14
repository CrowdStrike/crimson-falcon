# Falcon::DomainActionEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainActionV1&gt;**](DomainActionV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainActionEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainNotificationEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainNotificationV1&gt;**](DomainNotificationV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainNotificationEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


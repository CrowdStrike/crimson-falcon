# Falcon::DomainNotificationEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainNotificationV1&gt;**](DomainNotificationV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainNotificationEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


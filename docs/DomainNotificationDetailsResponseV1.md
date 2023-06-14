# Falcon::DomainNotificationDetailsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDetailedNotificationV1&gt;**](DomainDetailedNotificationV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainNotificationDetailsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


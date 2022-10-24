# Falcon::DomainDetailedNotificationV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **breach_details** | [**DomainBreachDetailsV1**](DomainBreachDetailsV1.md) |  | [optional] |
| **details** | [**DomainNotificationDetailsV1**](DomainNotificationDetailsV1.md) |  | [optional] |
| **id** | **String** |  |  |
| **notification** | [**DomainNotificationV1**](DomainNotificationV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDetailedNotificationV1.new(
  breach_details: null,
  details: null,
  id: null,
  notification: null
)
```


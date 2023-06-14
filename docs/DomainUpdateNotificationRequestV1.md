# Falcon::DomainUpdateNotificationRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned_to_uuid** | **String** | The unique ID of the user who is assigned to this notification. The value &#x60;unassigned&#x60; can be used to unassign a notification. |  |
| **id** | **String** | The ID of the notifications |  |
| **status** | **String** | The notification status. This can be one of: &#x60;new&#x60;, &#x60;in-progress&#x60;, &#x60;closed-false-positive&#x60;, &#x60;closed-true-positive&#x60;. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainUpdateNotificationRequestV1.new(
  assigned_to_uuid: null,
  id: null,
  status: null
)
```


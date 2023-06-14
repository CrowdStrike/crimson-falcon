# Falcon::DeviceControlUSBCustomNotifications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blocked_notification** | [**DeviceControlUSBCustomNotification**](DeviceControlUSBCustomNotification.md) |  | [optional] |
| **restricted_notification** | [**DeviceControlUSBCustomNotification**](DeviceControlUSBCustomNotification.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlUSBCustomNotifications.new(
  blocked_notification: null,
  restricted_notification: null
)
```


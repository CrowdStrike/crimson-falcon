# Falcon::DevicecontrolapiUSBCustomNotifications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blocked_notification** | [**DevicecontrolapiUSBCustomNotification**](DevicecontrolapiUSBCustomNotification.md) |  | [optional] |
| **restricted_notification** | [**DevicecontrolapiUSBCustomNotification**](DevicecontrolapiUSBCustomNotification.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiUSBCustomNotifications.new(
  blocked_notification: null,
  restricted_notification: null
)
```


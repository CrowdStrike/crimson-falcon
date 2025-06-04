# Falcon::DevicecontrolapiReqUpdateBluetoothBaseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_end_user_notifications** | [**DevicecontrolapiBluetoothCustomNotifications**](DevicecontrolapiBluetoothCustomNotifications.md) |  |  |
| **end_user_notification** | **String** | Determines if a notification will be shown to the end user (omit to keep current) |  |
| **enforcement_mode** | **String** | Enforcement for the Bluetooth policy (omit to keep current) |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiReqUpdateBluetoothBaseV1.new(
  custom_end_user_notifications: null,
  end_user_notification: null,
  enforcement_mode: null
)
```


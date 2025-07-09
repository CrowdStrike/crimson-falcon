# Falcon::DevicecontrolapiBluetoothSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classes** | [**Array&lt;DevicecontrolapiBluetoothClass&gt;**](DevicecontrolapiBluetoothClass.md) |  | [optional] |
| **custom_end_user_notifications** | [**DevicecontrolapiBluetoothCustomNotifications**](DevicecontrolapiBluetoothCustomNotifications.md) |  | [optional] |
| **end_user_notification** | **String** |  | [optional] |
| **enforcement_mode** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiBluetoothSettings.new(
  classes: null,
  custom_end_user_notifications: null,
  end_user_notification: null,
  enforcement_mode: null
)
```


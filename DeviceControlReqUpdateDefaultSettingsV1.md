# Falcon::DeviceControlReqUpdateDefaultSettingsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bluetooth_custom_notifications** | [**DevicecontrolapiBluetoothCustomNotifications**](DevicecontrolapiBluetoothCustomNotifications.md) |  | [optional] |
| **usb_custom_notifications** | [**DevicecontrolapiUSBCustomNotifications**](DevicecontrolapiUSBCustomNotifications.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlReqUpdateDefaultSettingsV1.new(
  bluetooth_custom_notifications: null,
  usb_custom_notifications: null
)
```


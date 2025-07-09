# Falcon::DeviceControlRespUpdateDefaultSettingsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bluetooth_custom_notifications** | [**DevicecontrolapiBluetoothCustomNotifications**](DevicecontrolapiBluetoothCustomNotifications.md) |  | [optional] |
| **cid** | **String** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_timestamp** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **modified_by** | **String** |  | [optional] |
| **modified_timestamp** | **String** |  | [optional] |
| **usb_custom_notifications** | [**DevicecontrolapiUSBCustomNotifications**](DevicecontrolapiUSBCustomNotifications.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlRespUpdateDefaultSettingsV1.new(
  bluetooth_custom_notifications: null,
  cid: null,
  created_by: null,
  created_timestamp: null,
  id: null,
  modified_by: null,
  modified_timestamp: null,
  usb_custom_notifications: null
)
```


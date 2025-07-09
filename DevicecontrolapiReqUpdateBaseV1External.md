# Falcon::DevicecontrolapiReqUpdateBaseV1External

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bluetooth_settings** | [**DevicecontrolapiReqUpdateBluetoothBaseV1**](DevicecontrolapiReqUpdateBluetoothBaseV1.md) |  | [optional] |
| **description** | **String** | Description of the policy (omit to keep current) | [optional] |
| **id** | **String** | ID of the policy to update |  |
| **name** | **String** | Name of the policy (omit to keep current) | [optional] |
| **usb_settings** | [**DevicecontrolapiReqUpdateUSBBaseV1External**](DevicecontrolapiReqUpdateUSBBaseV1External.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiReqUpdateBaseV1External.new(
  bluetooth_settings: null,
  description: null,
  id: null,
  name: null,
  usb_settings: null
)
```


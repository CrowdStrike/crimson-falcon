# Falcon::DevicecontrolapiReqUpdatePolicyClassesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bluetooth_classes** | [**DevicecontrolapiReqUpdateBluetoothClassesV1**](DevicecontrolapiReqUpdateBluetoothClassesV1.md) |  | [optional] |
| **id** | **String** |  |  |
| **usb_classes** | [**DevicecontrolapiReqUpdateUSBClassesV1**](DevicecontrolapiReqUpdateUSBClassesV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiReqUpdatePolicyClassesV1.new(
  bluetooth_classes: null,
  id: null,
  usb_classes: null
)
```


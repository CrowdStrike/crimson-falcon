# Falcon::DevicecontrolapiReqUpdateBluetoothClassV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action to be taken for devices in this class |  |
| **_class** | **String** | The Bluetooth Major Device class name |  |
| **minor_classes** | [**Array&lt;DevicecontrolapiReqUpdateBluetoothMinorClassV1&gt;**](DevicecontrolapiReqUpdateBluetoothMinorClassV1.md) | Array of Bluetooth Minor Device Classes in the Major Class |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiReqUpdateBluetoothClassV1.new(
  action: null,
  _class: null,
  minor_classes: null
)
```


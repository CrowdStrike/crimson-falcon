# Falcon::DevicecontrolapiReqCreatePolicyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bluetooth_settings** | [**DevicecontrolapiReqUpdateBluetoothBaseV1**](DevicecontrolapiReqUpdateBluetoothBaseV1.md) |  | [optional] |
| **clone_id** | **String** | ID of an existing policy to clone | [optional] |
| **description** | **String** | A description of the policy | [optional] |
| **name** | **String** | Name of the policy | [optional] |
| **platform_name** | **String** | Name of the platform. *Required if clone_id is empty | [optional] |
| **usb_settings** | [**DevicecontrolapiReqUpdateUSBBaseV1**](DevicecontrolapiReqUpdateUSBBaseV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiReqCreatePolicyV1.new(
  bluetooth_settings: null,
  clone_id: null,
  description: null,
  name: null,
  platform_name: null,
  usb_settings: null
)
```


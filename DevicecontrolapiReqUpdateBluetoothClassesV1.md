# Falcon::DevicecontrolapiReqUpdateBluetoothClassesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classes** | [**Array&lt;DevicecontrolapiReqUpdateBluetoothClassV1&gt;**](DevicecontrolapiReqUpdateBluetoothClassV1.md) | Array of Bluetooth classes |  |
| **delete_exceptions** | **Array&lt;String&gt;** | IDs of exceptions to be deleted |  |
| **upsert_exceptions** | [**Array&lt;DevicecontrolapiBluetoothExceptionBase&gt;**](DevicecontrolapiBluetoothExceptionBase.md) | Array of exceptions to add or update |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiReqUpdateBluetoothClassesV1.new(
  classes: null,
  delete_exceptions: null,
  upsert_exceptions: null
)
```


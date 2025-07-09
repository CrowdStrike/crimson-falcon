# Falcon::DevicecontrolapiReqUpdateUSBClassesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classes** | [**Array&lt;DevicecontrolapiReqUpdateUSBClassV1&gt;**](DevicecontrolapiReqUpdateUSBClassV1.md) | A collection of classes to update actions |  |
| **delete_exceptions** | **Array&lt;String&gt;** | A collection of exception IDs to delete |  |
| **upsert_exceptions** | [**Array&lt;DevicecontrolapiUSBExceptionBase&gt;**](DevicecontrolapiUSBExceptionBase.md) | A collection of exceptions to add or update. Empty ID indicates a new exception |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiReqUpdateUSBClassesV1.new(
  classes: null,
  delete_exceptions: null,
  upsert_exceptions: null
)
```


# Falcon::DevicecontrolapiRespUSBClassSettingsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Class level action (FULL_ACCESS,BLOCK_ALL,WHITELIST); MASS_STORAGE class only (BLOCK_EXECUTE,BLOCK_WRITE_EXECUTE) |  |
| **_class** | **String** | Name of the USB class |  |
| **exceptions** | [**Array&lt;DevicecontrolapiRespUSBExceptionV2&gt;**](DevicecontrolapiRespUSBExceptionV2.md) | Array of USB exceptions |  |
| **id** | **String** | ID of the USB class |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiRespUSBClassSettingsV2.new(
  action: null,
  _class: null,
  exceptions: null,
  id: null
)
```


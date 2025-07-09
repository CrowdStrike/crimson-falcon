# Falcon::DeviceControlRespDefaultSettingV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DevicecontrolapiRespMSAErrorV1&gt;**](DevicecontrolapiRespMSAErrorV1.md) | Array of errors |  |
| **meta** | [**DevicecontrolapiRespMSAMetaV1**](DevicecontrolapiRespMSAMetaV1.md) |  | [optional] |
| **resources** | [**Array&lt;DeviceControlRespUpdateDefaultSettingsV1&gt;**](DeviceControlRespUpdateDefaultSettingsV1.md) | Array of default settings |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlRespDefaultSettingV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


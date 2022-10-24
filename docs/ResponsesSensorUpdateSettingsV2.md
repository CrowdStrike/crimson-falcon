# Falcon::ResponsesSensorUpdateSettingsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **build** | **String** | The target build applied to devices in the policy |  |
| **sensor_version** | **String** |  |  |
| **uninstall_protection** | **String** | The uninstall protection setting to apply to devices in the policy |  |
| **variants** | [**Array&lt;ResponsesSensorUpdateBuildV1&gt;**](ResponsesSensorUpdateBuildV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesSensorUpdateSettingsV2.new(
  build: null,
  sensor_version: null,
  uninstall_protection: null,
  variants: null
)
```


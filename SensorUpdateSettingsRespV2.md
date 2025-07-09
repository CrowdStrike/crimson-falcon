# Falcon::SensorUpdateSettingsRespV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **build** | **String** | The target build applied to devices in the policy |  |
| **scheduler** | [**PolicySensorUpdateScheduler**](PolicySensorUpdateScheduler.md) |  |  |
| **sensor_version** | **String** |  |  |
| **show_early_adopter_builds** | **Boolean** | If true, early adopter builds will be visible on the sensor update policy page |  |
| **stage** | **String** | The release stage this build is in |  |
| **uninstall_protection** | **String** | The uninstall protection setting to apply to devices in the policy |  |
| **variants** | [**Array&lt;SensorUpdateBuildRespV1&gt;**](SensorUpdateBuildRespV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SensorUpdateSettingsRespV2.new(
  build: null,
  scheduler: null,
  sensor_version: null,
  show_early_adopter_builds: null,
  stage: null,
  uninstall_protection: null,
  variants: null
)
```


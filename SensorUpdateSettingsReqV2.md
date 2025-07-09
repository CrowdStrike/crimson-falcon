# Falcon::SensorUpdateSettingsReqV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **build** | **String** | The target build to apply to the policy | [optional] |
| **scheduler** | [**PolicySensorUpdateScheduler**](PolicySensorUpdateScheduler.md) |  |  |
| **show_early_adopter_builds** | **Boolean** | If true, early adopter builds will be visible on the sensor update policy page | [optional] |
| **uninstall_protection** | **String** | The uninstall protection state to apply to the policy | [optional] |
| **variants** | [**Array&lt;SensorUpdateBuildReqV1&gt;**](SensorUpdateBuildReqV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SensorUpdateSettingsReqV2.new(
  build: null,
  scheduler: null,
  show_early_adopter_builds: null,
  uninstall_protection: null,
  variants: null
)
```


# Falcon::RequestsSensorUpdateSettingsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **build** | **String** | The target build to apply to the policy | [optional] |
| **uninstall_protection** | **String** | The uninstall protection state to apply to the policy | [optional] |
| **variants** | [**Array&lt;RequestsSensorUpdateBuildV1&gt;**](RequestsSensorUpdateBuildV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsSensorUpdateSettingsV2.new(
  build: null,
  uninstall_protection: null,
  variants: null
)
```


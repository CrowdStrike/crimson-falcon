# Falcon::SensorUpdateCreatePolicyReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The description to use when creating the policy | [optional] |
| **name** | **String** | The name to use when creating the policy |  |
| **platform_name** | **String** | The name of the platform |  |
| **settings** | [**SensorUpdateSettingsReqV1**](SensorUpdateSettingsReqV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SensorUpdateCreatePolicyReqV1.new(
  description: null,
  name: null,
  platform_name: null,
  settings: null
)
```


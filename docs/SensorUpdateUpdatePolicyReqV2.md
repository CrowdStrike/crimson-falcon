# Falcon::SensorUpdateUpdatePolicyReqV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The new description to assign to the policy | [optional] |
| **id** | **String** | The id of the policy to update |  |
| **name** | **String** | The new name to assign to the policy | [optional] |
| **settings** | [**SensorUpdateSettingsReqV2**](SensorUpdateSettingsReqV2.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SensorUpdateUpdatePolicyReqV2.new(
  description: null,
  id: null,
  name: null,
  settings: null
)
```


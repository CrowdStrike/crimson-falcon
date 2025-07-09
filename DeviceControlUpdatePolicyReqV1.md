# Falcon::DeviceControlUpdatePolicyReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The new description to assign to the policy | [optional] |
| **id** | **String** | The id of the policy to update |  |
| **name** | **String** | The new name to assign to the policy | [optional] |
| **settings** | [**DeviceControlSettingsReqV1**](DeviceControlSettingsReqV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlUpdatePolicyReqV1.new(
  description: null,
  id: null,
  name: null,
  settings: null
)
```


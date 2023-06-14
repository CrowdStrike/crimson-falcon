# Falcon::DeviceControlCreatePolicyReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clone_id** | **String** | If specified the settings of the DeviceControl policy identified by the id will be used | [optional] |
| **description** | **String** | The description to use when creating the policy | [optional] |
| **name** | **String** | The name to use when creating the policy |  |
| **platform_name** | **String** | The name of the platform |  |
| **settings** | [**DeviceControlSettingsReqV1**](DeviceControlSettingsReqV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlCreatePolicyReqV1.new(
  clone_id: null,
  description: null,
  name: null,
  platform_name: null,
  settings: null
)
```


# Falcon::PreventionUpdatePolicyReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The new description to assign to the policy | [optional] |
| **id** | **String** | The id of the policy to update |  |
| **name** | **String** | The new name to assign to the policy | [optional] |
| **settings** | [**Array&lt;PreventionSettingReqV1&gt;**](PreventionSettingReqV1.md) | A collection of prevention policy settings to update |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PreventionUpdatePolicyReqV1.new(
  description: null,
  id: null,
  name: null,
  settings: null
)
```


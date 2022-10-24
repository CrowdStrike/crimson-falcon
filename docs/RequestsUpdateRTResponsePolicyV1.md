# Falcon::RequestsUpdateRTResponsePolicyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The new description to assign to the policy | [optional] |
| **id** | **String** | The id of the policy to update |  |
| **name** | **String** | The new name to assign to the policy | [optional] |
| **settings** | [**Array&lt;RequestsPreventionSettingV1&gt;**](RequestsPreventionSettingV1.md) | A collection of realtime response policy settings to update |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsUpdateRTResponsePolicyV1.new(
  description: null,
  id: null,
  name: null,
  settings: null
)
```


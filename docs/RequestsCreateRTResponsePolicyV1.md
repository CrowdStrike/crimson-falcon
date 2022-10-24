# Falcon::RequestsCreateRTResponsePolicyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clone_id** | **String** | If specified the settings of the realtime response policy identified by the id will be used | [optional] |
| **description** | **String** | The description to use when creating the policy | [optional] |
| **name** | **String** | The name to use when creating the policy |  |
| **platform_name** | **String** | The name of the platform |  |
| **settings** | [**Array&lt;RequestsPreventionSettingV1&gt;**](RequestsPreventionSettingV1.md) | The settings to create the policy with | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsCreateRTResponsePolicyV1.new(
  clone_id: null,
  description: null,
  name: null,
  platform_name: null,
  settings: null
)
```


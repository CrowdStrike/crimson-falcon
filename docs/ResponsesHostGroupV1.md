# Falcon::ResponsesHostGroupV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignment_rule** | **String** | The assignment rule of a group | [optional] |
| **created_by** | **String** | The email of the user which created the policy |  |
| **created_timestamp** | **Time** | The time at which the policy was created |  |
| **description** | **String** | An additional description of the group or the devices it targets |  |
| **group_type** | **String** | The method by which this host group is managed | [optional] |
| **id** | **String** | The identifier of this host group |  |
| **modified_by** | **String** | The email of the user which last modified the policy |  |
| **modified_timestamp** | **Time** | The time at which the policy was last modified |  |
| **name** | **String** | The name of the group |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesHostGroupV1.new(
  assignment_rule: null,
  created_by: null,
  created_timestamp: null,
  description: null,
  group_type: null,
  id: null,
  modified_by: null,
  modified_timestamp: null,
  name: null
)
```


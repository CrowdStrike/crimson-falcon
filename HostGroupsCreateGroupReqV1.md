# Falcon::HostGroupsCreateGroupReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignment_rule** | **String** | The FQL assignment rule for the group. This may only be specified if the groups type is &#39;dynamic&#39; | [optional] |
| **description** | **String** | The description of the group | [optional] |
| **group_type** | **String** | The type of device group to create |  |
| **name** | **String** | The name of the group |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::HostGroupsCreateGroupReqV1.new(
  assignment_rule: null,
  description: null,
  group_type: null,
  name: null
)
```


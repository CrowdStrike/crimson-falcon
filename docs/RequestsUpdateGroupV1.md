# Falcon::RequestsUpdateGroupV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignment_rule** | **String** | The new assignment rule of the group. Note: If the group type is static, this field cannot be updated manually | [optional] |
| **description** | **String** | The new description of the group | [optional] |
| **id** | **String** | The id of the group to update |  |
| **name** | **String** | The new name of the group | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsUpdateGroupV1.new(
  assignment_rule: null,
  description: null,
  id: null,
  name: null
)
```


# Falcon::ModelsCreateImageGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  |  |
| **name** | **String** |  |  |
| **policy_group_data** | [**ModelsAPIPolicyGroupData**](ModelsAPIPolicyGroupData.md) |  | [optional] |
| **policy_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsCreateImageGroupRequest.new(
  description: null,
  name: null,
  policy_group_data: null,
  policy_id: null
)
```


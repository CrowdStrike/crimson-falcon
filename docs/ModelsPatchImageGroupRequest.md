# Falcon::ModelsPatchImageGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  |  |
| **name** | **String** |  |  |
| **policy_group_data** | [**ModelsAPIPolicyGroupData**](ModelsAPIPolicyGroupData.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsPatchImageGroupRequest.new(
  description: null,
  name: null,
  policy_group_data: null
)
```


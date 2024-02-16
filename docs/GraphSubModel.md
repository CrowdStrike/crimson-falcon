# Falcon::GraphSubModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flows** | [**Flows**](Flows.md) |  |  |
| **model** | [**GraphDefinitionModel**](GraphDefinitionModel.md) |  |  |
| **multi** | [**GraphMulti**](GraphMulti.md) |  |  |
| **name** | **String** | Optional user provided name for the activity, if not specified a name based on the array field is used. | [optional] |
| **node_id** | **String** |  |  |
| **output_field** | **String** | Name of the output field that contains the result from sub-model. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphSubModel.new(
  flows: null,
  model: null,
  multi: null,
  name: null,
  node_id: null,
  output_field: null
)
```


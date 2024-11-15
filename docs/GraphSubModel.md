# Falcon::GraphSubModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flows** | [**Flows**](Flows.md) |  |  |
| **model** | [**GraphDefinitionModel**](GraphDefinitionModel.md) |  |  |
| **multi** | [**GraphMulti**](GraphMulti.md) |  |  |
| **name** | **String** | Optional user provided name for the submodel. | [optional] |
| **node_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphSubModel.new(
  flows: null,
  model: null,
  multi: null,
  name: null,
  node_id: null
)
```


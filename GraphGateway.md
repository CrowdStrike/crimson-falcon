# Falcon::GraphGateway

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flows** | [**Flows**](Flows.md) |  |  |
| **node_id** | **String** |  |  |
| **type** | **String** | The type of gateway being specified, allowed values are; exclusive, inclusive and parallel. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphGateway.new(
  flows: null,
  node_id: null,
  type: null
)
```


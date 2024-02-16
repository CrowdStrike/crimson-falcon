# Falcon::GraphFlow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition** | [**GraphCondition**](GraphCondition.md) |  | [optional] |
| **source** | **String** | Reference to the ID of the node that is the source of the flow. |  |
| **source_alias** | **String** | Alias for the source of the flow. | [optional] |
| **target** | **String** | Reference to the ID of the node that is the target of the flow. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphFlow.new(
  condition: null,
  source: null,
  source_alias: null,
  target: null
)
```


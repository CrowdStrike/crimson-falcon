# Falcon::ClientCosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_cost** | **Float** |  |  |
| **live_cost_rate** | **Float** |  |  |
| **static_cost** | **Float** |  |  |
| **static_cost_rate** | **Float** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientCosts.new(
  live_cost: null,
  live_cost_rate: null,
  static_cost: null,
  static_cost_rate: null
)
```


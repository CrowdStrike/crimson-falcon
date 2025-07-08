# Falcon::Costs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_cost** | **Float** | The cost of execution of a live query |  |
| **live_cost_rate** | **Float** | The rate of the live cost query |  |
| **static_cost** | **Float** | The cost for executing as a static query |  |
| **static_cost_rate** | **Float** | The rate for executing static queries |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::Costs.new(
  live_cost: null,
  live_cost_rate: null,
  static_cost: null,
  static_cost_rate: null
)
```


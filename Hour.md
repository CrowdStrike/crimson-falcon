# Falcon::Hour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_cost** | **Integer** | Live cost of executing the query |  |
| **query_count** | **Integer** | Number of executions of the query |  |
| **static_cost** | **Integer** | Static cost of executing the query |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::Hour.new(
  live_cost: null,
  query_count: null,
  static_cost: null
)
```


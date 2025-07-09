# Falcon::ClientSpent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day** | [**ClientCost**](ClientCost.md) |  |  |
| **hour** | [**ClientCost**](ClientCost.md) |  |  |
| **one_minute** | [**ClientCost**](ClientCost.md) |  |  |
| **ten_minutes** | [**ClientCost**](ClientCost.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientSpent.new(
  day: null,
  hour: null,
  one_minute: null,
  ten_minutes: null
)
```


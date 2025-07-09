# Falcon::ApiCreateRuleOperationV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule** | [**ApiRuleScheduleV1**](ApiRuleScheduleV1.md) |  |  |
| **start_on** | **Time** |  | [optional] |
| **stop_on** | **Time** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiCreateRuleOperationV1.new(
  schedule: null,
  start_on: null,
  stop_on: null
)
```


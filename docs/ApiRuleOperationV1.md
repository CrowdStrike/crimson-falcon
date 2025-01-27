# Falcon::ApiRuleOperationV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiration_on** | **Time** |  | [optional] |
| **schedule** | [**ApiRuleScheduleV1**](ApiRuleScheduleV1.md) |  |  |
| **start_on** | **Time** |  | [optional] |
| **stop_on** | **Time** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleOperationV1.new(
  expiration_on: null,
  schedule: null,
  start_on: null,
  stop_on: null
)
```


# Falcon::ApiPatchRuleOperationV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule** | [**ApiRuleScheduleV1Patch**](ApiRuleScheduleV1Patch.md) |  | [optional] |
| **start_on** | **Time** |  | [optional] |
| **stop_on** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiPatchRuleOperationV1.new(
  schedule: null,
  start_on: null,
  stop_on: null
)
```


# Falcon::JsonschemaConditionGroupFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition_control** | **Boolean** |  | [optional] |
| **control_name** | **String** |  | [optional] |
| **controller** | **Boolean** |  | [optional] |
| **dependent_control** | **String** |  | [optional] |
| **reset_fields** | [**JsonschemaResetFields**](JsonschemaResetFields.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::JsonschemaConditionGroupFields.new(
  condition_control: null,
  control_name: null,
  controller: null,
  dependent_control: null,
  reset_fields: null
)
```


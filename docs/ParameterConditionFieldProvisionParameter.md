# Falcon::ParameterConditionFieldProvisionParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition_group_id** | **String** | specifies the conditin group id inside the flow node. This is needed since with or support now we can have multiple instances of the same variable |  |
| **name** | **String** | Fully qualified name of the field |  |
| **operator** | **String** | Optional operator to be used as part of the condition. It not supplied the default in the template will be used. |  |
| **value** | **Object** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterConditionFieldProvisionParameter.new(
  condition_group_id: null,
  name: null,
  operator: null,
  value: null
)
```


# Falcon::ParameterConditionFieldProvisionParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Fully qualified name of the field |  |
| **operator** | **String** | Optional operator to be used as part of the condition. It not supplied the default in the template will be used. |  |
| **value** | **Object** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterConditionFieldProvisionParameter.new(
  name: null,
  operator: null,
  value: null
)
```


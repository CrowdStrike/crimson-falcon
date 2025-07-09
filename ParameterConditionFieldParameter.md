# Falcon::ParameterConditionFieldParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_operator** | **String** | Optional default operator to be used as part of the condition | [optional] |
| **default_value** | **Object** |  | [optional] |
| **helper_text** | **String** | Optional text/description which can be used to provide differentiation for parameterized fields during app installation. | [optional] |
| **multiple** | **Boolean** | Whether the field can be specified multiple times as provisioning parameter. When true, all values or combined via an OR operator. |  |
| **operator** | **String** | The default operator that should be applied for this field. | [optional] |
| **required** | **Boolean** | Indicates whether the field must be specified as a parameter at provision time. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterConditionFieldParameter.new(
  default_operator: null,
  default_value: null,
  helper_text: null,
  multiple: null,
  operator: null,
  required: null
)
```


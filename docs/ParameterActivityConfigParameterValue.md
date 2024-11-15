# Falcon::ParameterActivityConfigParameterValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_value** | **Object** |  | [optional] |
| **deny_override** | **Boolean** | Specifies whether the given activity configuration property can be overridden at provisioning time. | [optional] |
| **helper_text** | **String** | Optional text/description which can be used to provide differentiation for parameterized fields during app installation. | [optional] |
| **required** | **Boolean** | Indication of whether the property must be specified as a parameter during template provisioning. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterActivityConfigParameterValue.new(
  default_value: null,
  deny_override: null,
  helper_text: null,
  required: null
)
```


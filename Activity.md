# Falcon::Activity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_type** | [**TypesPolicyRulesCondition**](TypesPolicyRulesCondition.md) |  | [optional] |
| **access_type_custom** | [**TypesPolicyRulesCondition**](TypesPolicyRulesCondition.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::Activity.new(
  access_type: null,
  access_type_custom: null
)
```


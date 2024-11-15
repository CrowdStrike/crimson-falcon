# Falcon::SourceUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | [**TypesPolicyRulesCondition**](TypesPolicyRulesCondition.md) |  | [optional] |
| **group_membership** | [**TypesPolicyRulesCondition**](TypesPolicyRulesCondition.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SourceUser.new(
  entity_id: null,
  group_membership: null
)
```


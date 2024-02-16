# Falcon::ChangesPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **rule_group** | [**ChangesPolicyRuleGroup**](ChangesPolicyRuleGroup.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesPolicy.new(
  name: null,
  rule_group: null
)
```


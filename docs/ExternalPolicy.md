# Falcon::ExternalPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **rule_group** | [**ExternalPolicyRuleGroup**](ExternalPolicyRuleGroup.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ExternalPolicy.new(
  name: null,
  rule_group: null
)
```


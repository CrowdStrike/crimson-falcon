# Falcon::ModelsComplianceByRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **not_applicable_filters** | **String** |  |  |
| **percentage_of_passed_rules** | **Float** |  |  |
| **rule_status_list** | [**Array&lt;ModelsRuleStatus&gt;**](ModelsRuleStatus.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsComplianceByRules.new(
  not_applicable_filters: null,
  percentage_of_passed_rules: null,
  rule_status_list: null
)
```


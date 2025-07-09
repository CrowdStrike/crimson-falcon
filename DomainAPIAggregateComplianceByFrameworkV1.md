# Falcon::DomainAPIAggregateComplianceByFrameworkV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_rules_count** | **Integer** |  |  |
| **framework_name** | **String** |  |  |
| **framework_name_version** | **String** |  |  |
| **framework_version** | **String** |  |  |
| **passed_rules_count** | **Integer** |  |  |
| **percentage_of_passed_rules** | **Float** |  |  |
| **rule_status_list** | [**Array&lt;DomainAPIAssetComplianceFindingV1&gt;**](DomainAPIAssetComplianceFindingV1.md) |  |  |
| **total_rules_count** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregateComplianceByFrameworkV1.new(
  failed_rules_count: null,
  framework_name: null,
  framework_name_version: null,
  framework_version: null,
  passed_rules_count: null,
  percentage_of_passed_rules: null,
  rule_status_list: null,
  total_rules_count: null
)
```


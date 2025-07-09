# Falcon::DomainAPIAggregateComplianceByAssetTypeV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_type** | **String** |  |  |
| **failed_rules_count** | **Integer** |  |  |
| **passed_rules_count** | **Integer** |  |  |
| **percentage_of_passed_rules** | **Float** |  |  |
| **rule_status_list** | [**Array&lt;DomainAPIAssetComplianceFindingV1&gt;**](DomainAPIAssetComplianceFindingV1.md) |  |  |
| **total_rules_count** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregateComplianceByAssetTypeV1.new(
  asset_type: null,
  failed_rules_count: null,
  passed_rules_count: null,
  percentage_of_passed_rules: null,
  rule_status_list: null,
  total_rules_count: null
)
```


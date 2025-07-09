# Falcon::DomainAPIAggregateFailedRulesByClustersV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **cluster_derived_id** | **String** |  |  |
| **cluster_id** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **failed_rules_count** | **Integer** |  |  |
| **failed_rules_count_by_severity** | [**DomainCountBySeverity**](DomainCountBySeverity.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregateFailedRulesByClustersV3.new(
  cid: null,
  cluster_derived_id: null,
  cluster_id: null,
  cluster_name: null,
  failed_rules_count: null,
  failed_rules_count_by_severity: null
)
```


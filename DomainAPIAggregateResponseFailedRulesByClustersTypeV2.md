# Falcon::DomainAPIAggregateResponseFailedRulesByClustersTypeV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIAggregateResponseFailedRulesByClustersTypeV2Resources&gt;**](DomainAPIAggregateResponseFailedRulesByClustersTypeV2Resources.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregateResponseFailedRulesByClustersTypeV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


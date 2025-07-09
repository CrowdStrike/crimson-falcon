# Falcon::DomainAggregateFailedRulesByClustersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsClusterWithFailedRules&gt;**](ModelsClusterWithFailedRules.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregateFailedRulesByClustersResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


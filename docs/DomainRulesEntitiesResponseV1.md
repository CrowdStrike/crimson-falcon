# Falcon::DomainRulesEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) | The request encountered errors |  |
| **meta** | [**DomainRuleMetaInfo**](DomainRuleMetaInfo.md) |  |  |
| **resources** | [**Array&lt;SadomainRule&gt;**](SadomainRule.md) | The requested rule resources |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainRulesEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


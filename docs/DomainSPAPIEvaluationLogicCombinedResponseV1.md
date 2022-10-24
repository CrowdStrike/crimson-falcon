# Falcon::DomainSPAPIEvaluationLogicCombinedResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**DomainSPAPIQueryMeta**](DomainSPAPIQueryMeta.md) |  |  |
| **resources** | [**Array&lt;DomainAPIEvaluationLogicV1&gt;**](DomainAPIEvaluationLogicV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainSPAPIEvaluationLogicCombinedResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


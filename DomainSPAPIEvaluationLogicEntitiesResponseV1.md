# Falcon::DomainSPAPIEvaluationLogicEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**DomainMetaInfo**](DomainMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIEvaluationLogicV1&gt;**](DomainAPIEvaluationLogicV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSPAPIEvaluationLogicEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainAPIEvaluationLogicEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIEvaluationLogicV1&gt;**](DomainAPIEvaluationLogicV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIEvaluationLogicEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


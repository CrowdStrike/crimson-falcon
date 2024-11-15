# Falcon::DomainAssessmentsByScoreResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**DomainSearchAfterMeta**](DomainSearchAfterMeta.md) |  |  |
| **resources** | [**Array&lt;DomainZeroTrustSimpleAssessment&gt;**](DomainZeroTrustSimpleAssessment.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAssessmentsByScoreResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


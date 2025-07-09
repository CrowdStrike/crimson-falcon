# Falcon::DomainMsaEnvironmentScoreResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainEnvironmentScore&gt;**](DomainEnvironmentScore.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMsaEnvironmentScoreResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


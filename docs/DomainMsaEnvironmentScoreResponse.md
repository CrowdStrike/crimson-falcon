# Falcon::DomainMsaEnvironmentScoreResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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


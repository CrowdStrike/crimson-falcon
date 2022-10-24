# Falcon::ApiMsaEnvironmentScoreResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainEnvironmentScore&gt;**](DomainEnvironmentScore.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiMsaEnvironmentScoreResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


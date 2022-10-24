# Falcon::DomainBatchRefreshSessionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Hash&lt;String, DomainMultiPulseSensorResponse&gt;**](DomainMultiPulseSensorResponse.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBatchRefreshSessionResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


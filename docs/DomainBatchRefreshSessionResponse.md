# Falcon::DomainBatchRefreshSessionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Hash&lt;String, DomainMultiPulseSensorResponse&gt;**](DomainMultiPulseSensorResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainBatchRefreshSessionResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


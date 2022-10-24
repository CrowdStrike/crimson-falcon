# Falcon::ApiIndicatorRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**ApiIndicatorsQueryMeta**](ApiIndicatorsQueryMeta.md) |  |  |
| **resources** | [**Array&lt;ApiIndicatorV1&gt;**](ApiIndicatorV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiIndicatorRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


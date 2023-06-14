# Falcon::ApiIndicatorRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**ApiIndicatorsQueryMeta**](ApiIndicatorsQueryMeta.md) |  |  |
| **resources** | [**Array&lt;ApiIndicatorV1&gt;**](ApiIndicatorV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiIndicatorRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


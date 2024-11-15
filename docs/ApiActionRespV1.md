# Falcon::ApiActionRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**ApiIndicatorsQueryMeta**](ApiIndicatorsQueryMeta.md) |  |  |
| **resources** | [**Array&lt;ApiActionV1&gt;**](ApiActionV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiActionRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


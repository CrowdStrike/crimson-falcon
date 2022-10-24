# Falcon::ApiIndicatorQueryRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**ApiIndicatorsQueryMeta**](ApiIndicatorsQueryMeta.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiIndicatorQueryRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


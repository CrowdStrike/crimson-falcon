# Falcon::ApiIndicatorQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**ApiIndicatorsQueryMeta**](ApiIndicatorsQueryMeta.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiIndicatorQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


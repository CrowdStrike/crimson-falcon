# Falcon::RestapiIndicatorsAggregatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MsaAggregationResult&gt;**](MsaAggregationResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestapiIndicatorsAggregatesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


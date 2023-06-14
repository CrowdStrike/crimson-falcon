# Falcon::FwmgrApiAggregatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaspecError&gt;**](FwmgrMsaspecError.md) |  | [optional] |
| **meta** | [**FwmgrMsaspecMetaInfo**](FwmgrMsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrMsaAggregationResult&gt;**](FwmgrMsaAggregationResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiAggregatesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


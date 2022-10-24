# Falcon::FwmgrApiAggregatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaAPIError&gt;**](FwmgrMsaAPIError.md) |  | [optional] |
| **meta** | [**FwmgrMsaMetaInfo**](FwmgrMsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrMsaAggregationResult&gt;**](FwmgrMsaAggregationResult.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiAggregatesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


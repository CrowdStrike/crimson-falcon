# Falcon::FwmgrApiNetworkLocationSummariesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaspecError&gt;**](FwmgrMsaspecError.md) |  | [optional] |
| **meta** | [**FwmgrMsaspecMetaInfo**](FwmgrMsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrApiNetworkLocationSummaryV1&gt;**](FwmgrApiNetworkLocationSummaryV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiNetworkLocationSummariesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


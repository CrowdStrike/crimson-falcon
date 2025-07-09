# Falcon::FwmgrApiNetworkLocationsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaspecError&gt;**](FwmgrMsaspecError.md) |  | [optional] |
| **meta** | [**FwmgrMsaspecMetaInfo**](FwmgrMsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrApiNetworkLocationsV1&gt;**](FwmgrApiNetworkLocationsV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiNetworkLocationsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


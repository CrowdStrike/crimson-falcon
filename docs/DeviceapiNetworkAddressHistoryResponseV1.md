# Falcon::DeviceapiNetworkAddressHistoryResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DeviceapiNetworkAddressHistoryV1&gt;**](DeviceapiNetworkAddressHistoryV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DeviceapiNetworkAddressHistoryResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


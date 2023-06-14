# Falcon::HostGroupsMembersRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DeviceDevice&gt;**](DeviceDevice.md) | A collection of device details |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::HostGroupsMembersRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


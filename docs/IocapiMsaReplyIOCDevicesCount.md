# Falcon::IocapiMsaReplyIOCDevicesCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**IocapiResponseMeta**](IocapiResponseMeta.md) |  |  |
| **resources** | [**Array&lt;IocapiIOCDevicesCount&gt;**](IocapiIOCDevicesCount.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::IocapiMsaReplyIOCDevicesCount.new(
  errors: null,
  meta: null,
  resources: null
)
```


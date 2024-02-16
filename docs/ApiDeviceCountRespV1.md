# Falcon::ApiDeviceCountRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  | [optional] |
| **resources** | [**Array&lt;ApiDeviceCountV1&gt;**](ApiDeviceCountV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiDeviceCountRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


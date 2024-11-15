# Falcon::DeviceapiLoginHistoryResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DeviceapiLoginDetailV1&gt;**](DeviceapiLoginDetailV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceapiLoginHistoryResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


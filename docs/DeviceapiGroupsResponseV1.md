# Falcon::DeviceapiGroupsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DeviceapiGroupResponseV1&gt;**](DeviceapiGroupResponseV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceapiGroupsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


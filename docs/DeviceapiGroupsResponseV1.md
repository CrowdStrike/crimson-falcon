# Falcon::DeviceapiGroupsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DeviceapiGroupResponseV1&gt;**](DeviceapiGroupResponseV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DeviceapiGroupsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


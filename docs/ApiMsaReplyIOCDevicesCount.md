# Falcon::ApiMsaReplyIOCDevicesCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**ApiResponseMeta**](ApiResponseMeta.md) |  |  |
| **resources** | [**Array&lt;ApiIOCDevicesCount&gt;**](ApiIOCDevicesCount.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiMsaReplyIOCDevicesCount.new(
  errors: null,
  meta: null,
  resources: null
)
```


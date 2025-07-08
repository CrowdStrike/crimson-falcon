# Falcon::QuickscanproLaunchScanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**QuickscanproMetaInfo**](QuickscanproMetaInfo.md) |  |  |
| **quota** | [**QuickscanproQuotaResource**](QuickscanproQuotaResource.md) |  | [optional] |
| **resources** | [**Array&lt;QuickscanproLaunchScanResource&gt;**](QuickscanproLaunchScanResource.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuickscanproLaunchScanResponse.new(
  errors: null,
  meta: null,
  quota: null,
  resources: null
)
```


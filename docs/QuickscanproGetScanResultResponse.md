# Falcon::QuickscanproGetScanResultResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;QuickscanproGetScanResultResource&gt;**](QuickscanproGetScanResultResource.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuickscanproGetScanResultResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


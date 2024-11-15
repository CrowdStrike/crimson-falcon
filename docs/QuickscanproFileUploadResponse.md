# Falcon::QuickscanproFileUploadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **quota** | [**QuickscanproQuotaResource**](QuickscanproQuotaResource.md) |  | [optional] |
| **resources** | [**Array&lt;QuickscanproFileUploadResource&gt;**](QuickscanproFileUploadResource.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuickscanproFileUploadResponse.new(
  errors: null,
  meta: null,
  quota: null,
  resources: null
)
```


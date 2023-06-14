# Falcon::ClientArchiveCreateResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ClientArchiveWithFilesV1&gt;**](ClientArchiveWithFilesV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientArchiveCreateResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::ClientExtractionListFilesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ClientExtractionFileResultV1&gt;**](ClientExtractionFileResultV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientExtractionListFilesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


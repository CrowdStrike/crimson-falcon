# Falcon::ClientExtractionListFilesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


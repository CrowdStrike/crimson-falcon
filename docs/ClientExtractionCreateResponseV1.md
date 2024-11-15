# Falcon::ClientExtractionCreateResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ClientExtractionWithFilesV1&gt;**](ClientExtractionWithFilesV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientExtractionCreateResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


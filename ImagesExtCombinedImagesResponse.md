# Falcon::ImagesExtCombinedImagesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsExtAPIImageCombined&gt;**](ModelsExtAPIImageCombined.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ImagesExtCombinedImagesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


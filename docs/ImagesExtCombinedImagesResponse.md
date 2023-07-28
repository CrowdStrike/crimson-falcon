# Falcon::ImagesExtCombinedImagesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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


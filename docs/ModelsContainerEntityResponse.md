# Falcon::ModelsContainerEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsContainer&gt;**](ModelsContainer.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsContainerEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


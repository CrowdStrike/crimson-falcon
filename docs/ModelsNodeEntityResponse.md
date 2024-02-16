# Falcon::ModelsNodeEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsNode&gt;**](ModelsNode.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsNodeEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


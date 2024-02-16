# Falcon::ModelsPolicyGroupEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | [**Array&lt;ModelsAPIPolicyGroup&gt;**](ModelsAPIPolicyGroup.md) |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsPolicyGroupEntityResponse.new(
  resources: null,
  errors: null,
  meta: null
)
```


# Falcon::ModelsPolicyEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | [**Array&lt;ModelsAPIPolicyEntity&gt;**](ModelsAPIPolicyEntity.md) |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsPolicyEntityResponse.new(
  resources: null,
  errors: null,
  meta: null
)
```


# Falcon::ModelsPolicyGroupEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsAPIPolicyGroup&gt;**](ModelsAPIPolicyGroup.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsPolicyGroupEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


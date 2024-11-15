# Falcon::ModelsPolicyExclusionEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsAPIPolicyExclusion&gt;**](ModelsAPIPolicyExclusion.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsPolicyExclusionEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


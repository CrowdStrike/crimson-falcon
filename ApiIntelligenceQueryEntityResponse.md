# Falcon::ApiIntelligenceQueryEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiIntelligenceQueryEntity&gt;**](ApiIntelligenceQueryEntity.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiIntelligenceQueryEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


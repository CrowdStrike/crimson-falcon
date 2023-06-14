# Falcon::ApiPatternsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiPatternV1&gt;**](ApiPatternV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiPatternsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


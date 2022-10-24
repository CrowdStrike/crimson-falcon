# Falcon::ApiPatternsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiPatternV1&gt;**](ApiPatternV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiPatternsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


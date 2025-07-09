# Falcon::ContentchangesChangeContentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**ContentchangesContentDiff**](ContentchangesContentDiff.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ContentchangesChangeContentsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


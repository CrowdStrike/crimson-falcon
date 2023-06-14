# Falcon::PublicGetChangesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;PublicChange&gt;**](PublicChange.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PublicGetChangesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


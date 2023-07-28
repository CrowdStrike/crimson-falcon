# Falcon::CommonEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | **Object** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::CommonEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::ApiEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | **Object** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::CommonEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


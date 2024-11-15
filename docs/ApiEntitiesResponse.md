# Falcon::ApiEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


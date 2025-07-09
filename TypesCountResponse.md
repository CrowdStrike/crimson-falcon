# Falcon::TypesCountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;TypesQueryCountResponse&gt;**](TypesQueryCountResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesCountResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


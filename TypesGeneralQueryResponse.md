# Falcon::TypesGeneralQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;TypesQueryResponse&gt;**](TypesQueryResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGeneralQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


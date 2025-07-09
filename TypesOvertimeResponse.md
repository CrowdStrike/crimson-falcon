# Falcon::TypesOvertimeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;TypesQueryOvertimeResponseItem&gt;**](TypesQueryOvertimeResponseItem.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesOvertimeResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


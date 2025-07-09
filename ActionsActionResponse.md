# Falcon::ActionsActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** |  |  |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ActionsActionResponse.new(
  action_id: null,
  errors: null,
  meta: null
)
```


# Falcon::ActionsGetActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ActionsAction&gt;**](ActionsAction.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ActionsGetActionResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


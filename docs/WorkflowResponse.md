# Falcon::WorkflowResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **ids** | **Array&lt;String&gt;** |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::WorkflowResponse.new(
  errors: null,
  ids: null,
  meta: null
)
```


# Falcon::RestCursorResponseFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**RestCursorMetaInfo**](RestCursorMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestCursorResponseFields.new(
  errors: null,
  meta: null
)
```


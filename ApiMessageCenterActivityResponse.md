# Falcon::ApiMessageCenterActivityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MessagesActivity&gt;**](MessagesActivity.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiMessageCenterActivityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


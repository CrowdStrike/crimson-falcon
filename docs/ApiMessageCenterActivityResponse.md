# Falcon::ApiMessageCenterActivityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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


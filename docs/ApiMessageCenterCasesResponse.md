# Falcon::ApiMessageCenterCasesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MessagesCase&gt;**](MessagesCase.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiMessageCenterCasesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


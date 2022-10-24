# Falcon::ApiMessageCenterCasesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MessagesCase&gt;**](MessagesCase.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiMessageCenterCasesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


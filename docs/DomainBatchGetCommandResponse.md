# Falcon::DomainBatchGetCommandResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_get_cmd_req_id** | **String** |  |  |
| **combined** | [**DomainMultiCommandExecuteResponse**](DomainMultiCommandExecuteResponse.md) |  |  |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainBatchGetCommandResponse.new(
  batch_get_cmd_req_id: null,
  combined: null,
  errors: null,
  meta: null
)
```


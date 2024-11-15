# Falcon::DomainMultiCommandExecuteResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **combined** | [**DomainMultiCommandExecuteResponse**](DomainMultiCommandExecuteResponse.md) |  |  |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMultiCommandExecuteResponseWrapper.new(
  combined: null,
  errors: null,
  meta: null
)
```


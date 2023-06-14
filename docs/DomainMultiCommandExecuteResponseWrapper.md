# Falcon::DomainMultiCommandExecuteResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **combined** | [**DomainMultiCommandExecuteResponse**](DomainMultiCommandExecuteResponse.md) |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMultiCommandExecuteResponseWrapper.new(
  combined: null,
  errors: null,
  meta: null
)
```


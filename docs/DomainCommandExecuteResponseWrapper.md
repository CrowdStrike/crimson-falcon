# Falcon::DomainCommandExecuteResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainCommandExecuteResponse&gt;**](DomainCommandExecuteResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCommandExecuteResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainCommandExecuteResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainCommandExecuteResponse&gt;**](DomainCommandExecuteResponse.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainCommandExecuteResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```


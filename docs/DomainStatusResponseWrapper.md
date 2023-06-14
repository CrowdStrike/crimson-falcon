# Falcon::DomainStatusResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainStatusResponse&gt;**](DomainStatusResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainStatusResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```


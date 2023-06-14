# Falcon::DomainInitResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainInitResponse&gt;**](DomainInitResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainInitResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainSessionResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainSession&gt;**](DomainSession.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSessionResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```


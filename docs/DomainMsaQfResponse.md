# Falcon::DomainMsaQfResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;QuarantineQuarantinedFile&gt;**](QuarantineQuarantinedFile.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMsaQfResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


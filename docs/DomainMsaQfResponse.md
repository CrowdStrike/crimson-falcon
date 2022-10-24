# Falcon::DomainMsaQfResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;QuarantineQuarantinedFile&gt;**](QuarantineQuarantinedFile.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainMsaQfResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


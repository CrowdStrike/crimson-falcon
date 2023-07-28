# Falcon::DomainActorsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) | Array of API Errors |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainActorDocument&gt;**](DomainActorDocument.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainActorsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


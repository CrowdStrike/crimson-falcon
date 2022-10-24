# Falcon::DomainActorsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainActorDocument&gt;**](DomainActorDocument.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainActorsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


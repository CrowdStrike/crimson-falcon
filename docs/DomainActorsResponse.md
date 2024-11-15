# Falcon::DomainActorsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | Array of API Errors |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


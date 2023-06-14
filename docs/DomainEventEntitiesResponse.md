# Falcon::DomainEventEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainEvent&gt;**](DomainEvent.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainEventEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainEventEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


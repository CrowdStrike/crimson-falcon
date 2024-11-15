# Falcon::DomainExternalAssetRedirectStepAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clue** | **String** | Clue to how the entity was discovered |  |
| **entity** | **String** | The value of the entity being presented |  |
| **entity_type** | **String** | The entity type of the described entity |  |
| **id** | **String** | The discovery redirect step identifier, can be omitted | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetRedirectStepAttributes.new(
  clue: null,
  entity: null,
  entity_type: null,
  id: null
)
```


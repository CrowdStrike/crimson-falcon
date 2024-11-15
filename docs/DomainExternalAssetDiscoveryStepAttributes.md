# Falcon::DomainExternalAssetDiscoveryStepAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clue** | **String** | The reasoning behind this association |  |
| **entity** | **String** | The step entity |  |
| **entity_type** | **String** | The entity type of the described entity |  |
| **id** | **String** | The discovery step identifier | [optional] |
| **redirect_path** | [**Array&lt;DomainExternalAssetRedirectStepAttributes&gt;**](DomainExternalAssetRedirectStepAttributes.md) | The redirect path | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetDiscoveryStepAttributes.new(
  clue: null,
  entity: null,
  entity_type: null,
  id: null,
  redirect_path: null
)
```


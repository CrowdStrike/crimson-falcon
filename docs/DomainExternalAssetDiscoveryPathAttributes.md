# Falcon::DomainExternalAssetDiscoveryPathAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **steps** | [**Array&lt;DomainExternalAssetDiscoveryStepAttributes&gt;**](DomainExternalAssetDiscoveryStepAttributes.md) | The list of steps in the current discovery path | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetDiscoveryPathAttributes.new(
  steps: null
)
```


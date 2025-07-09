# Falcon::DomainExternalAssetDiscoveryAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alternative_paths** | [**Array&lt;DomainExternalAssetDiscoveryPathAttributes&gt;**](DomainExternalAssetDiscoveryPathAttributes.md) | Alternative discovery paths | [optional] |
| **path** | [**DomainExternalAssetDiscoveryPathAttributes**](DomainExternalAssetDiscoveryPathAttributes.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetDiscoveryAttributes.new(
  alternative_paths: null,
  path: null
)
```


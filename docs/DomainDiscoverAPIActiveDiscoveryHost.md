# Falcon::DomainDiscoverAPIActiveDiscoveryHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **networks** | [**Array&lt;DomainDiscoverAPIActiveDiscoveryNetwork&gt;**](DomainDiscoverAPIActiveDiscoveryNetwork.md) | The open ports discovered on the asset. | [optional] |
| **open_ports** | **Array&lt;String&gt;** | The open ports discovered on the asset. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIActiveDiscoveryHost.new(
  networks: null,
  open_ports: null
)
```


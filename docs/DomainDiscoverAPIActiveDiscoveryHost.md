# Falcon::DomainDiscoverAPIActiveDiscoveryHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_seen_network_id** | **String** | The ID of the network where the host was last seen | [optional] |
| **last_seen_site_id** | **String** | The ID of the site where the host was last seen | [optional] |
| **networks** | [**Array&lt;DomainDiscoverAPIActiveDiscoveryNetwork&gt;**](DomainDiscoverAPIActiveDiscoveryNetwork.md) | The open ports discovered on the asset. | [optional] |
| **open_ports** | **Array&lt;String&gt;** | The open ports discovered on the asset. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIActiveDiscoveryHost.new(
  last_seen_network_id: null,
  last_seen_site_id: null,
  networks: null,
  open_ports: null
)
```


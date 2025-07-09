# Falcon::DomainDiscoverAPINetworkInterface

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interface_alias** | **String** | The name or alias of the network interface associated with the asset. | [optional] |
| **interface_description** | **String** | The description of the network interface associated with the asset. | [optional] |
| **local_ip** | **String** | The local IPv4 address or addresses of the network interface associated with the asset over time | [optional] |
| **mac_address** | **String** | The MAC address of the network interface associated with the asset. | [optional] |
| **network_prefix** | **String** | The prefix or prefixes of the network over time, made of the first two bytes of the IP address. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPINetworkInterface.new(
  interface_alias: null,
  interface_description: null,
  local_ip: null,
  mac_address: null,
  network_prefix: null
)
```


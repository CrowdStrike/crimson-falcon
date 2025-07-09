# Falcon::FwmgrApiNetworkLocationsMetadataV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dns_resolution_targets_polling_interval** | **Integer** |  |  |
| **https_reachable_hosts_polling_interval** | **Integer** |  |  |
| **icmp_request_targets_polling_interval** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiNetworkLocationsMetadataV1.new(
  dns_resolution_targets_polling_interval: null,
  https_reachable_hosts_polling_interval: null,
  icmp_request_targets_polling_interval: null
)
```


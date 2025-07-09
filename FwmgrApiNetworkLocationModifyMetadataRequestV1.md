# Falcon::FwmgrApiNetworkLocationModifyMetadataRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **dns_resolution_targets_polling_interval** | **Integer** |  |  |
| **https_reachable_hosts_polling_interval** | **Integer** |  |  |
| **icmp_request_targets_polling_interval** | **Integer** |  |  |
| **location_precedence** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiNetworkLocationModifyMetadataRequestV1.new(
  cid: null,
  dns_resolution_targets_polling_interval: null,
  https_reachable_hosts_polling_interval: null,
  icmp_request_targets_polling_interval: null,
  location_precedence: null
)
```


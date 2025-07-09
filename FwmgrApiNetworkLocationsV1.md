# Falcon::FwmgrApiNetworkLocationsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **connection_types** | [**FwmgrDomainConnectionType**](FwmgrDomainConnectionType.md) |  |  |
| **created_by** | **String** |  | [optional] |
| **created_on** | **String** |  | [optional] |
| **default_gateways** | **Array&lt;String&gt;** |  |  |
| **description** | **String** |  |  |
| **dhcp_servers** | **Array&lt;String&gt;** |  |  |
| **dns_resolution_targets** | [**FwmgrDomainDNSResolutionTargetsWithPolling**](FwmgrDomainDNSResolutionTargetsWithPolling.md) |  |  |
| **dns_servers** | **Array&lt;String&gt;** |  |  |
| **enabled** | **Boolean** |  |  |
| **host_addresses** | **Array&lt;String&gt;** |  |  |
| **https_reachable_hosts** | [**FwmgrDomainHTTPSHostsWithPolling**](FwmgrDomainHTTPSHostsWithPolling.md) |  |  |
| **icmp_request_targets** | [**FwmgrDomainICMPTargetsWithPolling**](FwmgrDomainICMPTargetsWithPolling.md) |  |  |
| **id** | **String** |  |  |
| **metadata** | [**FwmgrApiNetworkLocationsMetadataV1**](FwmgrApiNetworkLocationsMetadataV1.md) |  | [optional] |
| **modified_by** | **String** |  | [optional] |
| **modified_on** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **rule_count** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiNetworkLocationsV1.new(
  cid: null,
  connection_types: null,
  created_by: null,
  created_on: null,
  default_gateways: null,
  description: null,
  dhcp_servers: null,
  dns_resolution_targets: null,
  dns_servers: null,
  enabled: null,
  host_addresses: null,
  https_reachable_hosts: null,
  icmp_request_targets: null,
  id: null,
  metadata: null,
  modified_by: null,
  modified_on: null,
  name: null,
  rule_count: null
)
```


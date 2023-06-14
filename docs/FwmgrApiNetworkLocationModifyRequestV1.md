# Falcon::FwmgrApiNetworkLocationModifyRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connection_types** | [**FwmgrDomainConnectionType**](FwmgrDomainConnectionType.md) |  |  |
| **created_by** | **String** |  | [optional] |
| **created_on** | **String** |  | [optional] |
| **default_gateways** | **Array&lt;String&gt;** |  |  |
| **description** | **String** |  |  |
| **dhcp_servers** | **Array&lt;String&gt;** |  |  |
| **dns_resolution_targets** | [**FwmgrDomainDNSResolutionTargets**](FwmgrDomainDNSResolutionTargets.md) |  |  |
| **dns_servers** | **Array&lt;String&gt;** |  |  |
| **enabled** | **Boolean** |  |  |
| **host_addresses** | **Array&lt;String&gt;** |  |  |
| **https_reachable_hosts** | [**FwmgrDomainHTTPSHosts**](FwmgrDomainHTTPSHosts.md) |  |  |
| **icmp_request_targets** | [**FwmgrDomainICMPTargets**](FwmgrDomainICMPTargets.md) |  |  |
| **id** | **String** |  |  |
| **modified_by** | **String** |  | [optional] |
| **modified_on** | **String** |  | [optional] |
| **name** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiNetworkLocationModifyRequestV1.new(
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
  modified_by: null,
  modified_on: null,
  name: null
)
```


# Falcon::FwmgrApiRuleCreateRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  |  |
| **address_family** | **String** |  |  |
| **description** | **String** |  |  |
| **direction** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **fields** | [**Array&lt;FwmgrApiWorkaroundUIFieldValue&gt;**](FwmgrApiWorkaroundUIFieldValue.md) |  |  |
| **fqdn** | **String** |  |  |
| **fqdn_enabled** | **Boolean** |  |  |
| **icmp** | [**FwmgrDomainICMP**](FwmgrDomainICMP.md) |  |  |
| **local_address** | [**Array&lt;FwmgrDomainAddressRange&gt;**](FwmgrDomainAddressRange.md) |  |  |
| **local_port** | [**Array&lt;FwmgrDomainPortRange&gt;**](FwmgrDomainPortRange.md) |  |  |
| **log** | **Boolean** |  |  |
| **monitor** | [**FwmgrDomainMonitoring**](FwmgrDomainMonitoring.md) |  |  |
| **name** | **String** |  |  |
| **protocol** | **String** |  |  |
| **remote_address** | [**Array&lt;FwmgrDomainAddressRange&gt;**](FwmgrDomainAddressRange.md) |  |  |
| **remote_port** | [**Array&lt;FwmgrDomainPortRange&gt;**](FwmgrDomainPortRange.md) |  |  |
| **temp_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiRuleCreateRequestV1.new(
  action: null,
  address_family: null,
  description: null,
  direction: null,
  enabled: null,
  fields: null,
  fqdn: null,
  fqdn_enabled: null,
  icmp: null,
  local_address: null,
  local_port: null,
  log: null,
  monitor: null,
  name: null,
  protocol: null,
  remote_address: null,
  remote_port: null,
  temp_id: null
)
```


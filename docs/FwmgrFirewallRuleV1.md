# Falcon::FwmgrFirewallRuleV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  |  |
| **address_family** | **String** |  |  |
| **created_by** | **String** |  |  |
| **created_on** | **String** |  |  |
| **customer_id** | **String** |  | [optional] |
| **deleted** | **Boolean** |  |  |
| **description** | **String** |  |  |
| **direction** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **family** | **String** |  |  |
| **fields** | [**Array&lt;FwmgrFirewallFieldValue&gt;**](FwmgrFirewallFieldValue.md) |  |  |
| **icmp** | [**FwmgrFirewallICMP**](FwmgrFirewallICMP.md) |  |  |
| **id** | **String** |  |  |
| **local_address** | [**Array&lt;FwmgrFirewallAddressRange&gt;**](FwmgrFirewallAddressRange.md) |  |  |
| **local_port** | [**Array&lt;FwmgrFirewallPortRange&gt;**](FwmgrFirewallPortRange.md) |  |  |
| **modified_by** | **String** |  | [optional] |
| **modified_on** | **String** |  | [optional] |
| **monitor** | [**FwmgrFirewallMonitoring**](FwmgrFirewallMonitoring.md) |  |  |
| **name** | **String** |  |  |
| **platform_ids** | **Array&lt;String&gt;** |  |  |
| **protocol** | **String** |  |  |
| **remote_address** | [**Array&lt;FwmgrFirewallAddressRange&gt;**](FwmgrFirewallAddressRange.md) |  |  |
| **remote_port** | [**Array&lt;FwmgrFirewallPortRange&gt;**](FwmgrFirewallPortRange.md) |  |  |
| **rule_group** | [**FwmgrFirewallRuleGroupSummaryV1**](FwmgrFirewallRuleGroupSummaryV1.md) |  |  |
| **version** | **Integer** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrFirewallRuleV1.new(
  action: null,
  address_family: null,
  created_by: null,
  created_on: null,
  customer_id: null,
  deleted: null,
  description: null,
  direction: null,
  enabled: null,
  family: null,
  fields: null,
  icmp: null,
  id: null,
  local_address: null,
  local_port: null,
  modified_by: null,
  modified_on: null,
  monitor: null,
  name: null,
  platform_ids: null,
  protocol: null,
  remote_address: null,
  remote_port: null,
  rule_group: null,
  version: null
)
```


# Falcon::FirewallPolicyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_version** | **Integer** | Channel file version for the policy |  |
| **cid** | **String** | The customer id associated with the policy |  |
| **created_by** | **String** | The email of the user which created the policy |  |
| **created_timestamp** | **Time** | The time at which the policy was created |  |
| **description** | **String** | The description of a policy. Use this field to provide a high level summary of what this policy enforces |  |
| **enabled** | **Boolean** | If a policy is enabled it will be used during the course of policy evaluation |  |
| **groups** | [**Array&lt;HostGroupsHostGroupV1&gt;**](HostGroupsHostGroupV1.md) | The groups that are currently attached to the policy |  |
| **id** | **String** | The unique id of the policy |  |
| **modified_by** | **String** | The email of the user which last modified the policy |  |
| **modified_timestamp** | **Time** | The time at which the policy was last modified |  |
| **name** | **String** | The human readable name of the policy |  |
| **platform_name** | **String** | The name of the platform |  |
| **rule_set_id** | **String** | Firewall rule set id. This id combines several firewall rules and gets attached to the policy |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FirewallPolicyV1.new(
  channel_version: null,
  cid: null,
  created_by: null,
  created_timestamp: null,
  description: null,
  enabled: null,
  groups: null,
  id: null,
  modified_by: null,
  modified_timestamp: null,
  name: null,
  platform_name: null,
  rule_set_id: null
)
```


# Falcon::FwmgrFirewallMatchEventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  |  |
| **cid** | **String** |  |  |
| **command_line** | **String** |  |  |
| **connection_direction** | **String** |  |  |
| **event_type** | **String** |  |  |
| **flags** | [**FwmgrFirewallFlags**](FwmgrFirewallFlags.md) |  |  |
| **hidden** | **Boolean** |  |  |
| **host_name** | **String** |  |  |
| **icmp_code** | **String** |  |  |
| **icmp_type** | **String** |  |  |
| **id** | **String** |  |  |
| **image_file_name** | **String** |  |  |
| **ipv** | **String** |  |  |
| **local_address** | **String** |  |  |
| **local_port** | **String** |  |  |
| **match_count** | **String** |  |  |
| **match_count_since_last_event** | **String** |  |  |
| **network_profile** | **String** |  |  |
| **pid** | **String** |  |  |
| **policy_id** | **String** |  |  |
| **policy_name** | **String** |  |  |
| **protocol** | **String** |  |  |
| **remote_address** | **String** |  |  |
| **remote_port** | **String** |  |  |
| **rule_action** | **String** |  |  |
| **rule_description** | **String** |  |  |
| **rule_family_id** | **String** |  |  |
| **rule_group_name** | **String** |  |  |
| **rule_id** | **String** |  |  |
| **rule_name** | **String** |  |  |
| **status** | **String** |  |  |
| **timestamp** | **String** |  |  |
| **tree_id** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrFirewallMatchEventResponse.new(
  aid: null,
  cid: null,
  command_line: null,
  connection_direction: null,
  event_type: null,
  flags: null,
  hidden: null,
  host_name: null,
  icmp_code: null,
  icmp_type: null,
  id: null,
  image_file_name: null,
  ipv: null,
  local_address: null,
  local_port: null,
  match_count: null,
  match_count_since_last_event: null,
  network_profile: null,
  pid: null,
  policy_id: null,
  policy_name: null,
  protocol: null,
  remote_address: null,
  remote_port: null,
  rule_action: null,
  rule_description: null,
  rule_family_id: null,
  rule_group_name: null,
  rule_id: null,
  rule_name: null,
  status: null,
  timestamp: null,
  tree_id: null
)
```


# Falcon::FwmgrFirewallPolicyContainerV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **String** |  | [optional] |
| **created_on** | **String** |  | [optional] |
| **default_inbound** | **String** |  |  |
| **default_outbound** | **String** |  |  |
| **deleted** | **Boolean** |  | [optional] |
| **enforce** | **Boolean** |  |  |
| **is_default_policy** | **Boolean** |  | [optional] |
| **local_logging** | **Boolean** |  |  |
| **modified_by** | **String** |  | [optional] |
| **modified_on** | **String** |  | [optional] |
| **platform_id** | **String** |  |  |
| **policy_id** | **String** |  |  |
| **rule_group_ids** | **Array&lt;String&gt;** |  |  |
| **test_mode** | **Boolean** |  |  |
| **tracking** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrFirewallPolicyContainerV1.new(
  created_by: null,
  created_on: null,
  default_inbound: null,
  default_outbound: null,
  deleted: null,
  enforce: null,
  is_default_policy: null,
  local_logging: null,
  modified_by: null,
  modified_on: null,
  platform_id: null,
  policy_id: null,
  rule_group_ids: null,
  test_mode: null,
  tracking: null
)
```


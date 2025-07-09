# Falcon::PoliciesPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **created_by** | **String** |  | [optional] |
| **created_timestamp** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **enabled** | **Boolean** |  |  |
| **host_groups** | [**Array&lt;PoliciesAssignedHostGroup&gt;**](PoliciesAssignedHostGroup.md) |  | [optional] |
| **id** | **String** |  |  |
| **modified_by** | **String** |  |  |
| **modified_timestamp** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **precedence** | **Integer** |  | [optional] |
| **rule_groups** | [**Array&lt;PoliciesAssignedRuleGroup&gt;**](PoliciesAssignedRuleGroup.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PoliciesPolicy.new(
  cid: null,
  created_by: null,
  created_timestamp: null,
  description: null,
  enabled: null,
  host_groups: null,
  id: null,
  modified_by: null,
  modified_timestamp: null,
  name: null,
  platform: null,
  precedence: null,
  rule_groups: null
)
```


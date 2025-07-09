# Falcon::IoaRuleGroupsRuleGroupV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  |  |
| **committed_timestamp** | **Time** | The last attempted time CFS got this data on the rule group |  |
| **created_by** | **String** | The email of the user which created the rule group |  |
| **created_timestamp** | **Time** | The time at which the policy was created |  |
| **customer_id** | **String** |  |  |
| **deleted** | **Boolean** |  |  |
| **description** | **String** | An additional description of the group or the rules it contains |  |
| **enabled** | **Boolean** |  |  |
| **id** | **String** | The identifier of this IOA rule group |  |
| **modified_by** | **String** | The email of the user which last modified the rule group |  |
| **modified_timestamp** | **Time** | The time at which the policy was last modified |  |
| **name** | **String** | The name of the group |  |
| **platform** | **String** |  |  |
| **rule_ids** | **Array&lt;String&gt;** |  |  |
| **version** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::IoaRuleGroupsRuleGroupV1.new(
  comment: null,
  committed_timestamp: null,
  created_by: null,
  created_timestamp: null,
  customer_id: null,
  deleted: null,
  description: null,
  enabled: null,
  id: null,
  modified_by: null,
  modified_timestamp: null,
  name: null,
  platform: null,
  rule_ids: null,
  version: null
)
```


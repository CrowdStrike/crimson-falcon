# Falcon::RulegroupsRuleGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned_rules** | [**Array&lt;RulegroupsAssignedRule&gt;**](RulegroupsAssignedRule.md) |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_timestamp** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **modified_by** | **String** |  | [optional] |
| **modified_timestamp** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **policy_assignments** | [**Array&lt;RulegroupsPolicyAssignment&gt;**](RulegroupsPolicyAssignment.md) |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RulegroupsRuleGroup.new(
  assigned_rules: null,
  created_by: null,
  created_timestamp: null,
  description: null,
  id: null,
  modified_by: null,
  modified_timestamp: null,
  name: null,
  policy_assignments: null,
  type: null
)
```


# Falcon::ResponsesPreventionPolicyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | The customer id associated with the policy |  |
| **created_by** | **String** | The email of the user which created the policy |  |
| **created_timestamp** | **Time** | The time at which the policy was created |  |
| **description** | **String** | The description of a policy. Use this field to provide a high level summary of what this policy enforces |  |
| **enabled** | **Boolean** | If a policy is enabled it will be used during the course of policy evaluation |  |
| **groups** | [**Array&lt;ResponsesHostGroupV1&gt;**](ResponsesHostGroupV1.md) | The groups that are currently attached to the policy |  |
| **id** | **String** | The unique id of the policy |  |
| **ioa_rule_groups** | [**Array&lt;ResponsesIOARuleGroupV1&gt;**](ResponsesIOARuleGroupV1.md) | The IOA rule groups that are currently attached to the policy |  |
| **modified_by** | **String** | The email of the user which last modified the policy |  |
| **modified_timestamp** | **Time** | The time at which the policy was last modified |  |
| **name** | **String** | The human readable name of the policy |  |
| **platform_name** | **String** | The name of the platform |  |
| **prevention_settings** | [**Array&lt;ResponsesPreventionCategoryV1&gt;**](ResponsesPreventionCategoryV1.md) | A category of settings in a prevention policy |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesPreventionPolicyV1.new(
  cid: null,
  created_by: null,
  created_timestamp: null,
  description: null,
  enabled: null,
  groups: null,
  id: null,
  ioa_rule_groups: null,
  modified_by: null,
  modified_timestamp: null,
  name: null,
  platform_name: null,
  prevention_settings: null
)
```


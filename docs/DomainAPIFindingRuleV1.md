# Falcon::DomainAPIFindingRuleV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authority** | **String** |  | [optional] |
| **cce** | **String** |  | [optional] |
| **edited** | **Boolean** |  |  |
| **group_id** | **String** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **last_edited_timestamp** | **String** |  | [optional] |
| **mitre_attack_tactics** | [**Array&lt;DomainAPIMitreAttackTacticV1&gt;**](DomainAPIMitreAttackTacticV1.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **policy_id** | **String** |  | [optional] |
| **policy_name** | **String** |  | [optional] |
| **recommendation_id** | **String** |  | [optional] |
| **severity** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIFindingRuleV1.new(
  authority: null,
  cce: null,
  edited: null,
  group_id: null,
  group_name: null,
  id: null,
  last_edited_timestamp: null,
  mitre_attack_tactics: null,
  name: null,
  policy_id: null,
  policy_name: null,
  recommendation_id: null,
  severity: null
)
```


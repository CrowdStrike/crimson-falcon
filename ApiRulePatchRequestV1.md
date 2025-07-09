# Falcon::ApiRulePatchRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **mitre_attack** | [**Array&lt;ModelMitreAttackMapping&gt;**](ModelMitreAttackMapping.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **notifications** | [**Array&lt;ApiPatchRuleNotificationsV1&gt;**](ApiPatchRuleNotificationsV1.md) |  | [optional] |
| **operation** | [**ApiPatchRuleOperationV1**](ApiPatchRuleOperationV1.md) |  | [optional] |
| **search** | [**ApiPatchRuleSearchV1**](ApiPatchRuleSearchV1.md) |  | [optional] |
| **severity** | **Integer** |  | [optional] |
| **state** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRulePatchRequestV1.new(
  comment: null,
  description: null,
  id: null,
  mitre_attack: null,
  name: null,
  notifications: null,
  operation: null,
  search: null,
  severity: null,
  state: null,
  status: null,
  tactic: null,
  technique: null
)
```


# Falcon::ApiRulePatchRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **operation** | [**ApiPatchRuleOperationV1**](ApiPatchRuleOperationV1.md) |  | [optional] |
| **search** | [**ApiPatchRuleSearchV1**](ApiPatchRuleSearchV1.md) |  | [optional] |
| **severity** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRulePatchRequestV1.new(
  description: null,
  id: null,
  name: null,
  operation: null,
  search: null,
  severity: null,
  status: null,
  tactic: null,
  technique: null
)
```


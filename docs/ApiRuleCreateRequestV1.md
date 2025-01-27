# Falcon::ApiRuleCreateRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  | [optional] |
| **customer_id** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **operation** | [**ApiCreateRuleOperationV1**](ApiCreateRuleOperationV1.md) |  |  |
| **search** | [**ApiRuleSearchV1**](ApiRuleSearchV1.md) |  |  |
| **severity** | **Integer** |  |  |
| **status** | **String** |  |  |
| **tactic** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |
| **trigger_on_create** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleCreateRequestV1.new(
  comment: null,
  customer_id: null,
  description: null,
  name: null,
  operation: null,
  search: null,
  severity: null,
  status: null,
  tactic: null,
  technique: null,
  trigger_on_create: null
)
```


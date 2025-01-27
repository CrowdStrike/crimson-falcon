# Falcon::ApiRuleV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_client_id** | **String** |  |  |
| **comment** | **String** |  | [optional] |
| **created_on** | **Time** |  |  |
| **customer_id** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **last_updated_on** | **Time** |  |  |
| **name** | **String** |  |  |
| **operation** | [**ApiRuleOperationV1**](ApiRuleOperationV1.md) |  |  |
| **rule_id** | **String** |  | [optional] |
| **search** | [**ApiRuleSearchV1**](ApiRuleSearchV1.md) |  |  |
| **severity** | **Integer** |  |  |
| **state** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **tactic** | **String** |  |  |
| **technique** | **String** |  |  |
| **template_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **user_uuid** | **String** |  |  |
| **version** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleV1.new(
  api_client_id: null,
  comment: null,
  created_on: null,
  customer_id: null,
  description: null,
  id: null,
  last_updated_on: null,
  name: null,
  operation: null,
  rule_id: null,
  search: null,
  severity: null,
  state: null,
  status: null,
  tactic: null,
  technique: null,
  template_id: null,
  user_id: null,
  user_uuid: null,
  version: null
)
```


# Falcon::ApiRuleGroupV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  |  |
| **committed_on** | **Time** |  |  |
| **created_by** | **String** |  |  |
| **created_on** | **Time** |  |  |
| **customer_id** | **String** |  |  |
| **deleted** | **Boolean** |  |  |
| **description** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **id** | **String** |  |  |
| **modified_by** | **String** |  |  |
| **modified_on** | **Time** |  |  |
| **name** | **String** |  |  |
| **platform** | **String** |  |  |
| **rule_ids** | **Array&lt;String&gt;** |  |  |
| **rules** | [**Array&lt;ApiRuleV1&gt;**](ApiRuleV1.md) |  |  |
| **version** | **Integer** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiRuleGroupV1.new(
  comment: null,
  committed_on: null,
  created_by: null,
  created_on: null,
  customer_id: null,
  deleted: null,
  description: null,
  enabled: null,
  id: null,
  modified_by: null,
  modified_on: null,
  name: null,
  platform: null,
  rule_ids: null,
  rules: null,
  version: null
)
```


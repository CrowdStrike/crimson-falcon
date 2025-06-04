# Falcon::ApiRuleV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_label** | **String** |  |  |
| **comment** | **String** |  |  |
| **committed_on** | **Time** |  |  |
| **created_by** | **String** |  |  |
| **created_on** | **Time** |  |  |
| **customer_id** | **String** |  |  |
| **deleted** | **Boolean** |  |  |
| **description** | **String** |  |  |
| **disposition_id** | **Integer** |  |  |
| **enabled** | **Boolean** |  |  |
| **field_values** | [**Array&lt;DomainFieldValue&gt;**](DomainFieldValue.md) |  |  |
| **instance_id** | **String** |  |  |
| **instance_version** | **Integer** |  |  |
| **magic_cookie** | **Integer** |  |  |
| **modified_by** | **String** |  |  |
| **modified_on** | **Time** |  |  |
| **name** | **String** |  |  |
| **pattern_id** | **String** |  |  |
| **pattern_severity** | **String** |  |  |
| **rulegroup_id** | **String** |  |  |
| **ruletype_id** | **String** |  |  |
| **ruletype_name** | **String** |  |  |
| **version_ids** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleV1.new(
  action_label: null,
  comment: null,
  committed_on: null,
  created_by: null,
  created_on: null,
  customer_id: null,
  deleted: null,
  description: null,
  disposition_id: null,
  enabled: null,
  field_values: null,
  instance_id: null,
  instance_version: null,
  magic_cookie: null,
  modified_by: null,
  modified_on: null,
  name: null,
  pattern_id: null,
  pattern_severity: null,
  rulegroup_id: null,
  ruletype_id: null,
  ruletype_name: null,
  version_ids: null
)
```


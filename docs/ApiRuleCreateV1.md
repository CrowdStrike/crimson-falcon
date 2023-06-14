# Falcon::ApiRuleCreateV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  |  |
| **description** | **String** |  |  |
| **disposition_id** | **Integer** |  |  |
| **field_values** | [**Array&lt;DomainFieldValue&gt;**](DomainFieldValue.md) |  |  |
| **name** | **String** |  |  |
| **pattern_severity** | **String** |  |  |
| **rulegroup_id** | **String** |  |  |
| **ruletype_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleCreateV1.new(
  comment: null,
  description: null,
  disposition_id: null,
  field_values: null,
  name: null,
  pattern_severity: null,
  rulegroup_id: null,
  ruletype_id: null
)
```


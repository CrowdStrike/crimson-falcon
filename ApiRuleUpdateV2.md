# Falcon::ApiRuleUpdateV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  |  |
| **disposition_id** | **Integer** |  |  |
| **enabled** | **Boolean** |  |  |
| **field_values** | [**Array&lt;DomainFieldValue&gt;**](DomainFieldValue.md) |  |  |
| **instance_id** | **String** |  |  |
| **name** | **String** |  |  |
| **pattern_severity** | **String** |  |  |
| **rulegroup_version** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleUpdateV2.new(
  description: null,
  disposition_id: null,
  enabled: null,
  field_values: null,
  instance_id: null,
  name: null,
  pattern_severity: null,
  rulegroup_version: null
)
```


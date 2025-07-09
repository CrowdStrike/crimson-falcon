# Falcon::ApiRuleUpdatesRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  |  |
| **rule_updates** | [**Array&lt;ApiRuleUpdateV1&gt;**](ApiRuleUpdateV1.md) |  |  |
| **rulegroup_id** | **String** |  |  |
| **rulegroup_version** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleUpdatesRequestV1.new(
  comment: null,
  rule_updates: null,
  rulegroup_id: null,
  rulegroup_version: null
)
```


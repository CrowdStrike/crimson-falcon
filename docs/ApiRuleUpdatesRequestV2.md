# Falcon::ApiRuleUpdatesRequestV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  |  |
| **rule_updates** | [**Array&lt;ApiRuleUpdateV2&gt;**](ApiRuleUpdateV2.md) |  |  |
| **rulegroup_id** | **String** |  |  |
| **rulegroup_version** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleUpdatesRequestV2.new(
  comment: null,
  rule_updates: null,
  rulegroup_id: null,
  rulegroup_version: null
)
```


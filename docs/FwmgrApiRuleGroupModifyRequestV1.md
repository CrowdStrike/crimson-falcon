# Falcon::FwmgrApiRuleGroupModifyRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **diff_operations** | [**Array&lt;FwmgrApiJSONDiff&gt;**](FwmgrApiJSONDiff.md) |  |  |
| **diff_type** | **String** |  |  |
| **id** | **String** |  |  |
| **rule_ids** | **Array&lt;String&gt;** |  |  |
| **rule_versions** | **Array&lt;Integer&gt;** |  |  |
| **tracking** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiRuleGroupModifyRequestV1.new(
  diff_operations: null,
  diff_type: null,
  id: null,
  rule_ids: null,
  rule_versions: null,
  tracking: null
)
```


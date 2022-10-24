# Falcon::FwmgrApiRuleGroupCreateRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **name** | **String** |  |  |
| **rules** | [**Array&lt;FwmgrApiRuleCreateRequestV1&gt;**](FwmgrApiRuleCreateRequestV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiRuleGroupCreateRequestV1.new(
  description: null,
  enabled: null,
  name: null,
  rules: null
)
```


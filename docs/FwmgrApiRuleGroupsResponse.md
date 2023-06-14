# Falcon::FwmgrApiRuleGroupsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaspecError&gt;**](FwmgrMsaspecError.md) |  | [optional] |
| **meta** | [**FwmgrMsaspecMetaInfo**](FwmgrMsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrApiRuleGroupV1&gt;**](FwmgrApiRuleGroupV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiRuleGroupsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


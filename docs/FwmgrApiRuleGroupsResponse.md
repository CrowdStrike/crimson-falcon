# Falcon::FwmgrApiRuleGroupsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaAPIError&gt;**](FwmgrMsaAPIError.md) |  | [optional] |
| **meta** | [**FwmgrMsaMetaInfo**](FwmgrMsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrApiRuleGroupV1&gt;**](FwmgrApiRuleGroupV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiRuleGroupsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


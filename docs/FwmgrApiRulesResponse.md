# Falcon::FwmgrApiRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaAPIError&gt;**](FwmgrMsaAPIError.md) |  | [optional] |
| **meta** | [**FwmgrMsaMetaInfo**](FwmgrMsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrFirewallRuleV1&gt;**](FwmgrFirewallRuleV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiRulesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


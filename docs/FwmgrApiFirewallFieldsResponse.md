# Falcon::FwmgrApiFirewallFieldsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaAPIError&gt;**](FwmgrMsaAPIError.md) |  | [optional] |
| **meta** | [**FwmgrMsaMetaInfo**](FwmgrMsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrApiFirewallFieldsV1&gt;**](FwmgrApiFirewallFieldsV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiFirewallFieldsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


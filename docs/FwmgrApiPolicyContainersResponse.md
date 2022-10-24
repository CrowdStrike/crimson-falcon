# Falcon::FwmgrApiPolicyContainersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaAPIError&gt;**](FwmgrMsaAPIError.md) |  | [optional] |
| **meta** | [**FwmgrMsaMetaInfo**](FwmgrMsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrFirewallPolicyContainerV1&gt;**](FwmgrFirewallPolicyContainerV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiPolicyContainersResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


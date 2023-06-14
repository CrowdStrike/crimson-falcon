# Falcon::FwmgrApiPolicyContainersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaspecError&gt;**](FwmgrMsaspecError.md) |  | [optional] |
| **meta** | [**FwmgrMsaspecMetaInfo**](FwmgrMsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrFirewallPolicyContainerV1&gt;**](FwmgrFirewallPolicyContainerV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiPolicyContainersResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


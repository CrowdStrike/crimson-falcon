# Falcon::FwmgrApiFirewallFieldsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaspecError&gt;**](FwmgrMsaspecError.md) |  | [optional] |
| **meta** | [**FwmgrMsaspecMetaInfo**](FwmgrMsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrApiFirewallFieldsV1&gt;**](FwmgrApiFirewallFieldsV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiFirewallFieldsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


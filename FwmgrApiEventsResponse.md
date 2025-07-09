# Falcon::FwmgrApiEventsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaspecError&gt;**](FwmgrMsaspecError.md) |  | [optional] |
| **meta** | [**FwmgrMsaspecMetaInfo**](FwmgrMsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrFirewallMatchEventResponse&gt;**](FwmgrFirewallMatchEventResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiEventsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


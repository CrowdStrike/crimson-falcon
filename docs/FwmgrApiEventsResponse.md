# Falcon::FwmgrApiEventsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaAPIError&gt;**](FwmgrMsaAPIError.md) |  | [optional] |
| **meta** | [**FwmgrMsaMetaInfo**](FwmgrMsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrFirewallMatchEventResponse&gt;**](FwmgrFirewallMatchEventResponse.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiEventsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


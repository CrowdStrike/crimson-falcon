# Falcon::FwmgrDomainDNSResolutionTargetsWithPolling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **polling_interval** | **Integer** |  |  |
| **targets** | [**Array&lt;FwmgrDomainDNSTarget&gt;**](FwmgrDomainDNSTarget.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrDomainDNSResolutionTargetsWithPolling.new(
  polling_interval: null,
  targets: null
)
```


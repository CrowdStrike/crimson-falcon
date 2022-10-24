# Falcon::FwmgrApiFirewallFieldsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_monitor** | [**FwmgrDomainMonitoring**](FwmgrDomainMonitoring.md) |  |  |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_fields** | [**Array&lt;FwmgrDomainField&gt;**](FwmgrDomainField.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiFirewallFieldsV1.new(
  default_monitor: null,
  id: null,
  platform: null,
  platform_fields: null
)
```


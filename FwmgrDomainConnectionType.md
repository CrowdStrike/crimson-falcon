# Falcon::FwmgrDomainConnectionType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wired** | **Boolean** |  |  |
| **wireless** | [**FwmgrDomainWirelessType**](FwmgrDomainWirelessType.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrDomainConnectionType.new(
  wired: null,
  wireless: null
)
```


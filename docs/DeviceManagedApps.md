# Falcon::DeviceManagedApps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **airlock** | [**DeviceManagedApp**](DeviceManagedApp.md) |  | [optional] |
| **automox** | [**DeviceManagedApp**](DeviceManagedApp.md) |  | [optional] |
| **identity_protection** | [**DeviceManagedApp**](DeviceManagedApp.md) |  | [optional] |
| **jumpcloud** | [**DeviceManagedApp**](DeviceManagedApp.md) |  | [optional] |
| **netskope** | [**DeviceManagedApp**](DeviceManagedApp.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DeviceManagedApps.new(
  airlock: null,
  automox: null,
  identity_protection: null,
  jumpcloud: null,
  netskope: null
)
```


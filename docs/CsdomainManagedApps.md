# Falcon::CsdomainManagedApps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **airlock** | [**CsdomainManagedApp**](CsdomainManagedApp.md) |  | [optional] |
| **automox** | [**CsdomainManagedApp**](CsdomainManagedApp.md) |  | [optional] |
| **netskope** | [**CsdomainManagedApp**](CsdomainManagedApp.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::CsdomainManagedApps.new(
  airlock: null,
  automox: null,
  netskope: null
)
```


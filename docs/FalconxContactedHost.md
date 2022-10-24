# Falcon::FalconxContactedHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  | [optional] |
| **associated_runtime** | [**Array&lt;FalconxAssociatedRuntime&gt;**](FalconxAssociatedRuntime.md) |  | [optional] |
| **compromised** | **Boolean** |  | [optional] |
| **country** | **String** |  | [optional] |
| **port** | **Integer** |  | [optional] |
| **protocol** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxContactedHost.new(
  address: null,
  associated_runtime: null,
  compromised: null,
  country: null,
  port: null,
  protocol: null
)
```


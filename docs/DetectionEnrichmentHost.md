# Falcon::DetectionEnrichmentHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **launch_time** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **network** | [**DetectionHostNetwork**](DetectionHostNetwork.md) |  | [optional] |
| **platform** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DetectionEnrichmentHost.new(
  id: null,
  launch_time: null,
  name: null,
  network: null,
  platform: null,
  region: null,
  type: null
)
```


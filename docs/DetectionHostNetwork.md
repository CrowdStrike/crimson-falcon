# Falcon::DetectionHostNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** |  | [optional] |
| **network_interface_ids** | **String** |  | [optional] |
| **subnet_id** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DetectionHostNetwork.new(
  network_id: null,
  network_interface_ids: null,
  subnet_id: null
)
```


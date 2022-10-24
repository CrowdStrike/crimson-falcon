# Falcon::FalconxSuricataAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **destination_ip** | **String** |  | [optional] |
| **destination_port** | **Integer** |  | [optional] |
| **protocol** | **String** |  | [optional] |
| **sid** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxSuricataAlert.new(
  category: null,
  description: null,
  destination_ip: null,
  destination_port: null,
  protocol: null,
  sid: null
)
```


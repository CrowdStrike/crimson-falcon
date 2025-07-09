# Falcon::IoaEnrichments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inventory** | [**DetectionInventoryEnrichment**](DetectionInventoryEnrichment.md) |  | [optional] |
| **sensor_events** | [**DetectionEnrichment**](DetectionEnrichment.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::IoaEnrichments.new(
  inventory: null,
  sensor_events: null
)
```


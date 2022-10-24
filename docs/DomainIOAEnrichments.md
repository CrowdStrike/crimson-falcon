# Falcon::DomainIOAEnrichments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inventory** | [**DetectionInventoryEnrichment**](DetectionInventoryEnrichment.md) |  | [optional] |
| **sensor_events** | [**DetectionEnrichment**](DetectionEnrichment.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainIOAEnrichments.new(
  inventory: null,
  sensor_events: null
)
```


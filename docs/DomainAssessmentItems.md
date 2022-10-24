# Falcon::DomainAssessmentItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os_signals** | [**Array&lt;DomainSignalProperty&gt;**](DomainSignalProperty.md) |  |  |
| **sensor_signals** | [**Array&lt;DomainSignalProperty&gt;**](DomainSignalProperty.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainAssessmentItems.new(
  os_signals: null,
  sensor_signals: null
)
```


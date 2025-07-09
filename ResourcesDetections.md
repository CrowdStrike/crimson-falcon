# Falcon::ResourcesDetections

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compliant** | [**ResourcesCompliance**](ResourcesCompliance.md) |  | [optional] |
| **highest_severity** | **String** |  | [optional] |
| **ioa_counts** | **Integer** |  |  |
| **ioa_counts_by_severity** | [**ResourcesDetectionCount**](ResourcesDetectionCount.md) |  | [optional] |
| **iom_counts** | **Integer** |  |  |
| **iom_counts_by_severity** | [**ResourcesDetectionCount**](ResourcesDetectionCount.md) |  | [optional] |
| **non_compliant** | [**ResourcesCompliance**](ResourcesCompliance.md) |  | [optional] |
| **severities** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ResourcesDetections.new(
  compliant: null,
  highest_severity: null,
  ioa_counts: null,
  ioa_counts_by_severity: null,
  iom_counts: null,
  iom_counts_by_severity: null,
  non_compliant: null,
  severities: null
)
```


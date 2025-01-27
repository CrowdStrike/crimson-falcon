# Falcon::ResourcesDetections

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compliant** | [**ResourcesCompliance**](ResourcesCompliance.md) |  | [optional] |
| **highest_severity** | **String** |  | [optional] |
| **ioa_counts** | **Integer** |  |  |
| **iom_counts** | **Integer** |  |  |
| **non_compliant** | [**ResourcesCompliance**](ResourcesCompliance.md) |  | [optional] |
| **severities** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ResourcesDetections.new(
  compliant: null,
  highest_severity: null,
  ioa_counts: null,
  iom_counts: null,
  non_compliant: null,
  severities: null
)
```


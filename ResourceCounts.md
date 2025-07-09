# Falcon::ResourceCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compliant** | **Integer** |  |  |
| **non_compliant** | **Integer** |  |  |
| **non_compliant_by_severity** | [**NonCompliantBySeverity**](NonCompliantBySeverity.md) |  |  |
| **total** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ResourceCounts.new(
  compliant: null,
  non_compliant: null,
  non_compliant_by_severity: null,
  total: null
)
```


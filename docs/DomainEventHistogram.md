# Falcon::DomainEventHistogram

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** |  |  |
| **has_detect** | **Boolean** |  |  |
| **has_overwatch** | **Boolean** |  |  |
| **has_prevented** | **Boolean** |  |  |
| **timestamp_max** | **Integer** |  |  |
| **timestamp_min** | **Integer** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainEventHistogram.new(
  count: null,
  has_detect: null,
  has_overwatch: null,
  has_prevented: null,
  timestamp_max: null,
  timestamp_min: null
)
```


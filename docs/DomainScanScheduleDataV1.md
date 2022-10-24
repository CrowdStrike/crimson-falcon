# Falcon::DomainScanScheduleDataV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_platform** | **String** |  |  |
| **next_scan_timestamp** | **Time** |  |  |
| **scan_schedule** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainScanScheduleDataV1.new(
  cloud_platform: null,
  next_scan_timestamp: null,
  scan_schedule: null
)
```


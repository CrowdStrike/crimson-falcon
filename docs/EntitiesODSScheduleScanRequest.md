# Falcon::EntitiesODSScheduleScanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_ml_level_detection** | **Integer** |  |  |
| **cloud_ml_level_prevention** | **Integer** |  |  |
| **cpu_priority** | **Integer** |  |  |
| **description** | **String** |  |  |
| **endpoint_notification** | **Boolean** |  |  |
| **file_paths** | **Array&lt;String&gt;** |  |  |
| **host_groups** | **Array&lt;String&gt;** |  |  |
| **initiated_from** | **String** |  |  |
| **max_duration** | **Integer** |  |  |
| **max_file_size** | **Integer** |  |  |
| **pause_duration** | **Integer** |  |  |
| **quarantine** | **Boolean** |  |  |
| **scan_exclusions** | **Array&lt;String&gt;** |  |  |
| **scan_inclusions** | **Array&lt;String&gt;** |  |  |
| **schedule** | [**DomainSchedule**](DomainSchedule.md) |  |  |
| **sensor_ml_level_detection** | **Integer** |  |  |
| **sensor_ml_level_prevention** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EntitiesODSScheduleScanRequest.new(
  cloud_ml_level_detection: null,
  cloud_ml_level_prevention: null,
  cpu_priority: null,
  description: null,
  endpoint_notification: null,
  file_paths: null,
  host_groups: null,
  initiated_from: null,
  max_duration: null,
  max_file_size: null,
  pause_duration: null,
  quarantine: null,
  scan_exclusions: null,
  scan_inclusions: null,
  schedule: null,
  sensor_ml_level_detection: null,
  sensor_ml_level_prevention: null
)
```


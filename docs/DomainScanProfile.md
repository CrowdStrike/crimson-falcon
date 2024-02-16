# Falcon::DomainScanProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  | [optional] |
| **cloud_ml_level_detection** | **Integer** |  | [optional] |
| **cloud_ml_level_prevention** | **Integer** |  | [optional] |
| **cpu_priority** | **Integer** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **deleted** | **Boolean** |  |  |
| **description** | **String** |  | [optional] |
| **endpoint_notification** | **Boolean** |  | [optional] |
| **file_paths** | **Array&lt;String&gt;** |  | [optional] |
| **host_groups** | **Array&lt;String&gt;** |  | [optional] |
| **hosts** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **String** |  |  |
| **initiated_from** | **String** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **max_duration** | **Integer** |  | [optional] |
| **max_file_size** | **Integer** |  | [optional] |
| **metadata** | [**Array&lt;DomainScanProfileMetadata&gt;**](DomainScanProfileMetadata.md) |  | [optional] |
| **pause_duration** | **Integer** |  | [optional] |
| **policy_setting** | **Array&lt;Integer&gt;** |  | [optional] |
| **preemption_priority** | **Integer** |  | [optional] |
| **quarantine** | **Boolean** |  | [optional] |
| **scan_exclusions** | **Array&lt;String&gt;** |  | [optional] |
| **scan_inclusions** | **Array&lt;String&gt;** |  | [optional] |
| **schedule** | [**DomainSchedule**](DomainSchedule.md) |  | [optional] |
| **sensor_ml_level_detection** | **Integer** |  | [optional] |
| **sensor_ml_level_prevention** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |
| **targeted_host_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainScanProfile.new(
  cid: null,
  cloud_ml_level_detection: null,
  cloud_ml_level_prevention: null,
  cpu_priority: null,
  created_by: null,
  created_on: null,
  deleted: null,
  description: null,
  endpoint_notification: null,
  file_paths: null,
  host_groups: null,
  hosts: null,
  id: null,
  initiated_from: null,
  last_updated: null,
  max_duration: null,
  max_file_size: null,
  metadata: null,
  pause_duration: null,
  policy_setting: null,
  preemption_priority: null,
  quarantine: null,
  scan_exclusions: null,
  scan_inclusions: null,
  schedule: null,
  sensor_ml_level_detection: null,
  sensor_ml_level_prevention: null,
  status: null,
  targeted_host_count: null
)
```


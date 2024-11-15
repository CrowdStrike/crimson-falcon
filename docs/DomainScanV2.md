# Falcon::DomainScanV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **affected_hosts_count** | **Integer** |  |  |
| **cid** | **String** |  | [optional] |
| **cloud_ml_level_detection** | **Integer** |  | [optional] |
| **cloud_ml_level_prevention** | **Integer** |  | [optional] |
| **completed_host_count** | **Integer** |  |  |
| **cpu_priority** | **Integer** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **endpoint_notification** | **Boolean** |  | [optional] |
| **file_paths** | **Array&lt;String&gt;** |  | [optional] |
| **filecount** | [**DomainFileCountV2**](DomainFileCountV2.md) |  | [optional] |
| **host_groups** | **Array&lt;String&gt;** |  | [optional] |
| **hosts** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **String** |  |  |
| **incomplete_host_count** | **Integer** |  |  |
| **initiated_from** | **String** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **max_duration** | **Integer** |  | [optional] |
| **metadata** | **Array&lt;String&gt;** |  | [optional] |
| **missing_host_count** | **Integer** |  |  |
| **not_started_host_count** | **Integer** |  |  |
| **pause_duration** | **Integer** |  | [optional] |
| **policy_setting** | **Array&lt;Integer&gt;** |  | [optional] |
| **preemption_priority** | **Integer** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **quarantine** | **Boolean** |  | [optional] |
| **scan_completed_on** | **Time** |  | [optional] |
| **scan_exclusions** | **Array&lt;String&gt;** |  | [optional] |
| **scan_inclusions** | **Array&lt;String&gt;** |  | [optional] |
| **scan_started_on** | **Time** |  | [optional] |
| **sensor_ml_level_detection** | **Integer** |  | [optional] |
| **sensor_ml_level_prevention** | **Integer** |  | [optional] |
| **severity** | **Integer** |  | [optional] |
| **started_host_count** | **Integer** |  |  |
| **status** | **String** |  | [optional] |
| **targeted_host_count** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainScanV2.new(
  affected_hosts_count: null,
  cid: null,
  cloud_ml_level_detection: null,
  cloud_ml_level_prevention: null,
  completed_host_count: null,
  cpu_priority: null,
  created_by: null,
  created_on: null,
  description: null,
  endpoint_notification: null,
  file_paths: null,
  filecount: null,
  host_groups: null,
  hosts: null,
  id: null,
  incomplete_host_count: null,
  initiated_from: null,
  last_updated: null,
  max_duration: null,
  metadata: null,
  missing_host_count: null,
  not_started_host_count: null,
  pause_duration: null,
  policy_setting: null,
  preemption_priority: null,
  profile_id: null,
  quarantine: null,
  scan_completed_on: null,
  scan_exclusions: null,
  scan_inclusions: null,
  scan_started_on: null,
  sensor_ml_level_detection: null,
  sensor_ml_level_prevention: null,
  severity: null,
  started_host_count: null,
  status: null,
  targeted_host_count: null
)
```


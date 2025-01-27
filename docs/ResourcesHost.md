# Falcon::ResourcesHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  | [optional] |
| **apps** | **Array&lt;String&gt;** |  | [optional] |
| **cve_ids** | **Array&lt;String&gt;** |  | [optional] |
| **exprt_ratings** | **Array&lt;String&gt;** |  | [optional] |
| **managed_by** | **String** |  | [optional] |
| **os_build** | **String** |  | [optional] |
| **os_version** | **String** |  | [optional] |
| **platform_name** | **String** |  | [optional] |
| **platform_os_name** | **String** |  | [optional] |
| **platform_os_version** | **String** |  | [optional] |
| **recommendations** | **Array&lt;String&gt;** |  | [optional] |
| **sensor_priority** | **String** |  | [optional] |
| **snapshot_detections** | **Array&lt;String&gt;** |  | [optional] |
| **ssm_managed** | **Boolean** |  | [optional] |
| **state** | **String** |  | [optional] |
| **vulnerabilities** | [**Array&lt;ResourcesVulnerability&gt;**](ResourcesVulnerability.md) |  | [optional] |
| **vulnerabilities_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ResourcesHost.new(
  aid: null,
  apps: null,
  cve_ids: null,
  exprt_ratings: null,
  managed_by: null,
  os_build: null,
  os_version: null,
  platform_name: null,
  platform_os_name: null,
  platform_os_version: null,
  recommendations: null,
  sensor_priority: null,
  snapshot_detections: null,
  ssm_managed: null,
  state: null,
  vulnerabilities: null,
  vulnerabilities_count: null
)
```


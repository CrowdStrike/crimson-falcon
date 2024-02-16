# Falcon::ModelsAPIImageCombinedExport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_os** | **String** |  |  |
| **cid** | **String** |  |  |
| **cve_id** | **String** |  |  |
| **cvss_score** | **String** |  |  |
| **detection_name** | **String** |  |  |
| **detection_severity** | **String** |  |  |
| **detection_type** | **String** |  |  |
| **first_seen** | **String** |  |  |
| **image_digest** | **String** |  |  |
| **image_id** | **String** |  |  |
| **last_seen** | **String** |  |  |
| **packages_impacted** | **Integer** |  |  |
| **registry** | **String** |  |  |
| **repository** | **String** |  |  |
| **started_containers** | **Integer** |  |  |
| **stopped_containers** | **Integer** |  |  |
| **tag** | **String** |  |  |
| **vulnerability_cps_rating** | **String** |  |  |
| **vulnerability_description** | **String** |  |  |
| **vulnerability_severity** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIImageCombinedExport.new(
  base_os: null,
  cid: null,
  cve_id: null,
  cvss_score: null,
  detection_name: null,
  detection_severity: null,
  detection_type: null,
  first_seen: null,
  image_digest: null,
  image_id: null,
  last_seen: null,
  packages_impacted: null,
  registry: null,
  repository: null,
  started_containers: null,
  stopped_containers: null,
  tag: null,
  vulnerability_cps_rating: null,
  vulnerability_description: null,
  vulnerability_severity: null
)
```


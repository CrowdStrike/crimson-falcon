# Falcon::ModelsAPIImageCombinedExport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_related** | **Boolean** |  |  |
| **architecture** | **String** |  |  |
| **base_os** | **String** |  |  |
| **cid** | **String** |  |  |
| **cve_id** | **String** |  |  |
| **cvss_score** | **String** |  |  |
| **detection_name** | **String** |  |  |
| **detection_severity** | **String** |  |  |
| **detection_type** | **String** |  |  |
| **first_seen** | **String** |  |  |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **image_digest** | **String** |  |  |
| **image_id** | **String** |  |  |
| **is_base_image** | **Boolean** |  |  |
| **last_seen** | **String** |  |  |
| **packages_impacted** | **Integer** |  |  |
| **registry** | **String** |  |  |
| **repository** | **String** |  |  |
| **source** | **String** |  |  |
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
  ai_related: null,
  architecture: null,
  base_os: null,
  cid: null,
  cve_id: null,
  cvss_score: null,
  detection_name: null,
  detection_severity: null,
  detection_type: null,
  first_seen: null,
  groups: null,
  image_digest: null,
  image_id: null,
  is_base_image: null,
  last_seen: null,
  packages_impacted: null,
  registry: null,
  repository: null,
  source: null,
  started_containers: null,
  stopped_containers: null,
  tag: null,
  vulnerability_cps_rating: null,
  vulnerability_description: null,
  vulnerability_severity: null
)
```


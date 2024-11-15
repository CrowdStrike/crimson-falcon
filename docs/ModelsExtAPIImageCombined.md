# Falcon::ModelsExtAPIImageCombined

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architecture** | **String** |  |  |
| **base_os** | **String** |  |  |
| **cid** | **String** |  |  |
| **containers** | **Integer** |  |  |
| **detections** | **Integer** |  |  |
| **first_seen** | **String** |  |  |
| **highest_detection_severity** | **String** |  |  |
| **highest_vulnerability_severity** | **String** |  |  |
| **image_digest** | **String** |  |  |
| **image_id** | **String** |  |  |
| **last_seen** | **String** |  |  |
| **layers_with_vulnerabilities** | **Integer** |  |  |
| **packages** | **Integer** |  |  |
| **registry** | **String** |  |  |
| **report_url_by_id_and_digest** | **String** |  |  |
| **report_url_by_repo_and_tag** | **String** |  |  |
| **repository** | **String** |  |  |
| **tag** | **String** |  |  |
| **vulnerabilities** | **Integer** |  |  |
| **warning** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsExtAPIImageCombined.new(
  architecture: null,
  base_os: null,
  cid: null,
  containers: null,
  detections: null,
  first_seen: null,
  highest_detection_severity: null,
  highest_vulnerability_severity: null,
  image_digest: null,
  image_id: null,
  last_seen: null,
  layers_with_vulnerabilities: null,
  packages: null,
  registry: null,
  report_url_by_id_and_digest: null,
  report_url_by_repo_and_tag: null,
  repository: null,
  tag: null,
  vulnerabilities: null,
  warning: null
)
```


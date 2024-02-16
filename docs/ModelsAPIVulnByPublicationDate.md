# Falcon::ModelsAPIVulnByPublicationDate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **containers_impacted** | **Integer** |  |  |
| **cve_id** | **String** |  |  |
| **cvss_score** | **Float** |  |  |
| **images_impacted** | **Integer** |  |  |
| **published_date** | **String** |  |  |
| **severity** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIVulnByPublicationDate.new(
  containers_impacted: null,
  cve_id: null,
  cvss_score: null,
  images_impacted: null,
  published_date: null,
  severity: null
)
```


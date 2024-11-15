# Falcon::ModelsComplianceExportGroupedByRulesReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_type** | **String** |  |  |
| **authority** | **String** |  |  |
| **clusters** | **Integer** |  |  |
| **clusters_list** | **String** |  |  |
| **failed_containers** | **Integer** |  |  |
| **failed_images** | **Integer** |  |  |
| **name** | **String** |  |  |
| **passed_containers** | **Integer** |  |  |
| **passed_images** | **Integer** |  |  |
| **rule_id** | **String** |  |  |
| **severity** | **Float** |  |  |
| **total_containers** | **Integer** |  |  |
| **total_images** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsComplianceExportGroupedByRulesReport.new(
  asset_type: null,
  authority: null,
  clusters: null,
  clusters_list: null,
  failed_containers: null,
  failed_images: null,
  name: null,
  passed_containers: null,
  passed_images: null,
  rule_id: null,
  severity: null,
  total_containers: null,
  total_images: null
)
```


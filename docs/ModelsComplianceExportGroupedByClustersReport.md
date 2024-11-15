# Falcon::ModelsComplianceExportGroupedByClustersReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **cloud_account_id** | **String** |  |  |
| **cloud_provider** | **String** |  |  |
| **cloud_region** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **failed_critical_rules** | **Integer** |  |  |
| **failed_high_rules** | **Integer** |  |  |
| **failed_rules** | **Integer** |  |  |
| **failed_rules_list** | **String** |  |  |
| **non_compliant_containers** | **Integer** |  |  |
| **non_compliant_images** | **Integer** |  |  |
| **passed_rules** | **Integer** |  |  |
| **percentage_of_compliant_assets** | **Float** |  |  |
| **total_containers** | **Integer** |  |  |
| **total_images** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsComplianceExportGroupedByClustersReport.new(
  cid: null,
  cloud_account_id: null,
  cloud_provider: null,
  cloud_region: null,
  cluster_name: null,
  failed_critical_rules: null,
  failed_high_rules: null,
  failed_rules: null,
  failed_rules_list: null,
  non_compliant_containers: null,
  non_compliant_images: null,
  passed_rules: null,
  percentage_of_compliant_assets: null,
  total_containers: null,
  total_images: null
)
```


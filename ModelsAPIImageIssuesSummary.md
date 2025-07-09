# Falcon::ModelsAPIImageIssuesSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_container_info** | [**ModelsIssuesSummaryContainerInfo**](ModelsIssuesSummaryContainerInfo.md) |  |  |
| **image_detections** | [**Array&lt;ModelsAPIDetectionCountByType&gt;**](ModelsAPIDetectionCountByType.md) |  |  |
| **is_dca_run** | **Boolean** |  |  |
| **known_issues** | **Integer** |  |  |
| **packages_info** | [**ModelsImageSummaryPackagesInfo**](ModelsImageSummaryPackagesInfo.md) |  |  |
| **policies_summary** | [**Array&lt;ModelsAPIPolicyCountByAction&gt;**](ModelsAPIPolicyCountByAction.md) |  |  |
| **runtime_detections** | [**Array&lt;ModelsAPIFilterLabel&gt;**](ModelsAPIFilterLabel.md) |  |  |
| **vulnerabilities_summary** | [**Array&lt;ModelsAPIVulnCountBySeverity&gt;**](ModelsAPIVulnCountBySeverity.md) |  |  |
| **zero_day_impacted** | **Boolean** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIImageIssuesSummary.new(
  image_container_info: null,
  image_detections: null,
  is_dca_run: null,
  known_issues: null,
  packages_info: null,
  policies_summary: null,
  runtime_detections: null,
  vulnerabilities_summary: null,
  zero_day_impacted: null
)
```


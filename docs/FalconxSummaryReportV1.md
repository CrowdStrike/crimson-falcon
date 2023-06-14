# Falcon::FalconxSummaryReportV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  | [optional] |
| **created_timestamp** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **intel** | [**Array&lt;FalconxIntelSummaryReportV1&gt;**](FalconxIntelSummaryReportV1.md) |  | [optional] |
| **ioc_report_broad_csv_artifact_id** | **String** |  | [optional] |
| **ioc_report_broad_json_artifact_id** | **String** |  | [optional] |
| **ioc_report_broad_maec_artifact_id** | **String** |  | [optional] |
| **ioc_report_broad_stix_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_csv_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_json_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_maec_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_stix_artifact_id** | **String** |  | [optional] |
| **origin** | **String** |  | [optional] |
| **sandbox** | [**Array&lt;FalconxSandboxSummaryReportV1&gt;**](FalconxSandboxSummaryReportV1.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **user_tags** | **Array&lt;String&gt;** |  | [optional] |
| **verdict** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxSummaryReportV1.new(
  cid: null,
  created_timestamp: null,
  id: null,
  intel: null,
  ioc_report_broad_csv_artifact_id: null,
  ioc_report_broad_json_artifact_id: null,
  ioc_report_broad_maec_artifact_id: null,
  ioc_report_broad_stix_artifact_id: null,
  ioc_report_strict_csv_artifact_id: null,
  ioc_report_strict_json_artifact_id: null,
  ioc_report_strict_maec_artifact_id: null,
  ioc_report_strict_stix_artifact_id: null,
  origin: null,
  sandbox: null,
  tags: null,
  user_id: null,
  user_name: null,
  user_tags: null,
  verdict: null
)
```


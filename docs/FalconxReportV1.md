# Falcon::FalconxReportV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **created_timestamp** | **String** |  | [optional] |
| **has_recording** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **index_timestamp** | **String** |  | [optional] |
| **intel** | [**Array&lt;FalconxIntelReportV1&gt;**](FalconxIntelReportV1.md) |  | [optional] |
| **intelx** | [**FalconxIntelXReportV1**](FalconxIntelXReportV1.md) |  | [optional] |
| **ioc_report_broad_csv_artifact_id** | **String** |  | [optional] |
| **ioc_report_broad_json_artifact_id** | **String** |  | [optional] |
| **ioc_report_broad_maec_artifact_id** | **String** |  | [optional] |
| **ioc_report_broad_stix_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_csv_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_json_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_maec_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_stix_artifact_id** | **String** |  | [optional] |
| **malquery** | [**Array&lt;FalconxMalqueryReportV1&gt;**](FalconxMalqueryReportV1.md) |  | [optional] |
| **origin** | **String** |  | [optional] |
| **sandbox** | [**Array&lt;FalconxSandboxReportV1&gt;**](FalconxSandboxReportV1.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **threat_graph** | [**FalconxThreatGraphReportV1**](FalconxThreatGraphReportV1.md) |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **user_tags** | **Array&lt;String&gt;** |  | [optional] |
| **user_uuid** | **String** |  | [optional] |
| **verdict** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxReportV1.new(
  aid: null,
  cid: null,
  created_timestamp: null,
  has_recording: null,
  id: null,
  index_timestamp: null,
  intel: null,
  intelx: null,
  ioc_report_broad_csv_artifact_id: null,
  ioc_report_broad_json_artifact_id: null,
  ioc_report_broad_maec_artifact_id: null,
  ioc_report_broad_stix_artifact_id: null,
  ioc_report_strict_csv_artifact_id: null,
  ioc_report_strict_json_artifact_id: null,
  ioc_report_strict_maec_artifact_id: null,
  ioc_report_strict_stix_artifact_id: null,
  malquery: null,
  origin: null,
  sandbox: null,
  tags: null,
  threat_graph: null,
  user_id: null,
  user_name: null,
  user_tags: null,
  user_uuid: null,
  verdict: null
)
```


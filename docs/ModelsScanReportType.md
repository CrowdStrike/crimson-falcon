# Falcon::ModelsScanReportType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_packages** | [**Array&lt;ModelsApplicationPackageInfoType&gt;**](ModelsApplicationPackageInfoType.md) |  | [optional] |
| **detection_engine_info** | [**ModelsDetectionEngineInfoType**](ModelsDetectionEngineInfoType.md) |  |  |
| **detections** | [**Array&lt;ModelsDetectionInfoType&gt;**](ModelsDetectionInfoType.md) |  |  |
| **vulnerabilities** | [**Array&lt;ModelsPackageVulnerabilityType&gt;**](ModelsPackageVulnerabilityType.md) |  |  |
| **vulnerabilities_truncated** | [**ModelsVulnerabilitiesType**](ModelsVulnerabilitiesType.md) |  | [optional] |
| **job_metadata** | [**ModelsJobMetaData**](ModelsJobMetaData.md) |  |  |
| **os_info** | [**ModelsOSInfoType**](ModelsOSInfoType.md) |  |  |
| **results** | [**ModelsScanResults**](ModelsScanResults.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsScanReportType.new(
  application_packages: null,
  detection_engine_info: null,
  detections: null,
  vulnerabilities: null,
  vulnerabilities_truncated: null,
  job_metadata: null,
  os_info: null,
  results: null
)
```


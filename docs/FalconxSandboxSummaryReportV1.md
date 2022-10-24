# Falcon::FalconxSandboxSummaryReportV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classification_tags** | **Array&lt;String&gt;** |  | [optional] |
| **environment_description** | **String** |  | [optional] |
| **environment_id** | **Integer** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **error_origin** | **String** |  | [optional] |
| **error_type** | **String** |  | [optional] |
| **file_type** | **String** |  | [optional] |
| **incidents** | [**Array&lt;FalconxIncident&gt;**](FalconxIncident.md) |  | [optional] |
| **sample_flags** | **Array&lt;String&gt;** |  | [optional] |
| **sha256** | **String** |  | [optional] |
| **submission_type** | **String** |  | [optional] |
| **submit_name** | **String** |  | [optional] |
| **submit_url** | **String** |  | [optional] |
| **threat_score** | **Integer** |  | [optional] |
| **verdict** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxSandboxSummaryReportV1.new(
  classification_tags: null,
  environment_description: null,
  environment_id: null,
  error_message: null,
  error_origin: null,
  error_type: null,
  file_type: null,
  incidents: null,
  sample_flags: null,
  sha256: null,
  submission_type: null,
  submit_name: null,
  submit_url: null,
  threat_score: null,
  verdict: null
)
```


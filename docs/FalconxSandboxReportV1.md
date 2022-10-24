# Falcon::FalconxSandboxReportV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architecture** | **String** |  | [optional] |
| **classification** | **Array&lt;String&gt;** |  | [optional] |
| **classification_tags** | **Array&lt;String&gt;** |  | [optional] |
| **contacted_hosts** | [**Array&lt;FalconxContactedHost&gt;**](FalconxContactedHost.md) |  | [optional] |
| **dns_requests** | [**Array&lt;FalconxDNSRequest&gt;**](FalconxDNSRequest.md) |  | [optional] |
| **environment_description** | **String** |  | [optional] |
| **environment_id** | **Integer** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **error_origin** | **String** |  | [optional] |
| **error_type** | **String** |  | [optional] |
| **extracted_files** | [**Array&lt;FalconxExtractedFile&gt;**](FalconxExtractedFile.md) |  | [optional] |
| **extracted_interesting_strings** | [**Array&lt;FalconxExtractedInterestingString&gt;**](FalconxExtractedInterestingString.md) |  | [optional] |
| **file_imports** | [**Array&lt;FalconxFileImport&gt;**](FalconxFileImport.md) |  | [optional] |
| **file_metadata** | [**FalconxFileMetadata**](FalconxFileMetadata.md) |  | [optional] |
| **file_size** | **Integer** |  | [optional] |
| **file_type** | **String** |  | [optional] |
| **file_type_short** | **Array&lt;String&gt;** |  | [optional] |
| **http_requests** | [**Array&lt;FalconxHTTPRequest&gt;**](FalconxHTTPRequest.md) |  | [optional] |
| **incidents** | [**Array&lt;FalconxIncident&gt;**](FalconxIncident.md) |  | [optional] |
| **ioc_report_broad_artifact_id** | **String** |  | [optional] |
| **ioc_report_strict_artifact_id** | **String** |  | [optional] |
| **memory_forensics** | [**Array&lt;FalconxMemoryForensic&gt;**](FalconxMemoryForensic.md) |  | [optional] |
| **memory_strings_artifact_id** | **String** |  | [optional] |
| **mitre_attacks** | [**Array&lt;FalconxMITREAttack&gt;**](FalconxMITREAttack.md) |  | [optional] |
| **packer** | **String** |  | [optional] |
| **pcap_report_artifact_id** | **String** |  | [optional] |
| **processes** | [**Array&lt;FalconxProcess&gt;**](FalconxProcess.md) |  | [optional] |
| **sample_flags** | **Array&lt;String&gt;** |  | [optional] |
| **screenshots_artifact_ids** | **Array&lt;String&gt;** |  | [optional] |
| **sha256** | **String** |  | [optional] |
| **signatures** | [**Array&lt;FalconxSignature&gt;**](FalconxSignature.md) |  | [optional] |
| **submission_type** | **String** |  | [optional] |
| **submit_name** | **String** |  | [optional] |
| **submit_url** | **String** |  | [optional] |
| **suricata_alerts** | [**Array&lt;FalconxSuricataAlert&gt;**](FalconxSuricataAlert.md) |  | [optional] |
| **target_url** | **String** |  | [optional] |
| **threat_score** | **Integer** |  | [optional] |
| **verdict** | **String** |  | [optional] |
| **version_info** | [**Array&lt;FalconxVersionInfo&gt;**](FalconxVersionInfo.md) |  | [optional] |
| **windows_version_bitness** | **Integer** |  | [optional] |
| **windows_version_edition** | **String** |  | [optional] |
| **windows_version_name** | **String** |  | [optional] |
| **windows_version_service_pack** | **String** |  | [optional] |
| **windows_version_version** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxSandboxReportV1.new(
  architecture: null,
  classification: null,
  classification_tags: null,
  contacted_hosts: null,
  dns_requests: null,
  environment_description: null,
  environment_id: null,
  error_message: null,
  error_origin: null,
  error_type: null,
  extracted_files: null,
  extracted_interesting_strings: null,
  file_imports: null,
  file_metadata: null,
  file_size: null,
  file_type: null,
  file_type_short: null,
  http_requests: null,
  incidents: null,
  ioc_report_broad_artifact_id: null,
  ioc_report_strict_artifact_id: null,
  memory_forensics: null,
  memory_strings_artifact_id: null,
  mitre_attacks: null,
  packer: null,
  pcap_report_artifact_id: null,
  processes: null,
  sample_flags: null,
  screenshots_artifact_ids: null,
  sha256: null,
  signatures: null,
  submission_type: null,
  submit_name: null,
  submit_url: null,
  suricata_alerts: null,
  target_url: null,
  threat_score: null,
  verdict: null,
  version_info: null,
  windows_version_bitness: null,
  windows_version_edition: null,
  windows_version_name: null,
  windows_version_service_pack: null,
  windows_version_version: null
)
```


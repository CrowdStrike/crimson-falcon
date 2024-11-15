# Falcon::DomainCaseCreationRequestV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |
| **detections** | [**Array&lt;MessagesAlert&gt;**](MessagesAlert.md) |  |  |
| **incidents** | [**Array&lt;MessagesIncident&gt;**](MessagesIncident.md) |  |  |
| **malware_submission_id** | **String** |  |  |
| **recon_rule_type** | **String** |  |  |
| **title** | **String** |  |  |
| **type** | **String** |  |  |
| **user_uuid** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCaseCreationRequestV2.new(
  body: null,
  detections: null,
  incidents: null,
  malware_submission_id: null,
  recon_rule_type: null,
  title: null,
  type: null,
  user_uuid: null
)
```


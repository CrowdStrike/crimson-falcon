# Falcon::MessagesCase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aids** | **Array&lt;String&gt;** |  |  |
| **assigner** | [**MessagesAuthor**](MessagesAuthor.md) |  |  |
| **attachments** | [**Array&lt;MessagesAttachment&gt;**](MessagesAttachment.md) |  |  |
| **body** | **String** |  |  |
| **cid** | **String** |  |  |
| **created_time** | **String** |  |  |
| **detections** | [**Array&lt;MessagesDetection&gt;**](MessagesDetection.md) |  |  |
| **hosts** | **Array&lt;String&gt;** |  |  |
| **id** | **String** |  |  |
| **incidents** | [**Array&lt;MessagesIncident&gt;**](MessagesIncident.md) |  |  |
| **ip_addresses** | **Array&lt;String&gt;** |  |  |
| **key** | **String** |  |  |
| **last_modified_time** | **String** |  |  |
| **malware_submission_id** | **String** |  |  |
| **malware_submission_url** | **String** |  |  |
| **recon_rule_type** | **String** |  |  |
| **status** | **String** |  |  |
| **title** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MessagesCase.new(
  aids: null,
  assigner: null,
  attachments: null,
  body: null,
  cid: null,
  created_time: null,
  detections: null,
  hosts: null,
  id: null,
  incidents: null,
  ip_addresses: null,
  key: null,
  last_modified_time: null,
  malware_submission_id: null,
  malware_submission_url: null,
  recon_rule_type: null,
  status: null,
  title: null,
  type: null
)
```


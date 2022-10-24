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
| **status** | **String** |  |  |
| **title** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

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
  status: null,
  title: null,
  type: null
)
```


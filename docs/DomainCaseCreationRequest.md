# Falcon::DomainCaseCreationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |
| **detections** | [**Array&lt;MessagesDetection&gt;**](MessagesDetection.md) |  |  |
| **incidents** | [**Array&lt;MessagesIncident&gt;**](MessagesIncident.md) |  |  |
| **title** | **String** |  |  |
| **type** | **String** |  |  |
| **user_uuid** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCaseCreationRequest.new(
  body: null,
  detections: null,
  incidents: null,
  title: null,
  type: null,
  user_uuid: null
)
```


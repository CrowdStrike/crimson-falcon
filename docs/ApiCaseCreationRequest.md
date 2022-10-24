# Falcon::ApiCaseCreationRequest

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
require 'crowdstrike-falcon'

instance = Falcon::ApiCaseCreationRequest.new(
  body: null,
  detections: null,
  incidents: null,
  title: null,
  type: null,
  user_uuid: null
)
```


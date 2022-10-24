# Falcon::ApiCaseUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |
| **detections** | [**Array&lt;MessagesDetection&gt;**](MessagesDetection.md) |  |  |
| **id** | **String** |  |  |
| **incidents** | [**Array&lt;MessagesIncident&gt;**](MessagesIncident.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiCaseUpdateRequest.new(
  body: null,
  detections: null,
  id: null,
  incidents: null
)
```


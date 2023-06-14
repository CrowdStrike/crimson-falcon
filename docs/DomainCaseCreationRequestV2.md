# Falcon::DomainCaseCreationRequestV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |
| **detections** | [**Array&lt;MessagesAlert&gt;**](MessagesAlert.md) |  |  |
| **incidents** | [**Array&lt;MessagesIncident&gt;**](MessagesIncident.md) |  |  |
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
  title: null,
  type: null,
  user_uuid: null
)
```


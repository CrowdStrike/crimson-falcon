# Falcon::TypesActionRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_time** | **String** |  | [optional] |
| **events** | [**Array&lt;TypesActionRunEvent&gt;**](TypesActionRunEvent.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **latest_event** | [**TypesActionRunEvent**](TypesActionRunEvent.md) |  | [optional] |
| **metadata** | [**TypesActionRunMetadata**](TypesActionRunMetadata.md) |  | [optional] |
| **progress** | **Integer** |  | [optional] |
| **scheduled** | **Boolean** |  | [optional] |
| **trace_uuid** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesActionRun.new(
  create_time: null,
  events: null,
  id: null,
  latest_event: null,
  metadata: null,
  progress: null,
  scheduled: null,
  trace_uuid: null
)
```


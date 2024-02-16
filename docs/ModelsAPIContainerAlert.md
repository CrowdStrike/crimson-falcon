# Falcon::ModelsAPIContainerAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **containers_impacted_count** | **String** |  |  |
| **containers_impacted_ids** | **Array&lt;String&gt;** |  |  |
| **detection_description** | **String** |  |  |
| **detection_event_simple_name** | **String** |  |  |
| **detection_name** | **String** |  |  |
| **first_seen_timestamp** | **String** |  |  |
| **last_seen_timestamp** | **String** |  |  |
| **severity** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIContainerAlert.new(
  containers_impacted_count: null,
  containers_impacted_ids: null,
  detection_description: null,
  detection_event_simple_name: null,
  detection_name: null,
  first_seen_timestamp: null,
  last_seen_timestamp: null,
  severity: null
)
```


# Falcon::ExecutionsTriggerResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the selected trigger as provided by the triggers API | [optional] |
| **mocked** | **Boolean** | Whether this node&#39;s result is mocked | [optional] |
| **name** | **String** | Display name of the trigger |  |
| **result** | **Object** | Opaque blob for result of trigger. Structured according to the trigger&#39;s JSON schema&#39;. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsTriggerResult.new(
  id: null,
  mocked: null,
  name: null,
  result: null
)
```


# Falcon::ExecutionsAncestorExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | Display name of the input field to the parent execution loop node. |  |
| **id** | **String** | Unique id of the ancestor execution id. |  |
| **iteration** | **Integer** | Index number indicating what iteration of the parent execution this given execution is associated with. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsAncestorExecution.new(
  field: null,
  id: null,
  iteration: null
)
```


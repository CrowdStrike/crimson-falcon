# Falcon::TriggersTriggerExt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_scope** | **String** | Required api scope to use this trigger. |  |
| **category** | **String** | Category for the trigger. |  |
| **description** | **String** | Description for the trigger. | [optional] |
| **fields** | [**Array&lt;TriggersTriggerExtField&gt;**](TriggersTriggerExtField.md) | Nested fields of this object, only set when field type is complex | [optional] |
| **id** | **String** | Unique identifier for the trigger. |  |
| **name** | **String** | User friendly display name for the trigger, this the fully qualified name that provides the context hierarchy. |  |
| **version** | **String** | Version of the trigger. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TriggersTriggerExt.new(
  api_scope: null,
  category: null,
  description: null,
  fields: null,
  id: null,
  name: null,
  version: null
)
```


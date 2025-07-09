# Falcon::V2Activity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **inline_configuration** | [**V2InlineConfig**](V2InlineConfig.md) |  | [optional] |
| **name** | **String** | Optional user provided name for the activity, if not specified a default of the name for that activity will be used. | [optional] |
| **_next** | **Array&lt;String&gt;** |  | [optional] |
| **properties** | **Object** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2Activity.new(
  _class: null,
  id: null,
  inline_configuration: null,
  name: null,
  _next: null,
  properties: null
)
```


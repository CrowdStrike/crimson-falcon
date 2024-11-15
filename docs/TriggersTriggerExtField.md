# Falcon::TriggersTriggerExtField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description for the field. | [optional] |
| **display** | **String** | User friendly display name for the field |  |
| **example** | **Object** |  | [optional] |
| **fields** | [**Array&lt;TriggersTriggerExtField&gt;**](TriggersTriggerExtField.md) | Nested fields of this object, only set when field type is complex | [optional] |
| **name** | **String** | Name of the field as it should be passed back to the API through conditions or data mapping. |  |
| **source** | [**FielddataFieldSource**](FielddataFieldSource.md) |  | [optional] |
| **type** | **String** | Underlying type for the field, can be a primitive json schema type or signal field type. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TriggersTriggerExtField.new(
  description: null,
  display: null,
  example: null,
  fields: null,
  name: null,
  source: null,
  type: null
)
```


# Falcon::ActivitiesActivityExtField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description for the field. | [optional] |
| **display** | **String** | User friendly display name for the field |  |
| **example** | **Object** |  | [optional] |
| **fields** | [**Array&lt;ActivitiesActivityExtField&gt;**](ActivitiesActivityExtField.md) | Nested fields of this object, only set when field type is complex | [optional] |
| **name** | **String** | Name of the field as it should be passed back to the API through conditions or data mapping. |  |
| **source** | [**FielddataFieldSource**](FielddataFieldSource.md) |  | [optional] |
| **type** | **String** | Underlying type for the field, can be a primitive json schema type or signal field type. | [optional] |
| **x_cs_not_parameterizable** | **Boolean** | This property is set if the notPramaterizable is set to true. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ActivitiesActivityExtField.new(
  description: null,
  display: null,
  example: null,
  fields: null,
  name: null,
  source: null,
  type: null,
  x_cs_not_parameterizable: null
)
```


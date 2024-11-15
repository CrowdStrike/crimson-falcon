# Falcon::JsonschemaSubSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ref** | **String** |  | [optional] |
| **schema** | **String** |  | [optional] |
| **additional_items** | **String** |  | [optional] |
| **additional_properties** | **String** |  | [optional] |
| **all_of** | [**Array&lt;JsonschemaSubSchema&gt;**](JsonschemaSubSchema.md) |  | [optional] |
| **any_of** | [**Array&lt;JsonschemaSubSchema&gt;**](JsonschemaSubSchema.md) |  | [optional] |
| **binary_encoding** | **String** |  | [optional] |
| **const** | **Object** |  | [optional] |
| **default** | **Object** |  | [optional] |
| **dependencies** | [**Hash&lt;String, JsonschemaSubSchema&gt;**](JsonschemaSubSchema.md) |  | [optional] |
| **deprecated** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_else** | [**JsonschemaSubSchema**](JsonschemaSubSchema.md) |  | [optional] |
| **enum** | **Array&lt;Object&gt;** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **examples** | **Array&lt;Object&gt;** |  | [optional] |
| **exclusive_maximum** | **Boolean** |  | [optional] |
| **exclusive_minimum** | **Boolean** |  | [optional] |
| **format** | **String** |  | [optional] |
| **_if** | [**JsonschemaSubSchema**](JsonschemaSubSchema.md) |  | [optional] |
| **items** | [**JsonschemaSubSchema**](JsonschemaSubSchema.md) |  | [optional] |
| **max_items** | **Integer** |  | [optional] |
| **max_length** | **Integer** |  | [optional] |
| **max_properties** | **Integer** |  | [optional] |
| **maximum** | **Integer** |  | [optional] |
| **media** | [**JsonschemaSubSchema**](JsonschemaSubSchema.md) |  | [optional] |
| **min_items** | **Integer** |  | [optional] |
| **min_length** | **Integer** |  | [optional] |
| **min_properties** | **Integer** |  | [optional] |
| **minimum** | **Integer** |  | [optional] |
| **multiple_of** | **Integer** |  | [optional] |
| **_not** | [**JsonschemaSubSchema**](JsonschemaSubSchema.md) |  | [optional] |
| **one_of** | [**Array&lt;JsonschemaSubSchema&gt;**](JsonschemaSubSchema.md) |  | [optional] |
| **pattern** | **String** |  | [optional] |
| **pattern_properties** | [**Hash&lt;String, JsonschemaSubSchema&gt;**](JsonschemaSubSchema.md) |  | [optional] |
| **properties** | [**Hash&lt;String, JsonschemaSubSchema&gt;**](JsonschemaSubSchema.md) |  | [optional] |
| **required** | **Array&lt;String&gt;** |  | [optional] |
| **_then** | [**JsonschemaSubSchema**](JsonschemaSubSchema.md) |  | [optional] |
| **title** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **uicomponent** | **String** |  | [optional] |
| **unique_items** | **Boolean** |  | [optional] |
| **x_cs_authorization** | [**JsonschemaAuthorization**](JsonschemaAuthorization.md) |  | [optional] |
| **x_cs_can_create** | **Boolean** |  | [optional] |
| **x_cs_condition_group_fields** | [**JsonschemaConditionGroupFields**](JsonschemaConditionGroupFields.md) |  | [optional] |
| **x_cs_do_not_hide** | **Boolean** |  | [optional] |
| **x_cs_immutable** | **Boolean** |  | [optional] |
| **x_cs_indexable** | **Boolean** |  | [optional] |
| **x_cs_indexable_fields** | [**Array&lt;JsonschemaCollectionIndexField&gt;**](JsonschemaCollectionIndexField.md) |  | [optional] |
| **x_cs_max_duration** | **Integer** |  | [optional] |
| **x_cs_min_duration** | **Integer** |  | [optional] |
| **x_cs_not_parameterizable** | **Boolean** |  | [optional] |
| **x_cs_order** | **Array&lt;String&gt;** |  | [optional] |
| **x_cs_pivot** | [**JsonschemaPivot**](JsonschemaPivot.md) |  | [optional] |
| **x_cs_signals** | [**JsonschemaSignalsExtensions**](JsonschemaSignalsExtensions.md) |  | [optional] |
| **x_cs_signals_category** | **String** |  | [optional] |
| **x_cs_signals_operators** | **Array&lt;String&gt;** |  | [optional] |
| **x_cs_signals_sub_category** | **String** |  | [optional] |
| **x_cs_tags** | **Array&lt;String&gt;** |  | [optional] |
| **x_cs_ui** | [**JsonschemaUIExtensions**](JsonschemaUIExtensions.md) |  | [optional] |
| **x_cs_workflow** | [**JsonschemaWorkflowExtensions**](JsonschemaWorkflowExtensions.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::JsonschemaSubSchema.new(
  ref: null,
  schema: null,
  additional_items: null,
  additional_properties: null,
  all_of: null,
  any_of: null,
  binary_encoding: null,
  const: null,
  default: null,
  dependencies: null,
  deprecated: null,
  description: null,
  _else: null,
  enum: null,
  error_message: null,
  examples: null,
  exclusive_maximum: null,
  exclusive_minimum: null,
  format: null,
  _if: null,
  items: null,
  max_items: null,
  max_length: null,
  max_properties: null,
  maximum: null,
  media: null,
  min_items: null,
  min_length: null,
  min_properties: null,
  minimum: null,
  multiple_of: null,
  _not: null,
  one_of: null,
  pattern: null,
  pattern_properties: null,
  properties: null,
  required: null,
  _then: null,
  title: null,
  type: null,
  uicomponent: null,
  unique_items: null,
  x_cs_authorization: null,
  x_cs_can_create: null,
  x_cs_condition_group_fields: null,
  x_cs_do_not_hide: null,
  x_cs_immutable: null,
  x_cs_indexable: null,
  x_cs_indexable_fields: null,
  x_cs_max_duration: null,
  x_cs_min_duration: null,
  x_cs_not_parameterizable: null,
  x_cs_order: null,
  x_cs_pivot: null,
  x_cs_signals: null,
  x_cs_signals_category: null,
  x_cs_signals_operators: null,
  x_cs_signals_sub_category: null,
  x_cs_tags: null,
  x_cs_ui: null,
  x_cs_workflow: null
)
```


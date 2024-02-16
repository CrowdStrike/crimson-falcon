# Falcon::DetectsapiAggregationResultItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | total count of items falling in this bucket |  |
| **from** | **Float** | used to determine the start of the range in aggregations | [optional] |
| **key_as_string** | **String** | the formatted string version using the format parameter specification | [optional] |
| **label** | **Object** |  | [optional] |
| **string_from** | **String** | string representation of &#39;From&#39; date | [optional] |
| **string_to** | **String** | string representation of &#39;To&#39; date | [optional] |
| **sub_aggregates** | [**Array&lt;DetectsapiAggregationResult&gt;**](DetectsapiAggregationResult.md) | nested aggregation result | [optional] |
| **to** | **Float** | used to determine end of the range in aggregations | [optional] |
| **value** | **Float** | numeric aggregations (Min, Max, Avg, Percentile...) | [optional] |
| **value_as_string** | **String** | string representation of Value | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiAggregationResultItem.new(
  count: null,
  from: null,
  key_as_string: null,
  label: null,
  string_from: null,
  string_to: null,
  sub_aggregates: null,
  to: null,
  value: null,
  value_as_string: null
)
```


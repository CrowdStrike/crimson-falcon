# Falcon::DomainAggregationResultItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | count of the documents in the bucket |  |
| **from** | **Float** | numerical value of the date or number start of the range | [optional] |
| **key_as_string** | **String** | string value of the key, usually not populated | [optional] |
| **label** | **Object** |  | [optional] |
| **string_from** | **String** | string value of the from property, usually representing a date or number | [optional] |
| **string_to** | **String** | string value of the to property, usually representing a date or number | [optional] |
| **sub_aggregates** | [**Array&lt;DomainAggregationResult&gt;**](DomainAggregationResult.md) | sub-aggregations of the bucket | [optional] |
| **to** | **Float** | numerical value of the date or number end of the range | [optional] |
| **value** | **Float** | numerical value of the bucket | [optional] |
| **value_as_string** | **String** | value as a string, usually not populated | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregationResultItem.new(
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


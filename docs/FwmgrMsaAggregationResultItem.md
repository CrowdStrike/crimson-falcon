# Falcon::FwmgrMsaAggregationResultItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** |  |  |
| **from** | **Float** |  | [optional] |
| **key_as_string** | **String** |  | [optional] |
| **label** | **Object** |  | [optional] |
| **string_from** | **String** |  | [optional] |
| **string_to** | **String** |  | [optional] |
| **sub_aggregates** | [**Array&lt;FwmgrMsaAggregationResult&gt;**](FwmgrMsaAggregationResult.md) |  | [optional] |
| **to** | **Float** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **value_as_string** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrMsaAggregationResultItem.new(
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


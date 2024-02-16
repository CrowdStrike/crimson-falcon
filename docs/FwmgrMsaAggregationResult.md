# Falcon::FwmgrMsaAggregationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buckets** | [**Array&lt;FwmgrMsaAggregationResultItem&gt;**](FwmgrMsaAggregationResultItem.md) |  |  |
| **doc_count_error_upper_bound** | **Integer** |  | [optional] |
| **name** | **String** |  |  |
| **sum_other_doc_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrMsaAggregationResult.new(
  buckets: null,
  doc_count_error_upper_bound: null,
  name: null,
  sum_other_doc_count: null
)
```


# Falcon::FwmgrMsaAggregationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buckets** | [**Array&lt;FwmgrMsaAggregationResultItem&gt;**](FwmgrMsaAggregationResultItem.md) |  |  |
| **name** | **String** |  |  |
| **sum_other_doc_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrMsaAggregationResult.new(
  buckets: null,
  name: null,
  sum_other_doc_count: null
)
```


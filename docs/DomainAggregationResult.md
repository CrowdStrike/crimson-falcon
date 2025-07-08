# Falcon::DomainAggregationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buckets** | [**Array&lt;DomainAggregationResultItem&gt;**](DomainAggregationResultItem.md) | Aggregation buckets containing aggregated information |  |
| **name** | **String** | Name of the aggregation, equal to the name of it from the AggregateQueryRequest name |  |
| **sum_other_doc_count** | **Integer** | sum count of the documents not included in the buckets | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregationResult.new(
  buckets: null,
  name: null,
  sum_other_doc_count: null
)
```


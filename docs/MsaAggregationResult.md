# Falcon::MsaAggregationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buckets** | [**Array&lt;MsaAggregationResultItem&gt;**](MsaAggregationResultItem.md) |  |  |
| **name** | **String** |  |  |
| **sum_other_doc_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MsaAggregationResult.new(
  buckets: null,
  name: null,
  sum_other_doc_count: null
)
```


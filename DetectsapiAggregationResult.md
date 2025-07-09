# Falcon::DetectsapiAggregationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buckets** | [**Array&lt;DetectsapiAggregationResultItem&gt;**](DetectsapiAggregationResultItem.md) | collection of aggregate results matching the criteria |  |
| **name** | **String** | aggregate query name as provided in the request |  |
| **sum_other_doc_count** | **Integer** | sum of the document counts for all buckets that are not part of the response | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiAggregationResult.new(
  buckets: null,
  name: null,
  sum_other_doc_count: null
)
```


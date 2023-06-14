# Falcon::DomainAPIEvaluationLogicItemV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comparison_check** | **String** |  | [optional] |
| **comparisons** | [**DomainAPIEvaluationLogicComparisonsV1**](DomainAPIEvaluationLogicComparisonsV1.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **determined_by_comparison** | **Boolean** |  | [optional] |
| **existence_check** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **items** | **Array&lt;Object&gt;** |  | [optional] |
| **negate** | **Boolean** |  | [optional] |
| **title** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIEvaluationLogicItemV1.new(
  comparison_check: null,
  comparisons: null,
  description: null,
  determined_by_comparison: null,
  existence_check: null,
  id: null,
  items: null,
  negate: null,
  title: null,
  type: null
)
```


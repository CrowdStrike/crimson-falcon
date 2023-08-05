# Falcon::DomainAPIEvaluationLogicV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** | Refers to an asset identifier | [optional] |
| **cid** | **String** | Refers to a customer identifier | [optional] |
| **created_timestamp** | **String** | Refers to a point in time when evaluation logic data was created in the system | [optional] |
| **data_provider** | **String** | Refers to a label given to the entity that provided this data | [optional] |
| **host_info** | [**DomainAPIEvaluationLogicHostInfoV1**](DomainAPIEvaluationLogicHostInfoV1.md) |  | [optional] |
| **id** | **String** | Contains a unique identifier for the evaluation logic |  |
| **logic** | [**Array&lt;DomainAPIEvaluationLogicItemV1&gt;**](DomainAPIEvaluationLogicItemV1.md) | Refers to the actual evaluation logic data | [optional] |
| **scanner_id** | **String** | Refers to the identifier of the scanner that generated the evaluation logic | [optional] |
| **updated_timestamp** | **String** | Refers to a point in time when evaluation logic data was updated in the system | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIEvaluationLogicV1.new(
  aid: null,
  cid: null,
  created_timestamp: null,
  data_provider: null,
  host_info: null,
  id: null,
  logic: null,
  scanner_id: null,
  updated_timestamp: null
)
```


# Falcon::DomainAPIEvaluationLogicV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **created_timestamp** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **logic** | [**Array&lt;DomainAPIEvaluationLogicItemV1&gt;**](DomainAPIEvaluationLogicItemV1.md) |  | [optional] |
| **updated_timestamp** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainAPIEvaluationLogicV1.new(
  aid: null,
  cid: null,
  created_timestamp: null,
  id: null,
  logic: null,
  updated_timestamp: null
)
```


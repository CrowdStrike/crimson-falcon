# Falcon::DomainAPIFindingWithRuleV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **evaluation_reason** | **String** |  | [optional] |
| **host_id** | **String** |  | [optional] |
| **rule** | [**DomainAPIFindingRuleV1**](DomainAPIFindingRuleV1.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **status_since_timestamp** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIFindingWithRuleV1.new(
  evaluation_reason: null,
  host_id: null,
  rule: null,
  status: null,
  status_since_timestamp: null
)
```


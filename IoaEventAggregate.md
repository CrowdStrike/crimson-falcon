# Falcon::IoaEventAggregate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid_severity** | **Integer** |  | [optional] |
| **confidence** | **Integer** |  | [optional] |
| **count** | **Integer** |  | [optional] |
| **events** | **Array&lt;String&gt;** |  | [optional] |
| **first_timestamp** | **String** |  | [optional] |
| **join_keys** | **Array&lt;String&gt;** |  | [optional] |
| **last_timestamp** | **String** |  | [optional] |
| **resource** | [**Resource**](Resource.md) |  |  |
| **score** | **Integer** |  | [optional] |
| **threatintel** | [**DetectionAggregateThreatIntel**](DetectionAggregateThreatIntel.md) |  | [optional] |
| **timestamps** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::IoaEventAggregate.new(
  cid_severity: null,
  confidence: null,
  count: null,
  events: null,
  first_timestamp: null,
  join_keys: null,
  last_timestamp: null,
  resource: null,
  score: null,
  threatintel: null,
  timestamps: null
)
```


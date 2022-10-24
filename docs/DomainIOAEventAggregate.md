# Falcon::DomainIOAEventAggregate

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
| **score** | **Integer** |  | [optional] |
| **threatintel** | [**DetectionAggregateThreatIntel**](DetectionAggregateThreatIntel.md) |  | [optional] |
| **timestamps** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainIOAEventAggregate.new(
  cid_severity: null,
  confidence: null,
  count: null,
  events: null,
  first_timestamp: null,
  join_keys: null,
  last_timestamp: null,
  score: null,
  threatintel: null,
  timestamps: null
)
```


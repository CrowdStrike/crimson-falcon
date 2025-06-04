# Falcon::ApiRuleSearchV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** |  |  |
| **lookback** | **String** |  |  |
| **outcome** | **String** |  |  |
| **trigger_mode** | **String** |  | [optional] |
| **use_ingest_time** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleSearchV1.new(
  filter: null,
  lookback: null,
  outcome: null,
  trigger_mode: null,
  use_ingest_time: null
)
```


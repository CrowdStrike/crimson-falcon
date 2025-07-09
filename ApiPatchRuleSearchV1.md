# Falcon::ApiPatchRuleSearchV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** |  | [optional] |
| **lookback** | **String** |  | [optional] |
| **outcome** | **String** |  | [optional] |
| **trigger_mode** | **String** |  |  |
| **use_ingest_time** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiPatchRuleSearchV1.new(
  filter: null,
  lookback: null,
  outcome: null,
  trigger_mode: null,
  use_ingest_time: null
)
```


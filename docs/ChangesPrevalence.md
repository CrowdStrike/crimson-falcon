# Falcon::ChangesPrevalence

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **computed_timestamp** | **String** |  |  |
| **current** | **String** | Possible values: PENDING, UNIQUE, LOW, COMMON. |  |
| **key** | **String** |  |  |
| **reported** | **String** | Possible values: PENDING, UNIQUE, LOW, COMMON. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesPrevalence.new(
  computed_timestamp: null,
  current: null,
  key: null,
  reported: null
)
```


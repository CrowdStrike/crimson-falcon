# Falcon::DigestFlow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingest_time_known_good** | **Integer** | Latest known ingest time for digested data |  |
| **max_ingest_latency** | **Integer** | Maximum ingest latency for the returned data |  |
| **min_ingest_time_included** | **Integer** | Miniming ingest time for data included in the results |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DigestFlow.new(
  ingest_time_known_good: null,
  max_ingest_latency: null,
  min_ingest_time_included: null
)
```


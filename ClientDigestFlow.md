# Falcon::ClientDigestFlow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingest_time_known_good** | **Integer** |  |  |
| **max_ingest_latency** | **Integer** |  |  |
| **min_ingest_time_included** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientDigestFlow.new(
  ingest_time_known_good: null,
  max_ingest_latency: null,
  min_ingest_time_included: null
)
```


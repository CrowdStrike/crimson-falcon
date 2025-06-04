# Falcon::ApiQueryEventDistribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket_first_bucket** | **String** | Timestamp of the first bucket in the returned events |  |
| **bucket_last_bucket** | **String** | Timestamp of the last bucket in the returned events |  |
| **bucket_span_humanized** | **String** | Human-readable description of the bucket span |  |
| **bucket_span_millis** | **String** | Span of the returned buckets in milliseconds |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiQueryEventDistribution.new(
  bucket_first_bucket: null,
  bucket_last_bucket: null,
  bucket_span_humanized: null,
  bucket_span_millis: null
)
```


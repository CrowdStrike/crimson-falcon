# Falcon::DetectionAggregateIndicator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actors** | **Array&lt;String&gt;** |  | [optional] |
| **first_seen** | **Time** |  | [optional] |
| **malicious_ip** | **Boolean** |  | [optional] |
| **malware_families** | **Array&lt;String&gt;** |  | [optional] |
| **modified_at** | **Time** |  | [optional] |
| **type** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectionAggregateIndicator.new(
  actors: null,
  first_seen: null,
  malicious_ip: null,
  malware_families: null,
  modified_at: null,
  type: null,
  value: null
)
```


# Falcon::DataclassificationsTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **labels** | [**Hash&lt;String, DataclassificationsLabel&gt;**](DataclassificationsLabel.md) |  |  |
| **last_seen** | **Time** |  |  |
| **tag_id** | **String** |  |  |
| **tag_name** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DataclassificationsTag.new(
  labels: null,
  last_seen: null,
  tag_id: null,
  tag_name: null
)
```


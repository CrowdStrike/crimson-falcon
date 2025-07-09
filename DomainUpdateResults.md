# Falcon::DomainUpdateResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detections_unchanged** | **Array&lt;String&gt;** |  | [optional] |
| **detections_updated** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainUpdateResults.new(
  detections_unchanged: null,
  detections_updated: null
)
```


# Falcon::DomainCVSSv2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_score** | **Float** |  |  |
| **exploitability_score** | **Float** |  | [optional] |
| **impact_score** | **Float** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **vector** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCVSSv2.new(
  base_score: null,
  exploitability_score: null,
  impact_score: null,
  severity: null,
  vector: null
)
```


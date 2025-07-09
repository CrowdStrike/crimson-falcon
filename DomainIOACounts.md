# Falcon::DomainIOACounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **critical** | **Float** |  |  |
| **high** | **Float** |  |  |
| **informational** | **Float** |  | [optional] |
| **low** | **Float** |  | [optional] |
| **medium** | **Float** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainIOACounts.new(
  critical: null,
  high: null,
  informational: null,
  low: null,
  medium: null
)
```


# Falcon::FalconxSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attack_id** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **identifier** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **origin** | **String** |  | [optional] |
| **relevance** | **Integer** |  | [optional] |
| **threat_level** | **Integer** |  | [optional] |
| **threat_level_human** | **String** |  | [optional] |
| **type** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxSignature.new(
  attack_id: null,
  category: null,
  description: null,
  identifier: null,
  name: null,
  origin: null,
  relevance: null,
  threat_level: null,
  threat_level_human: null,
  type: null
)
```


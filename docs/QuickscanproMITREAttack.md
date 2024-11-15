# Falcon::QuickscanproMITREAttack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attack_id** | **String** |  | [optional] |
| **attack_id_wiki** | **String** |  | [optional] |
| **capec_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **parent** | [**QuickscanproMITREAttackParent**](QuickscanproMITREAttackParent.md) |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuickscanproMITREAttack.new(
  attack_id: null,
  attack_id_wiki: null,
  capec_id: null,
  description: null,
  parent: null,
  tactic: null,
  technique: null
)
```


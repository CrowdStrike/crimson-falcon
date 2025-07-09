# Falcon::FalconxMITREAttack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attack_id** | **String** |  | [optional] |
| **attack_id_wiki** | **String** |  | [optional] |
| **informative_identifiers** | **Array&lt;String&gt;** |  | [optional] |
| **malicious_identifiers** | **Array&lt;String&gt;** |  | [optional] |
| **parent** | [**FalconxMITREAttackParent**](FalconxMITREAttackParent.md) |  | [optional] |
| **suspicious_identifiers** | **Array&lt;String&gt;** |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxMITREAttack.new(
  attack_id: null,
  attack_id_wiki: null,
  informative_identifiers: null,
  malicious_identifiers: null,
  parent: null,
  suspicious_identifiers: null,
  tactic: null,
  technique: null
)
```


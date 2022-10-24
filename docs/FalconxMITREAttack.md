# Falcon::FalconxMITREAttack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attack_id** | **String** |  | [optional] |
| **informative_identifiers** | **Array&lt;String&gt;** |  | [optional] |
| **malicious_identifiers** | **Array&lt;String&gt;** |  | [optional] |
| **suspicious_identifiers** | **Array&lt;String&gt;** |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxMITREAttack.new(
  attack_id: null,
  informative_identifiers: null,
  malicious_identifiers: null,
  suspicious_identifiers: null,
  tactic: null,
  technique: null
)
```


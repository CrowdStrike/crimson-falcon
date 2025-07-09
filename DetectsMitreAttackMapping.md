# Falcon::DetectsMitreAttackMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pattern_id** | **Integer** | Pattern ID for the pattern seen in the Alert | [optional] |
| **tactic** | **String** | Tactic and Technique are references to MITRE ATT&amp;CK, which is a public framework for tracking and modeling adversary tools techniques and procedures | [optional] |
| **tactic_id** | **String** | Unique ID for the tactic seen in the Alert | [optional] |
| **technique** | **String** | Tactic and Technique are references to MITRE ATT&amp;CK, which is a public framework for tracking and modeling adversary tools techniques and procedures | [optional] |
| **technique_id** | **String** | Unique ID for the technique seen in the Alert | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsMitreAttackMapping.new(
  pattern_id: null,
  tactic: null,
  tactic_id: null,
  technique: null,
  technique_id: null
)
```


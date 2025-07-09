# Falcon::DomainCVSSv3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attack_complexity** | **String** |  | [optional] |
| **attack_vector** | **String** |  | [optional] |
| **availability_impact** | **String** |  | [optional] |
| **base_score** | **Float** |  |  |
| **confidentiality_impact** | **String** |  | [optional] |
| **exploitability_score** | **Float** |  | [optional] |
| **impact_score** | **Float** |  | [optional] |
| **integrity_impact** | **String** |  | [optional] |
| **privileges_required** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **user_interaction** | **String** |  | [optional] |
| **vector** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCVSSv3.new(
  attack_complexity: null,
  attack_vector: null,
  availability_impact: null,
  base_score: null,
  confidentiality_impact: null,
  exploitability_score: null,
  impact_score: null,
  integrity_impact: null,
  privileges_required: null,
  scope: null,
  severity: null,
  user_interaction: null,
  vector: null
)
```


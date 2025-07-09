# Falcon::DomainDenormalizedThreatUsedMitre

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attack_id** | **String** |  | [optional] |
| **observables** | **Array&lt;String&gt;** |  | [optional] |
| **reports** | [**Array&lt;DomainDenormalizedReportReference&gt;**](DomainDenormalizedReportReference.md) |  | [optional] |
| **tactic_id** | **String** |  | [optional] |
| **tactic_name** | **String** |  | [optional] |
| **technique_id** | **String** |  | [optional] |
| **technique_name** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDenormalizedThreatUsedMitre.new(
  attack_id: null,
  observables: null,
  reports: null,
  tactic_id: null,
  tactic_name: null,
  technique_id: null,
  technique_name: null
)
```


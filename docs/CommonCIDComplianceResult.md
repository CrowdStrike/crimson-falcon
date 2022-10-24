# Falcon::CommonCIDComplianceResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **average_overall_score** | **Float** |  |  |
| **cid** | **String** |  |  |
| **num_aids** | **Integer** |  |  |
| **platforms** | [**Array&lt;CommonOSCompliance&gt;**](CommonOSCompliance.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::CommonCIDComplianceResult.new(
  average_overall_score: null,
  cid: null,
  num_aids: null,
  platforms: null
)
```


# Falcon::CommonCIDAuditResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **average_overall_score** | **Float** |  |  |
| **cid** | **String** |  |  |
| **num_aids** | **Integer** |  |  |
| **platforms** | [**Array&lt;CommonOSAudit&gt;**](CommonOSAudit.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::CommonCIDAuditResult.new(
  average_overall_score: null,
  cid: null,
  num_aids: null,
  platforms: null
)
```


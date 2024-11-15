# Falcon::QuickscanproScanResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beta_intelligence_context** | **Object** |  | [optional] |
| **file_artifacts** | [**Array&lt;QuickscanproFileResult&gt;**](QuickscanproFileResult.md) |  |  |
| **mitre_attacks** | [**Array&lt;QuickscanproMITREAttack&gt;**](QuickscanproMITREAttack.md) |  | [optional] |
| **url_artifacts** | [**Array&lt;QuickscanproURLResult&gt;**](QuickscanproURLResult.md) |  | [optional] |
| **verdict** | **String** |  |  |
| **verdict_reason** | **String** |  |  |
| **verdict_source** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuickscanproScanResult.new(
  beta_intelligence_context: null,
  file_artifacts: null,
  mitre_attacks: null,
  url_artifacts: null,
  verdict: null,
  verdict_reason: null,
  verdict_source: null
)
```


# Falcon::ModelsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **level** | **String** |  |  |
| **locations** | [**Array&lt;ModelsResultLocation&gt;**](ModelsResultLocation.md) |  |  |
| **message** | [**ModelsMessage**](ModelsMessage.md) |  |  |
| **partial_fingerprints** | [**ModelsPartialFingerprints**](ModelsPartialFingerprints.md) |  |  |
| **properties** | [**ModelsResultProperties**](ModelsResultProperties.md) |  |  |
| **rule_id** | **String** |  |  |
| **rule_index** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsResult.new(
  kind: null,
  level: null,
  locations: null,
  message: null,
  partial_fingerprints: null,
  properties: null,
  rule_id: null,
  rule_index: null
)
```


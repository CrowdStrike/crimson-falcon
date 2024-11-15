# Falcon::ThreatgraphVertexDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**ThreatgraphMeta**](ThreatgraphMeta.md) |  |  |
| **resources** | [**Array&lt;ThreatgraphVertexDetails&gt;**](ThreatgraphVertexDetails.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ThreatgraphVertexDetailsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


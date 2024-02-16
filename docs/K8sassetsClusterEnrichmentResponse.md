# Falcon::K8sassetsClusterEnrichmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrichment_data** | [**Array&lt;K8sassetsClusterEnrichmentEntry&gt;**](K8sassetsClusterEnrichmentEntry.md) |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sassetsClusterEnrichmentResponse.new(
  enrichment_data: null,
  errors: null,
  meta: null
)
```


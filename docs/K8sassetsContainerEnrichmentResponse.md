# Falcon::K8sassetsContainerEnrichmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrichment_data** | [**Array&lt;K8sassetsContainerEnrichmentEntry&gt;**](K8sassetsContainerEnrichmentEntry.md) |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sassetsContainerEnrichmentResponse.new(
  enrichment_data: null,
  errors: null,
  meta: null
)
```


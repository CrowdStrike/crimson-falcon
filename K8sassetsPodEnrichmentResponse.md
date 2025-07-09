# Falcon::K8sassetsPodEnrichmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrichment_data** | [**Array&lt;K8sassetsPodEnrichmentEntry&gt;**](K8sassetsPodEnrichmentEntry.md) |  |  |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sassetsPodEnrichmentResponse.new(
  enrichment_data: null,
  errors: null,
  meta: null
)
```


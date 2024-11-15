# Falcon::K8sassetsNodeEnrichmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrichment_data** | [**Array&lt;K8sassetsNodeEnrichmentEntry&gt;**](K8sassetsNodeEnrichmentEntry.md) |  |  |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sassetsNodeEnrichmentResponse.new(
  enrichment_data: null,
  errors: null,
  meta: null
)
```


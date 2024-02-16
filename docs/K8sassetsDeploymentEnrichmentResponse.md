# Falcon::K8sassetsDeploymentEnrichmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrichment_data** | [**Array&lt;K8sassetsDeploymentEnrichmentEntry&gt;**](K8sassetsDeploymentEnrichmentEntry.md) |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sassetsDeploymentEnrichmentResponse.new(
  enrichment_data: null,
  errors: null,
  meta: null
)
```


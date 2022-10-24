# Falcon::DetectionInventoryEnrichment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_ids** | **Array&lt;String&gt;** |  | [optional] |
| **enrichment_type** | **String** |  | [optional] |
| **host** | [**Array&lt;DetectionEnrichmentHost&gt;**](DetectionEnrichmentHost.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DetectionInventoryEnrichment.new(
  document_ids: null,
  enrichment_type: null,
  host: null
)
```


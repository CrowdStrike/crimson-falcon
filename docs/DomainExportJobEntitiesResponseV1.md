# Falcon::DomainExportJobEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;ReconmsaAPIError&gt;**](ReconmsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainExportJobMetadataV1&gt;**](DomainExportJobMetadataV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExportJobEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


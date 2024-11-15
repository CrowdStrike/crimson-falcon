# Falcon::DomainLaunchExportJobResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;ReconmsaAPIError&gt;**](ReconmsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainExportJobV1&gt;**](DomainExportJobV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainLaunchExportJobResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainExportJobIDResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;ReconmsaAPIError&gt;**](ReconmsaAPIError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExportJobIDResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::MsaFacetsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MsaFacet&gt;**](MsaFacet.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MsaFacetsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


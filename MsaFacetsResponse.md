# Falcon::MsaFacetsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


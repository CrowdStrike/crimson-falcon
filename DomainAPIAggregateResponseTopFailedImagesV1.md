# Falcon::DomainAPIAggregateResponseTopFailedImagesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIAggregateResponseTopFailedImagesV1Resources&gt;**](DomainAPIAggregateResponseTopFailedImagesV1Resources.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregateResponseTopFailedImagesV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


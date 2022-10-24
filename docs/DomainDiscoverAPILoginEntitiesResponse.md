# Falcon::DomainDiscoverAPILoginEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPILogin&gt;**](DomainDiscoverAPILogin.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDiscoverAPILoginEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


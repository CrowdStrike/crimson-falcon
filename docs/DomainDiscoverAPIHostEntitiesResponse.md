# Falcon::DomainDiscoverAPIHostEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPIHost&gt;**](DomainDiscoverAPIHost.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDiscoverAPIHostEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


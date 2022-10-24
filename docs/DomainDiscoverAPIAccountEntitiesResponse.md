# Falcon::DomainDiscoverAPIAccountEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPIAccount&gt;**](DomainDiscoverAPIAccount.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDiscoverAPIAccountEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


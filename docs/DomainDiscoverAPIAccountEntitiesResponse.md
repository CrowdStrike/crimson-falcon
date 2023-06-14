# Falcon::DomainDiscoverAPIAccountEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPIAccount&gt;**](DomainDiscoverAPIAccount.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIAccountEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


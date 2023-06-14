# Falcon::DomainDiscoverAPIApplicationEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPIApplication&gt;**](DomainDiscoverAPIApplication.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIApplicationEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


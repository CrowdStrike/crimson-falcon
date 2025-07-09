# Falcon::DomainDiscoverAPICombinedHostsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**DomainDiscoverAPIMetaInfo**](DomainDiscoverAPIMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPIHost&gt;**](DomainDiscoverAPIHost.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPICombinedHostsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


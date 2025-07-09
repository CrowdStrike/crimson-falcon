# Falcon::DomainDiscoverAPICombinedApplicationsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**DomainDiscoverAPIMetaInfo**](DomainDiscoverAPIMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPIApplication&gt;**](DomainDiscoverAPIApplication.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPICombinedApplicationsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DomainSPAPICombinedVulnerabilitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**DomainSPAPIQueryMeta**](DomainSPAPIQueryMeta.md) |  |  |
| **resources** | [**Array&lt;DomainBaseAPIVulnerabilityV2&gt;**](DomainBaseAPIVulnerabilityV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSPAPICombinedVulnerabilitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


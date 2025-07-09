# Falcon::DomainSPAPIVulnerabilitiesEntitiesResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**DomainMetaInfo**](DomainMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIVulnerabilityV2&gt;**](DomainAPIVulnerabilityV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSPAPIVulnerabilitiesEntitiesResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


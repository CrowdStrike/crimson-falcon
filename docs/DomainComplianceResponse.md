# Falcon::DomainComplianceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**DomainMetaInfo**](DomainMetaInfo.md) |  |  |
| **resources** | [**Array&lt;CommonCIDComplianceResult&gt;**](CommonCIDComplianceResult.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainComplianceResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


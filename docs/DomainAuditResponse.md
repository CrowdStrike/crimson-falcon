# Falcon::DomainAuditResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**DomainMetaInfo**](DomainMetaInfo.md) |  |  |
| **resources** | [**Array&lt;CommonCIDAuditResult&gt;**](CommonCIDAuditResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAuditResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


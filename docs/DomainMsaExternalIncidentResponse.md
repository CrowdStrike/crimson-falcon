# Falcon::DomainMsaExternalIncidentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainIncident&gt;**](DomainIncident.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMsaExternalIncidentResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


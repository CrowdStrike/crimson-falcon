# Falcon::RegistrationGCPAccountResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainGCPAccountV1&gt;**](DomainGCPAccountV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationGCPAccountResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::RegistrationAzureAccountResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAzureAccountV1&gt;**](DomainAzureAccountV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationAzureAccountResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


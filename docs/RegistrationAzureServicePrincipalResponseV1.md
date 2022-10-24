# Falcon::RegistrationAzureServicePrincipalResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAzureClientServicePrincipalV1&gt;**](DomainAzureClientServicePrincipalV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationAzureServicePrincipalResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


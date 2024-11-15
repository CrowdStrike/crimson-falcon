# Falcon::RegistrationAWSAccountResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAWSAccountV2&gt;**](DomainAWSAccountV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAWSAccountResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


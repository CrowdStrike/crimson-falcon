# Falcon::RegistrationAzureDownloadCertificateResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationAzureKeyV1&gt;**](RegistrationAzureKeyV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAzureDownloadCertificateResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


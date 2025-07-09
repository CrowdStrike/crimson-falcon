# Falcon::RegistrationAzureProvisionGetUserScriptResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationAzureUserScript&gt;**](RegistrationAzureUserScript.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAzureProvisionGetUserScriptResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::RegistrationAWSProvisionGetAccountScriptResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationAWSAccountScript&gt;**](RegistrationAWSAccountScript.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationAWSProvisionGetAccountScriptResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


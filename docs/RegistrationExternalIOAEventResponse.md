# Falcon::RegistrationExternalIOAEventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**RegistrationMSAMetaInfoExtension**](RegistrationMSAMetaInfoExtension.md) |  |  |
| **resources** | [**RegistrationExternalIOAResources**](RegistrationExternalIOAResources.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationExternalIOAEventResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


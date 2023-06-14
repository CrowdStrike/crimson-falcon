# Falcon::RegistrationExternalIOAEventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**RegistrationMSAMetaInfoExtension**](RegistrationMSAMetaInfoExtension.md) |  |  |
| **resources** | [**RegistrationExternalIOAResources**](RegistrationExternalIOAResources.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationExternalIOAEventResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


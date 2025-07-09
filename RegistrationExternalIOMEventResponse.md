# Falcon::RegistrationExternalIOMEventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**RegistrationMSAMetaInfoExtension**](RegistrationMSAMetaInfoExtension.md) |  |  |
| **resources** | [**RegistrationIOMResources**](RegistrationIOMResources.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationExternalIOMEventResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


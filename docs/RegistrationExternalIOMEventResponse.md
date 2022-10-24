# Falcon::RegistrationExternalIOMEventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**RegistrationMSAMetaInfoExtension**](RegistrationMSAMetaInfoExtension.md) |  |  |
| **resources** | [**RegistrationIOMResources**](RegistrationIOMResources.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationExternalIOMEventResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


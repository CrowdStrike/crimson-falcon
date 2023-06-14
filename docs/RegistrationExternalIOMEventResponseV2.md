# Falcon::RegistrationExternalIOMEventResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationIOMEventV2&gt;**](RegistrationIOMEventV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationExternalIOMEventResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


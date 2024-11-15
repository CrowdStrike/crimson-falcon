# Falcon::RegistrationGCPAccountValidationResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationGCPAccountValidatedV1&gt;**](RegistrationGCPAccountValidatedV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationGCPAccountValidationResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::RegistrationGCPServiceAccountValidationResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationGCPServiceAccountExtV1&gt;**](RegistrationGCPServiceAccountExtV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationGCPServiceAccountValidationResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


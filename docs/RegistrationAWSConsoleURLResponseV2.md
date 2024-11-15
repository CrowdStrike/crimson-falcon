# Falcon::RegistrationAWSConsoleURLResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationAWSAccountConsoleURL&gt;**](RegistrationAWSAccountConsoleURL.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAWSConsoleURLResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```

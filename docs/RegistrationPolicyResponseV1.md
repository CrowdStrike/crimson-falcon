# Falcon::RegistrationPolicyResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainPolicyInfo&gt;**](DomainPolicyInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationPolicyResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


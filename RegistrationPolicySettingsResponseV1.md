# Falcon::RegistrationPolicySettingsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainCIDPolicyAssignments&gt;**](DomainCIDPolicyAssignments.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationPolicySettingsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::RegistrationIOAUserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainIOAUser&gt;**](DomainIOAUser.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationIOAUserResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


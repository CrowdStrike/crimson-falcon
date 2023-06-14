# Falcon::DomainRegistryCredentialsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainCredentials&gt;**](DomainCredentials.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainRegistryCredentialsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


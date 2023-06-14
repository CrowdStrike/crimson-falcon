# Falcon::ApiUserRoleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUserRole&gt;**](DomainUserRole.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiUserRoleResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


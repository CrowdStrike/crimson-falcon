# Falcon::DomainCIDGroupsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainCIDGroup&gt;**](DomainCIDGroup.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCIDGroupsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


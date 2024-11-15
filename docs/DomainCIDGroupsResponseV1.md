# Falcon::DomainCIDGroupsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


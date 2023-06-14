# Falcon::HostGroupsRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;HostGroupsHostGroupV1&gt;**](HostGroupsHostGroupV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::HostGroupsRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


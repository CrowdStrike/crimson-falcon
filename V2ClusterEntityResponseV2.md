# Falcon::V2ClusterEntityResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;V2ClusterV2&gt;**](V2ClusterV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2ClusterEntityResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```


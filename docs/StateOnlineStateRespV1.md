# Falcon::StateOnlineStateRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;StateOnlineStateResultV1&gt;**](StateOnlineStateResultV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::StateOnlineStateRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


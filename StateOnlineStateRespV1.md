# Falcon::StateOnlineStateRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


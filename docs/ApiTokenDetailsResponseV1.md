# Falcon::ApiTokenDetailsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiTokenDetailsResourceV1&gt;**](ApiTokenDetailsResourceV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiTokenDetailsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


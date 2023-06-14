# Falcon::MsaReplyAffectedEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MsaAffectedEntity&gt;**](MsaAffectedEntity.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MsaReplyAffectedEntities.new(
  errors: null,
  meta: null,
  resources: null
)
```


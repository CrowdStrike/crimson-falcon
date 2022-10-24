# Falcon::MsaReplyAffectedEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MsaAffectedEntity&gt;**](MsaAffectedEntity.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MsaReplyAffectedEntities.new(
  errors: null,
  meta: null,
  resources: null
)
```


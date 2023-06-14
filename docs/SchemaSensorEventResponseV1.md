# Falcon::SchemaSensorEventResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;SchemaSensorEvent&gt;**](SchemaSensorEvent.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SchemaSensorEventResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


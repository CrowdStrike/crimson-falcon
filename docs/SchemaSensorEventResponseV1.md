# Falcon::SchemaSensorEventResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


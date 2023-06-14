# Falcon::SchemaSensorFieldResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;SchemaSensorField&gt;**](SchemaSensorField.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SchemaSensorFieldResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


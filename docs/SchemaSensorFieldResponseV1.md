# Falcon::SchemaSensorFieldResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


# Falcon::DefinitionsDefinitionImportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DefinitionsDefinitionImportResponseEntity&gt;**](DefinitionsDefinitionImportResponseEntity.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DefinitionsDefinitionImportResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


# Falcon::DefinitionsDefinitionImportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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


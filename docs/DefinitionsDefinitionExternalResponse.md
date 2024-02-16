# Falcon::DefinitionsDefinitionExternalResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DefinitionsDefinitionExt&gt;**](DefinitionsDefinitionExt.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DefinitionsDefinitionExternalResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```


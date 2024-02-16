# Falcon::DefinitionsDefinitionImportResponseEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **model** | [**GraphDefinitionModel**](GraphDefinitionModel.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **parameters** | [**Array&lt;DefinitionsPlaybookParameter&gt;**](DefinitionsPlaybookParameter.md) |  |  |
| **validation_errors** | [**Array&lt;GraphValidationError&gt;**](GraphValidationError.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DefinitionsDefinitionImportResponseEntity.new(
  description: null,
  id: null,
  model: null,
  name: null,
  parameters: null,
  validation_errors: null
)
```


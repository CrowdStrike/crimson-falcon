# Falcon::DefinitionsPlaybookParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node_id** | **String** | id of the node in the model where the parameter needs to be applied |  |
| **properties** | [**Array&lt;DefinitionsParameterProperty&gt;**](DefinitionsParameterProperty.md) | list of properties that need to be parameterized |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DefinitionsPlaybookParameter.new(
  node_id: null,
  properties: null
)
```


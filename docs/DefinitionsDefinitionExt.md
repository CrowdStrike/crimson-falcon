# Falcon::DefinitionsDefinitionExt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **definition** | [**V2Definition**](V2Definition.md) |  |  |
| **enabled** | **Boolean** | Indicates whether the workflow is enabled and active or not. |  |
| **id** | **String** | Unique identifier for the trigger. |  |
| **last_modified_timestamp** | **Time** | Timestamp of when this version of the workflow was created. |  |
| **version** | **Integer** | Version of the workflow. A given definition ID can have many versions. Each time an update is applied a new version is generated. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DefinitionsDefinitionExt.new(
  definition: null,
  enabled: null,
  id: null,
  last_modified_timestamp: null,
  version: null
)
```


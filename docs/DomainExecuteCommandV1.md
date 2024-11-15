# Falcon::DomainExecuteCommandV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_auth_type** | **String** | Config auth type for plugin to execute. Only applicable for oneOf security scheme plugins. If not provided, it will use the default auth type on the config |  |
| **config_id** | **String** | ConfigID for plugin to execute. If omitted, the oldest config will be used as part of the execution. |  |
| **definition_id** | **String** | ID of the definition containing the operation to execute.&#39; |  |
| **id** | **String** | ID of the specific plugin to execute, in the format &#39;definition_name.operation_name&#39; |  |
| **operation_id** | **String** | The specific operation to execute. |  |
| **request** | [**DomainRequest**](DomainRequest.md) |  |  |
| **version** | **Integer** | The version of the definition to execute. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExecuteCommandV1.new(
  config_auth_type: null,
  config_id: null,
  definition_id: null,
  id: null,
  operation_id: null,
  request: null,
  version: null
)
```


# Falcon::ClientSystemDefinitionProvisionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Optional name to be set on the customer scope definition. Must be unique within a given CID. |  |
| **parameters** | [**ParameterTemplateProvisionParameters**](ParameterTemplateProvisionParameters.md) |  |  |
| **template_id** | **String** | ID of the system definition template that was previously created |  |
| **template_name** | **String** | Name of the system definition template to provision |  |
| **template_version** | **String** | Version of system definition template that was previously created, if omitted the latest version will be used. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientSystemDefinitionProvisionRequest.new(
  name: null,
  parameters: null,
  template_id: null,
  template_name: null,
  template_version: null
)
```


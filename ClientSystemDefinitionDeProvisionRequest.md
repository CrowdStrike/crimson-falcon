# Falcon::ClientSystemDefinitionDeProvisionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **definition_id** | **String** | Customer scoped definition ID that is being deprovisioned. This is required when the template is defined as multi-instance |  |
| **deprovision_all** | **Boolean** | When enabled, the CustomerDefinitionID property is ignored and all template workflows are deprovisioned |  |
| **template_id** | **String** | ID of the system definition template that is to be deprovisioned |  |
| **template_name** | **String** | Name of the system definition template to deprovision |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientSystemDefinitionDeProvisionRequest.new(
  definition_id: null,
  deprovision_all: null,
  template_id: null,
  template_name: null
)
```


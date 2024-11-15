# Falcon::TypesDeploymentUnitDescriptor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**TypesStruct**](TypesStruct.md) |  | [optional] |
| **related_services** | [**Array&lt;TypesDeploymentUnitService&gt;**](TypesDeploymentUnitService.md) |  | [optional] |
| **type** | **Integer** |  | [optional] |
| **unique_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesDeploymentUnitDescriptor.new(
  data: null,
  related_services: null,
  type: null,
  unique_id: null
)
```


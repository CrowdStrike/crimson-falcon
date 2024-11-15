# Falcon::TypesDependency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connection_type** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **interface_count** | **Integer** |  | [optional] |
| **network_interface_count** | **Integer** |  | [optional] |
| **port** | **Integer** |  | [optional] |
| **real_interface_count** | **Integer** |  | [optional] |
| **service** | [**TypesInterfaceService**](TypesInterfaceService.md) |  | [optional] |
| **technology_type** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesDependency.new(
  connection_type: null,
  direction: null,
  id: null,
  interface_count: null,
  network_interface_count: null,
  port: null,
  real_interface_count: null,
  service: null,
  technology_type: null
)
```


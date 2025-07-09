# Falcon::TypesGetServicesRelatedEntityFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_du_services** | **Boolean** |  | [optional] |
| **only_du_types** | **Boolean** |  | [optional] |
| **only_get_brokers** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGetServicesRelatedEntityFilters.new(
  include_du_services: null,
  only_du_types: null,
  only_get_brokers: null
)
```


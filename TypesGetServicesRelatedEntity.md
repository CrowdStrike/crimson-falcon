# Falcon::TypesGetServicesRelatedEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregation_type** | **Integer** |  | [optional] |
| **entity_type** | **Integer** |  | [optional] |
| **filters** | [**TypesGetServicesRelatedEntityFilters**](TypesGetServicesRelatedEntityFilters.md) |  | [optional] |
| **group_by_fields** | [**TypesGetServicesRelatedEntityGroupByFields**](TypesGetServicesRelatedEntityGroupByFields.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGetServicesRelatedEntity.new(
  aggregation_type: null,
  entity_type: null,
  filters: null,
  group_by_fields: null
)
```


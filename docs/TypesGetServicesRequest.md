# Falcon::TypesGetServicesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cids** | **Array&lt;String&gt;** |  | [optional] |
| **deployment_tuple_filters** | [**Array&lt;TypesDeploymentUnitsTupleFilters&gt;**](TypesDeploymentUnitsTupleFilters.md) |  | [optional] |
| **nesting_level** | **Integer** |  | [optional] |
| **only_count** | **Boolean** |  | [optional] |
| **optional_time** | **Integer** |  | [optional] |
| **pagination** | [**TypesPagination**](TypesPagination.md) |  | [optional] |
| **persistent_signatures** | **Array&lt;String&gt;** |  | [optional] |
| **ql_filters** | **String** |  | [optional] |
| **related_entities** | [**Array&lt;TypesGetServicesRelatedEntity&gt;**](TypesGetServicesRelatedEntity.md) |  | [optional] |
| **revision_id** | **Integer** |  | [optional] |
| **roles_signature** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGetServicesRequest.new(
  cids: null,
  deployment_tuple_filters: null,
  nesting_level: null,
  only_count: null,
  optional_time: null,
  pagination: null,
  persistent_signatures: null,
  ql_filters: null,
  related_entities: null,
  revision_id: null,
  roles_signature: null
)
```


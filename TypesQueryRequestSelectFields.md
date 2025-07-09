# Falcon::TypesQueryRequestSelectFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | **Array&lt;String&gt;** |  | [optional] |
| **service_fields** | **Array&lt;String&gt;** |  | [optional] |
| **without_services** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesQueryRequestSelectFields.new(
  fields: null,
  service_fields: null,
  without_services: null
)
```


# Falcon::TypesUpdateIntegrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration** | [**TypesIntegration**](TypesIntegration.md) |  | [optional] |
| **overwrite_fields** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesUpdateIntegrationRequest.new(
  integration: null,
  overwrite_fields: null
)
```


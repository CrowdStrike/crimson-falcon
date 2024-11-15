# Falcon::TypesTagData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automations** | **Array&lt;String&gt;** |  | [optional] |
| **classifiers** | **Array&lt;String&gt;** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **service_count** | **Integer** |  | [optional] |
| **tag** | [**TypesTag**](TypesTag.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesTagData.new(
  automations: null,
  classifiers: null,
  is_default: null,
  service_count: null,
  tag: null
)
```


# Falcon::GraphMulti

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array_field** | **String** | Name of the field that contains the array in input data |  |
| **array_field_display_name** | **String** | Display name of the field that contains the array in input data |  |
| **continue_on_partial_execution** | **Boolean** | If true will allow the workflow to continue execution even if some loop iterations fail or when there are no iterations to execute |  |
| **max_iteration_count** | **Integer** | Maximum number of iterations allowed in sub model |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphMulti.new(
  array_field: null,
  array_field_display_name: null,
  continue_on_partial_execution: null,
  max_iteration_count: null
)
```


# Falcon::GraphMulti

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array_field** | **String** | Name of the field that contains the array in input data |  |
| **array_field_display_name** | **String** | Display name of the field that contains the array in input data |  |
| **condition** | [**GraphCondition**](GraphCondition.md) |  | [optional] |
| **continue_on_partial_execution** | **Boolean** | If true will allow the workflow to continue execution even if some loop iterations fail or when there are no iterations to execute |  |
| **max_execution_seconds** | **Integer** | Maximum number of seconds the submodel will run for, if this is exceeded no new iterations will run. If unset a default value is used during execution |  |
| **max_iteration_count** | **Integer** | Maximum number of iterations allowed in sub model |  |
| **sequential** | **Boolean** | Indicates the loop will run sequentially | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphMulti.new(
  array_field: null,
  array_field_display_name: null,
  condition: null,
  continue_on_partial_execution: null,
  max_execution_seconds: null,
  max_iteration_count: null,
  sequential: null
)
```


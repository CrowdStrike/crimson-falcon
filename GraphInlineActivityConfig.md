# Falcon::GraphInlineActivityConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | **Object** | A map containing an activity configuration for an inline action. | [optional] |
| **input_schema** | [**JsonschemaSchema**](JsonschemaSchema.md) |  | [optional] |
| **output_schema** | [**JsonschemaSchema**](JsonschemaSchema.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphInlineActivityConfig.new(
  config: null,
  input_schema: null,
  output_schema: null
)
```


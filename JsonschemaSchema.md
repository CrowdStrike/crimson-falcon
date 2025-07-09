# Falcon::JsonschemaSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sub_schema** | [**JsonschemaSubSchema**](JsonschemaSubSchema.md) |  |  |
| **definitions** | [**Hash&lt;String, JsonschemaSubSchema&gt;**](JsonschemaSubSchema.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::JsonschemaSchema.new(
  sub_schema: null,
  definitions: null
)
```


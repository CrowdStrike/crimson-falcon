# Falcon::ModelsMockExecutionCreateRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **definition** | [**ModelsDefinitionCreateRequestV2**](ModelsDefinitionCreateRequestV2.md) |  | [optional] |
| **mocks** | **String** | Mock activity data and trigger data for non-on-demand executions, keyed by node ID, may include trigger and/or activity nodes |  |
| **on_demand_trigger** | **String** | Trigger data for on-demand executions | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsMockExecutionCreateRequestV1.new(
  definition: null,
  mocks: null,
  on_demand_trigger: null
)
```


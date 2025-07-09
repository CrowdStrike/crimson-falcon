# Falcon::DeploymentsAPIDeploymentRingView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **complete_timestamp** | **Time** |  | [optional] |
| **gates** | **Array&lt;Object&gt;** |  | [optional] |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **ramping_schedule** | **Array&lt;Integer&gt;** |  | [optional] |
| **start_timestamp** | **Time** |  | [optional] |
| **threshold** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeploymentsAPIDeploymentRingView.new(
  complete_timestamp: null,
  gates: null,
  id: null,
  name: null,
  ramping_schedule: null,
  start_timestamp: null,
  threshold: null
)
```


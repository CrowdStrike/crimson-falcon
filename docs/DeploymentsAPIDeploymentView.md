# Falcon::DeploymentsAPIDeploymentView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **complete_timestamp** | **Time** |  | [optional] |
| **id** | **String** |  |  |
| **modified_by** | **String** |  | [optional] |
| **modified_timestamp** | **Time** |  | [optional] |
| **rings** | [**Array&lt;DeploymentsAPIDeploymentRingView&gt;**](DeploymentsAPIDeploymentRingView.md) |  | [optional] |
| **start_timestamp** | **Time** |  | [optional] |
| **status** | **String** |  |  |
| **template_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeploymentsAPIDeploymentView.new(
  complete_timestamp: null,
  id: null,
  modified_by: null,
  modified_timestamp: null,
  rings: null,
  start_timestamp: null,
  status: null,
  template_id: null
)
```


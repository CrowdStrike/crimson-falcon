# Falcon::TypesServiceNowDeploymentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_units** | [**Array&lt;TypesServiceNowServiceDeployments&gt;**](TypesServiceNowServiceDeployments.md) |  |  |
| **error** | **String** |  |  |
| **total_deployments** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesServiceNowDeploymentsResponse.new(
  deployment_units: null,
  error: null,
  total_deployments: null
)
```


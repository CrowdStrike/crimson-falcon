# Falcon::TypesCreateExecutorNode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_header** | **String** |  | [optional] |
| **current_aws_arn** | **String** |  | [optional] |
| **dashboard_url** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **last_health_check** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **node_type** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **pod_settings** | [**TypesK8SPodSettings**](TypesK8SPodSettings.md) |  | [optional] |
| **proxy_address** | **String** |  | [optional] |
| **status** | [**TypesExecutorNodeStatus**](TypesExecutorNodeStatus.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **use_jobs** | **Boolean** |  | [optional] |
| **username** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesCreateExecutorNode.new(
  additional_header: null,
  current_aws_arn: null,
  dashboard_url: null,
  id: null,
  last_health_check: null,
  name: null,
  node_type: null,
  password: null,
  pod_settings: null,
  proxy_address: null,
  status: null,
  type: null,
  use_jobs: null,
  username: null
)
```


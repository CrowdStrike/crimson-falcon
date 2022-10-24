# Falcon::K8sregClusterResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **agent_version** | [**K8sregVersionResp**](K8sregVersionResp.md) |  |  |
| **cid** | **String** |  |  |
| **cluster_id** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **cluster_service** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **helm_version** | [**K8sregVersionResp**](K8sregVersionResp.md) |  |  |
| **k8s_version** | [**K8sregVersionResp**](K8sregVersionResp.md) |  |  |
| **last_heartbeat_at** | **Time** |  |  |
| **location** | **String** |  |  |
| **status** | **String** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::K8sregClusterResp.new(
  account_id: null,
  agent_version: null,
  cid: null,
  cluster_id: null,
  cluster_name: null,
  cluster_service: null,
  created_at: null,
  helm_version: null,
  k8s_version: null,
  last_heartbeat_at: null,
  location: null,
  status: null,
  updated_at: null
)
```


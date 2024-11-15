# Falcon::ModelsNode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agents** | **Array&lt;Hash&gt;** |  |  |
| **annotations_list** | **Array&lt;String&gt;** |  |  |
| **architecture** | **String** |  |  |
| **base_image** | **String** |  |  |
| **cid** | **String** |  |  |
| **cloud_account_id** | **String** |  |  |
| **cloud_instance_id** | **String** |  |  |
| **cloud_instance_type** | **String** |  |  |
| **cloud_name** | **String** |  |  |
| **cloud_region** | **String** |  |  |
| **cloud_service** | **String** |  |  |
| **cluster_id** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **container_count** | **Integer** |  |  |
| **container_runtime_version** | **String** |  |  |
| **cpu** | **String** |  |  |
| **created_at** | **String** |  |  |
| **deleted_at** | **String** |  | [optional] |
| **external_ip** | **String** |  |  |
| **first_seen** | **String** |  |  |
| **ipv4** | **String** |  |  |
| **ipv6** | **String** |  |  |
| **kac_agent_id** | **String** |  |  |
| **kernel_version** | **String** |  |  |
| **kubernetes_version** | **String** |  |  |
| **labels** | **Hash&lt;String, String&gt;** |  |  |
| **labels_list** | **Array&lt;String&gt;** |  |  |
| **last_seen** | **String** |  |  |
| **linux_sensor_coverage** | **Boolean** |  |  |
| **memory** | **String** |  |  |
| **node_id** | **String** |  |  |
| **node_name** | **String** |  |  |
| **os** | **String** |  |  |
| **pod_cidr** | **String** |  |  |
| **pod_count** | **Integer** |  |  |
| **provider_id** | **String** |  |  |
| **resource_status** | **String** |  |  |
| **storage** | **String** |  |  |
| **uid** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsNode.new(
  agents: null,
  annotations_list: null,
  architecture: null,
  base_image: null,
  cid: null,
  cloud_account_id: null,
  cloud_instance_id: null,
  cloud_instance_type: null,
  cloud_name: null,
  cloud_region: null,
  cloud_service: null,
  cluster_id: null,
  cluster_name: null,
  container_count: null,
  container_runtime_version: null,
  cpu: null,
  created_at: null,
  deleted_at: null,
  external_ip: null,
  first_seen: null,
  ipv4: null,
  ipv6: null,
  kac_agent_id: null,
  kernel_version: null,
  kubernetes_version: null,
  labels: null,
  labels_list: null,
  last_seen: null,
  linux_sensor_coverage: null,
  memory: null,
  node_id: null,
  node_name: null,
  os: null,
  pod_cidr: null,
  pod_count: null,
  provider_id: null,
  resource_status: null,
  storage: null,
  uid: null
)
```


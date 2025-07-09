# Falcon::ModelsPod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agents** | **Array&lt;Hash&gt;** |  |  |
| **allow_privilege_escalation** | **Boolean** |  |  |
| **annotations_list** | **Array&lt;String&gt;** |  |  |
| **app_name** | **String** |  |  |
| **automount_service_token** | **Boolean** |  |  |
| **cid** | **String** |  |  |
| **cloud_account_id** | **String** |  |  |
| **cloud_name** | **String** |  |  |
| **cloud_region** | **String** |  |  |
| **cloud_service** | **String** |  |  |
| **cluster_id** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **container_count** | **Integer** |  |  |
| **containers** | **Array&lt;Hash&gt;** |  |  |
| **created_at** | **String** |  |  |
| **deleted_at** | **String** |  | [optional] |
| **first_seen** | **String** |  |  |
| **host_ipc** | **Boolean** |  |  |
| **host_network** | **Boolean** |  |  |
| **host_pid** | **Boolean** |  |  |
| **image_pull_secrets** | **Array&lt;String&gt;** |  |  |
| **ipv4** | **String** |  |  |
| **ipv6** | **String** |  |  |
| **kac_agent_id** | **String** |  |  |
| **labels** | **Hash&lt;String, String&gt;** |  |  |
| **labels_list** | **Array&lt;String&gt;** |  |  |
| **last_seen** | **String** |  |  |
| **namespace** | **String** |  |  |
| **node_ipv4** | **String** |  |  |
| **node_name** | **String** |  |  |
| **node_selector** | **String** |  |  |
| **node_uid** | **String** |  |  |
| **owner_id** | **String** |  |  |
| **owner_type** | **String** |  |  |
| **pod_external_id** | **String** |  |  |
| **pod_id** | **String** |  |  |
| **pod_name** | **String** |  |  |
| **ports** | **Array&lt;Hash&gt;** |  |  |
| **privileged** | **Boolean** |  |  |
| **resource_status** | **String** |  |  |
| **root_write_access** | **Boolean** |  |  |
| **run_as_root_group** | **Boolean** |  |  |
| **run_as_root_user** | **Boolean** |  |  |
| **scheduler_name** | **String** |  |  |
| **service_account_name** | **String** |  |  |
| **share_process_namespace** | **Boolean** |  |  |
| **volume_mounts** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsPod.new(
  agents: null,
  allow_privilege_escalation: null,
  annotations_list: null,
  app_name: null,
  automount_service_token: null,
  cid: null,
  cloud_account_id: null,
  cloud_name: null,
  cloud_region: null,
  cloud_service: null,
  cluster_id: null,
  cluster_name: null,
  container_count: null,
  containers: null,
  created_at: null,
  deleted_at: null,
  first_seen: null,
  host_ipc: null,
  host_network: null,
  host_pid: null,
  image_pull_secrets: null,
  ipv4: null,
  ipv6: null,
  kac_agent_id: null,
  labels: null,
  labels_list: null,
  last_seen: null,
  namespace: null,
  node_ipv4: null,
  node_name: null,
  node_selector: null,
  node_uid: null,
  owner_id: null,
  owner_type: null,
  pod_external_id: null,
  pod_id: null,
  pod_name: null,
  ports: null,
  privileged: null,
  resource_status: null,
  root_write_access: null,
  run_as_root_group: null,
  run_as_root_user: null,
  scheduler_name: null,
  service_account_name: null,
  share_process_namespace: null,
  volume_mounts: null
)
```


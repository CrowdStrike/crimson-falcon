# Falcon::ModelsContainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agents** | **Array&lt;Hash&gt;** |  |  |
| **allow_privilege_escalation** | **Boolean** |  |  |
| **cid** | **String** |  |  |
| **cloud_account_id** | **String** |  |  |
| **cloud_instance_id** | **String** |  |  |
| **cloud_name** | **String** |  |  |
| **cloud_region** | **String** |  |  |
| **cloud_service** | **String** |  |  |
| **cluster_id** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **config_labels** | **String** |  |  |
| **container_id** | **String** |  |  |
| **container_name** | **String** |  |  |
| **created_at** | **String** |  |  |
| **first_seen** | **String** |  |  |
| **image_application_package_count** | **Integer** |  |  |
| **image_assessed_at** | **Integer** |  |  |
| **image_detection_count** | **Integer** |  |  |
| **image_digest** | **String** |  |  |
| **image_has_been_assessed** | **Boolean** |  |  |
| **image_highest_severity_vulnerability** | **String** |  |  |
| **image_id** | **String** |  |  |
| **image_package_count** | **Integer** |  |  |
| **image_registry** | **String** |  |  |
| **image_repository** | **String** |  |  |
| **image_tag** | **String** |  |  |
| **image_vulnerability_count** | **Integer** |  |  |
| **insecure_mount_source** | **String** |  |  |
| **insecure_mount_type** | **String** |  |  |
| **insecure_propagation_mode** | **Boolean** |  |  |
| **interactive_mode** | **Boolean** |  |  |
| **ipv4** | **String** |  |  |
| **ipv6** | **String** |  |  |
| **kac_agent_id** | **String** |  |  |
| **labels** | **Hash&lt;String, String&gt;** |  |  |
| **labels_list** | **Array&lt;String&gt;** |  |  |
| **last_seen** | **String** |  |  |
| **namespace** | **String** |  |  |
| **node_name** | **String** |  |  |
| **node_uid** | **String** |  |  |
| **pod_id** | **String** |  |  |
| **pod_name** | **String** |  |  |
| **ports** | **Array&lt;Hash&gt;** |  |  |
| **privileged** | **Boolean** |  |  |
| **root_write_access** | **Boolean** |  |  |
| **run_as_root_group** | **Boolean** |  |  |
| **run_as_root_user** | **Boolean** |  |  |
| **running_status** | **Boolean** |  |  |
| **volume_mounts** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsContainer.new(
  agents: null,
  allow_privilege_escalation: null,
  cid: null,
  cloud_account_id: null,
  cloud_instance_id: null,
  cloud_name: null,
  cloud_region: null,
  cloud_service: null,
  cluster_id: null,
  cluster_name: null,
  config_labels: null,
  container_id: null,
  container_name: null,
  created_at: null,
  first_seen: null,
  image_application_package_count: null,
  image_assessed_at: null,
  image_detection_count: null,
  image_digest: null,
  image_has_been_assessed: null,
  image_highest_severity_vulnerability: null,
  image_id: null,
  image_package_count: null,
  image_registry: null,
  image_repository: null,
  image_tag: null,
  image_vulnerability_count: null,
  insecure_mount_source: null,
  insecure_mount_type: null,
  insecure_propagation_mode: null,
  interactive_mode: null,
  ipv4: null,
  ipv6: null,
  kac_agent_id: null,
  labels: null,
  labels_list: null,
  last_seen: null,
  namespace: null,
  node_name: null,
  node_uid: null,
  pod_id: null,
  pod_name: null,
  ports: null,
  privileged: null,
  root_write_access: null,
  run_as_root_group: null,
  run_as_root_user: null,
  running_status: null,
  volume_mounts: null
)
```


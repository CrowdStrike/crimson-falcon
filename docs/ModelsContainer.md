# Falcon::ModelsContainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agents** | **Array&lt;Hash&gt;** |  | [optional] |
| **allow_privilege_escalation** | **Boolean** |  | [optional] |
| **cid** | **String** |  |  |
| **cloud** | **String** |  | [optional] |
| **cloud_account_id** | **String** |  | [optional] |
| **cloud_region** | **String** |  | [optional] |
| **cluster_id** | **String** |  | [optional] |
| **cluster_name** | **String** |  | [optional] |
| **config_labels** | **String** |  | [optional] |
| **config_user** | **String** |  | [optional] |
| **container_image_id** | **String** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **cve_ids** | **Array&lt;String&gt;** |  | [optional] |
| **first_seen** | **String** |  | [optional] |
| **host_config_devices** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **image_application_package_count** | **Integer** |  | [optional] |
| **image_assessed_at** | **Integer** |  | [optional] |
| **image_detection_count** | **Integer** |  | [optional] |
| **image_detection_id_list** | **Array&lt;String&gt;** |  | [optional] |
| **image_detection_name_list** | **Array&lt;String&gt;** |  | [optional] |
| **image_detection_severity_by_type** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **image_digest** | **String** |  | [optional] |
| **image_has_been_assessed** | **Boolean** |  | [optional] |
| **image_highest_severity_vulnerability** | **String** |  | [optional] |
| **image_id** | **String** |  | [optional] |
| **image_package_count** | **Integer** |  | [optional] |
| **image_registry** | **String** |  | [optional] |
| **image_repo** | **String** |  | [optional] |
| **image_tag** | **String** |  | [optional] |
| **image_vulnerability_count** | **Integer** |  | [optional] |
| **image_vulnerability_severity_by_type** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **insecure_mount_source** | **String** |  | [optional] |
| **insecure_mount_type** | **String** |  | [optional] |
| **insecure_propagation_mode** | **Boolean** |  | [optional] |
| **interactive_mode** | **Boolean** |  | [optional] |
| **ipv4** | **String** |  | [optional] |
| **ipv6** | **String** |  | [optional] |
| **kpa_coverage** | **Boolean** |  | [optional] |
| **labels** | **Hash&lt;String, String&gt;** |  | [optional] |
| **labels_list** | **Array&lt;String&gt;** |  | [optional] |
| **last_seen** | **String** |  | [optional] |
| **linux_sensor_aid** | **String** |  | [optional] |
| **linux_sensor_config_build** | **String** |  | [optional] |
| **linux_sensor_coverage** | **Boolean** |  | [optional] |
| **lumos_sensor_aid** | **String** |  | [optional] |
| **lumos_sensor_config_build** | **String** |  | [optional] |
| **lumos_sensor_coverage** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **namespace** | **String** |  | [optional] |
| **node_id** | **String** |  | [optional] |
| **node_name** | **String** |  | [optional] |
| **pod_id** | **String** |  | [optional] |
| **pod_name** | **String** |  | [optional] |
| **port_list** | **Array&lt;Hash&gt;** |  | [optional] |
| **privileged** | **Boolean** |  | [optional] |
| **root_write_access** | **Boolean** |  | [optional] |
| **rpd** | **Array&lt;Integer&gt;** |  | [optional] |
| **run_as_root_group** | **Boolean** |  | [optional] |
| **run_as_root_user** | **Boolean** |  | [optional] |
| **running_status** | **Boolean** |  | [optional] |
| **snapshot_coverage** | **Boolean** |  | [optional] |
| **unidentified** | **Boolean** |  | [optional] |
| **volume_mounts** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsContainer.new(
  agents: null,
  allow_privilege_escalation: null,
  cid: null,
  cloud: null,
  cloud_account_id: null,
  cloud_region: null,
  cluster_id: null,
  cluster_name: null,
  config_labels: null,
  config_user: null,
  container_image_id: null,
  created_at: null,
  cve_ids: null,
  first_seen: null,
  host_config_devices: null,
  id: null,
  image_application_package_count: null,
  image_assessed_at: null,
  image_detection_count: null,
  image_detection_id_list: null,
  image_detection_name_list: null,
  image_detection_severity_by_type: null,
  image_digest: null,
  image_has_been_assessed: null,
  image_highest_severity_vulnerability: null,
  image_id: null,
  image_package_count: null,
  image_registry: null,
  image_repo: null,
  image_tag: null,
  image_vulnerability_count: null,
  image_vulnerability_severity_by_type: null,
  insecure_mount_source: null,
  insecure_mount_type: null,
  insecure_propagation_mode: null,
  interactive_mode: null,
  ipv4: null,
  ipv6: null,
  kpa_coverage: null,
  labels: null,
  labels_list: null,
  last_seen: null,
  linux_sensor_aid: null,
  linux_sensor_config_build: null,
  linux_sensor_coverage: null,
  lumos_sensor_aid: null,
  lumos_sensor_config_build: null,
  lumos_sensor_coverage: null,
  name: null,
  namespace: null,
  node_id: null,
  node_name: null,
  pod_id: null,
  pod_name: null,
  port_list: null,
  privileged: null,
  root_write_access: null,
  rpd: null,
  run_as_root_group: null,
  run_as_root_user: null,
  running_status: null,
  snapshot_coverage: null,
  unidentified: null,
  volume_mounts: null
)
```


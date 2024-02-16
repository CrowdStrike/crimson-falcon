# Falcon::ModelsAPIRuntimeDetection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_taken** | **String** |  |  |
| **agent_type** | **String** |  |  |
| **aid** | **String** |  |  |
| **assigned_to** | **String** |  |  |
| **cid** | **String** |  |  |
| **cloud** | **String** |  |  |
| **cloud_account_id** | **String** |  |  |
| **cloud_id** | **String** |  |  |
| **cloud_instance_id** | **String** |  |  |
| **cloud_name** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **command_line** | **String** |  |  |
| **computer_name** | **String** |  |  |
| **container_devices** | **Array&lt;String&gt;** |  |  |
| **container_id** | **String** |  |  |
| **container_interactive_mode** | **String** |  |  |
| **container_name** | **String** |  |  |
| **container_network_ip_address** | **String** |  |  |
| **container_privileged** | **String** |  |  |
| **container_read_only_root_fs** | **String** |  |  |
| **container_user_info** | **String** |  |  |
| **containers_impacted_count** | **String** |  |  |
| **detect_timestamp** | **String** |  |  |
| **detection_description** | **String** |  |  |
| **detection_id** | **String** |  |  |
| **detection_name** | **Array&lt;String&gt;** |  |  |
| **executable_sha_256** | **String** |  |  |
| **file_name** | **String** |  |  |
| **file_path** | **String** |  |  |
| **host_containers_count** | **String** |  |  |
| **host_detections_count** | **String** |  |  |
| **host_detections_ids** | **Array&lt;String&gt;** |  |  |
| **host_id** | **String** |  |  |
| **host_last_seen_timestamp** | **String** |  |  |
| **host_type** | **String** |  |  |
| **image_digest** | **String** |  |  |
| **image_first_seen_timestamp** | **String** |  |  |
| **image_id** | **String** |  |  |
| **image_label** | **String** |  |  |
| **image_last_seen_timestamp** | **String** |  |  |
| **image_maintainer** | **String** |  |  |
| **image_name** | **String** |  |  |
| **images_container_count** | **String** |  |  |
| **namespace** | **String** |  |  |
| **network_ip_address** | **String** |  |  |
| **os_version** | **String** |  |  |
| **pod_id** | **String** |  |  |
| **pod_name** | **String** |  |  |
| **pod_namespace** | **String** |  |  |
| **sensor_version** | **String** |  |  |
| **severity** | **String** |  |  |
| **tactic_and_technique** | **String** |  |  |
| **type** | **String** |  |  |
| **vulnerabilities_count** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIRuntimeDetection.new(
  action_taken: null,
  agent_type: null,
  aid: null,
  assigned_to: null,
  cid: null,
  cloud: null,
  cloud_account_id: null,
  cloud_id: null,
  cloud_instance_id: null,
  cloud_name: null,
  cluster_name: null,
  command_line: null,
  computer_name: null,
  container_devices: null,
  container_id: null,
  container_interactive_mode: null,
  container_name: null,
  container_network_ip_address: null,
  container_privileged: null,
  container_read_only_root_fs: null,
  container_user_info: null,
  containers_impacted_count: null,
  detect_timestamp: null,
  detection_description: null,
  detection_id: null,
  detection_name: null,
  executable_sha_256: null,
  file_name: null,
  file_path: null,
  host_containers_count: null,
  host_detections_count: null,
  host_detections_ids: null,
  host_id: null,
  host_last_seen_timestamp: null,
  host_type: null,
  image_digest: null,
  image_first_seen_timestamp: null,
  image_id: null,
  image_label: null,
  image_last_seen_timestamp: null,
  image_maintainer: null,
  image_name: null,
  images_container_count: null,
  namespace: null,
  network_ip_address: null,
  os_version: null,
  pod_id: null,
  pod_name: null,
  pod_namespace: null,
  sensor_version: null,
  severity: null,
  tactic_and_technique: null,
  type: null,
  vulnerabilities_count: null
)
```


# Falcon::DeviceapiDeviceSwagger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_load_flags** | **String** |  | [optional] |
| **agent_local_time** | **String** |  | [optional] |
| **agent_version** | **String** |  | [optional] |
| **base_image_version** | **String** |  | [optional] |
| **bios_manufacturer** | **String** |  | [optional] |
| **bios_version** | **String** |  | [optional] |
| **build_number** | **String** |  | [optional] |
| **chassis_type** | **String** |  | [optional] |
| **chassis_type_desc** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **config_id_base** | **String** |  | [optional] |
| **config_id_build** | **String** |  | [optional] |
| **config_id_platform** | **String** |  | [optional] |
| **connection_ip** | **String** |  | [optional] |
| **connection_mac_address** | **String** |  | [optional] |
| **cpu_signature** | **String** |  | [optional] |
| **cpu_vendor** | **String** |  | [optional] |
| **default_gateway_ip** | **String** |  | [optional] |
| **deployment_type** | **String** |  | [optional] |
| **detection_suppression_status** | **String** |  | [optional] |
| **device_id** | **String** |  |  |
| **device_policies** | [**DeviceMappedDevicePolicies**](DeviceMappedDevicePolicies.md) |  | [optional] |
| **email** | **String** |  | [optional] |
| **external_ip** | **String** |  | [optional] |
| **filesystem_containment_status** | **String** |  | [optional] |
| **first_login_timestamp** | **String** |  | [optional] |
| **first_seen** | **String** |  | [optional] |
| **group_hash** | **String** |  | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **host_hidden_status** | **String** |  | [optional] |
| **host_utc_offset** | **String** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **instance_id** | **String** |  | [optional] |
| **internet_exposure** | **String** |  | [optional] |
| **k8s_cluster_git_version** | **String** |  | [optional] |
| **k8s_cluster_id** | **String** |  | [optional] |
| **k8s_cluster_version** | **String** |  | [optional] |
| **kernel_version** | **String** |  | [optional] |
| **last_login_timestamp** | **String** |  | [optional] |
| **last_login_uid** | **String** |  | [optional] |
| **last_login_user** | **String** |  | [optional] |
| **last_login_user_sid** | **String** |  | [optional] |
| **last_reboot** | **String** |  | [optional] |
| **last_seen** | **String** |  | [optional] |
| **linux_sensor_mode** | **String** |  | [optional] |
| **local_ip** | **String** |  | [optional] |
| **mac_address** | **String** |  | [optional] |
| **machine_domain** | **String** |  | [optional] |
| **major_version** | **String** |  | [optional] |
| **managed_apps** | [**DeviceManagedApps**](DeviceManagedApps.md) |  | [optional] |
| **meta** | [**DeviceDeviceMeta**](DeviceDeviceMeta.md) |  | [optional] |
| **migration_completed_time** | **String** |  | [optional] |
| **minor_version** | **String** |  | [optional] |
| **modified_timestamp** | **String** |  | [optional] |
| **notes** | **Array&lt;String&gt;** |  | [optional] |
| **os_build** | **String** |  | [optional] |
| **os_product_name** | **String** |  | [optional] |
| **os_version** | **String** |  | [optional] |
| **ou** | **Array&lt;String&gt;** |  | [optional] |
| **platform_id** | **String** |  | [optional] |
| **platform_name** | **String** |  | [optional] |
| **pod_annotations** | **Array&lt;String&gt;** |  | [optional] |
| **pod_host_ip4** | **String** |  | [optional] |
| **pod_host_ip6** | **String** |  | [optional] |
| **pod_hostname** | **String** |  | [optional] |
| **pod_id** | **String** |  | [optional] |
| **pod_ip4** | **String** |  | [optional] |
| **pod_ip6** | **String** |  | [optional] |
| **pod_labels** | **Array&lt;String&gt;** |  | [optional] |
| **pod_name** | **String** |  | [optional] |
| **pod_namespace** | **String** |  | [optional] |
| **pod_service_account_name** | **String** |  | [optional] |
| **pointer_size** | **String** |  | [optional] |
| **policies** | [**Array&lt;DeviceDevicePolicy&gt;**](DeviceDevicePolicy.md) |  | [optional] |
| **product_type** | **String** |  | [optional] |
| **product_type_desc** | **String** |  | [optional] |
| **provision_status** | **String** |  | [optional] |
| **reduced_functionality_mode** | **String** |  | [optional] |
| **release_group** | **String** |  | [optional] |
| **rtr_state** | **String** |  | [optional] |
| **serial_number** | **String** |  | [optional] |
| **service_pack_major** | **String** |  | [optional] |
| **service_pack_minor** | **String** |  | [optional] |
| **service_provider** | **String** |  | [optional] |
| **service_provider_account_id** | **String** |  | [optional] |
| **site_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **system_manufacturer** | **String** |  | [optional] |
| **system_product_name** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **zone_group** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceapiDeviceSwagger.new(
  agent_load_flags: null,
  agent_local_time: null,
  agent_version: null,
  base_image_version: null,
  bios_manufacturer: null,
  bios_version: null,
  build_number: null,
  chassis_type: null,
  chassis_type_desc: null,
  cid: null,
  config_id_base: null,
  config_id_build: null,
  config_id_platform: null,
  connection_ip: null,
  connection_mac_address: null,
  cpu_signature: null,
  cpu_vendor: null,
  default_gateway_ip: null,
  deployment_type: null,
  detection_suppression_status: null,
  device_id: null,
  device_policies: null,
  email: null,
  external_ip: null,
  filesystem_containment_status: null,
  first_login_timestamp: null,
  first_seen: null,
  group_hash: null,
  groups: null,
  host_hidden_status: null,
  host_utc_offset: null,
  hostname: null,
  instance_id: null,
  internet_exposure: null,
  k8s_cluster_git_version: null,
  k8s_cluster_id: null,
  k8s_cluster_version: null,
  kernel_version: null,
  last_login_timestamp: null,
  last_login_uid: null,
  last_login_user: null,
  last_login_user_sid: null,
  last_reboot: null,
  last_seen: null,
  linux_sensor_mode: null,
  local_ip: null,
  mac_address: null,
  machine_domain: null,
  major_version: null,
  managed_apps: null,
  meta: null,
  migration_completed_time: null,
  minor_version: null,
  modified_timestamp: null,
  notes: null,
  os_build: null,
  os_product_name: null,
  os_version: null,
  ou: null,
  platform_id: null,
  platform_name: null,
  pod_annotations: null,
  pod_host_ip4: null,
  pod_host_ip6: null,
  pod_hostname: null,
  pod_id: null,
  pod_ip4: null,
  pod_ip6: null,
  pod_labels: null,
  pod_name: null,
  pod_namespace: null,
  pod_service_account_name: null,
  pointer_size: null,
  policies: null,
  product_type: null,
  product_type_desc: null,
  provision_status: null,
  reduced_functionality_mode: null,
  release_group: null,
  rtr_state: null,
  serial_number: null,
  service_pack_major: null,
  service_pack_minor: null,
  service_provider: null,
  service_provider_account_id: null,
  site_name: null,
  status: null,
  system_manufacturer: null,
  system_product_name: null,
  tags: null,
  zone_group: null
)
```


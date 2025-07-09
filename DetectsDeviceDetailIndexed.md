# Falcon::DetectsDeviceDetailIndexed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_load_flags** | **String** |  | [optional] |
| **agent_local_time** | **String** |  | [optional] |
| **agent_version** | **String** |  | [optional] |
| **bios_manufacturer** | **String** |  | [optional] |
| **bios_version** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **config_id_base** | **String** |  | [optional] |
| **config_id_build** | **String** |  | [optional] |
| **config_id_platform** | **String** |  | [optional] |
| **device_id** | **String** |  |  |
| **external_ip** | **String** |  | [optional] |
| **first_login_timestamp** | **String** |  | [optional] |
| **first_login_user** | **String** |  | [optional] |
| **first_seen** | **String** |  | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **instance_id** | **String** |  | [optional] |
| **last_login_timestamp** | **String** |  | [optional] |
| **last_login_user** | **String** |  | [optional] |
| **last_seen** | **String** |  | [optional] |
| **local_ip** | **String** |  | [optional] |
| **mac_address** | **String** |  | [optional] |
| **machine_domain** | **String** |  | [optional] |
| **major_version** | **String** |  | [optional] |
| **minor_version** | **String** |  | [optional] |
| **modified_timestamp** | **String** |  | [optional] |
| **notes** | **Array&lt;String&gt;** |  | [optional] |
| **os_version** | **String** |  | [optional] |
| **ou** | **Array&lt;String&gt;** |  | [optional] |
| **platform_id** | **String** |  | [optional] |
| **platform_name** | **String** |  | [optional] |
| **pod_id** | **String** |  | [optional] |
| **pod_labels** | **Array&lt;String&gt;** |  | [optional] |
| **pod_name** | **String** |  | [optional] |
| **pod_namespace** | **String** |  | [optional] |
| **pod_service_account_name** | **String** |  | [optional] |
| **product_type** | **String** |  | [optional] |
| **product_type_desc** | **String** |  | [optional] |
| **release_group** | **String** |  | [optional] |
| **service_provider** | **String** |  | [optional] |
| **service_provider_account_id** | **String** |  | [optional] |
| **site_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **system_manufacturer** | **String** |  | [optional] |
| **system_product_name** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsDeviceDetailIndexed.new(
  agent_load_flags: null,
  agent_local_time: null,
  agent_version: null,
  bios_manufacturer: null,
  bios_version: null,
  cid: null,
  config_id_base: null,
  config_id_build: null,
  config_id_platform: null,
  device_id: null,
  external_ip: null,
  first_login_timestamp: null,
  first_login_user: null,
  first_seen: null,
  groups: null,
  hostname: null,
  instance_id: null,
  last_login_timestamp: null,
  last_login_user: null,
  last_seen: null,
  local_ip: null,
  mac_address: null,
  machine_domain: null,
  major_version: null,
  minor_version: null,
  modified_timestamp: null,
  notes: null,
  os_version: null,
  ou: null,
  platform_id: null,
  platform_name: null,
  pod_id: null,
  pod_labels: null,
  pod_name: null,
  pod_namespace: null,
  pod_service_account_name: null,
  product_type: null,
  product_type_desc: null,
  release_group: null,
  service_provider: null,
  service_provider_account_id: null,
  site_name: null,
  status: null,
  system_manufacturer: null,
  system_product_name: null,
  tags: null
)
```


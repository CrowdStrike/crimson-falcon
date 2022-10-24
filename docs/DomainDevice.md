# Falcon::DomainDevice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_id_numeric** | **Integer** |  |  |
| **agent_version** | **String** |  | [optional] |
| **config_id_base** | **String** |  | [optional] |
| **config_id_build** | **String** |  | [optional] |
| **config_id_platform** | **String** |  | [optional] |
| **device_id** | **String** |  |  |
| **external_ip** | **String** |  | [optional] |
| **first_login_timestamp** | **String** |  | [optional] |
| **first_login_user** | **String** |  | [optional] |
| **first_seen** | **String** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **last_login_timestamp** | **String** |  | [optional] |
| **last_login_user** | **String** |  | [optional] |
| **last_seen** | **String** |  | [optional] |
| **last_seen_ago_seconds** | **Integer** |  | [optional] |
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
| **product_type** | **String** |  | [optional] |
| **product_type_desc** | **String** |  | [optional] |
| **release_group** | **String** |  | [optional] |
| **site_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **system_manufacturer** | **String** |  | [optional] |
| **system_product_name** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDevice.new(
  platform_id_numeric: null,
  agent_version: null,
  config_id_base: null,
  config_id_build: null,
  config_id_platform: null,
  device_id: null,
  external_ip: null,
  first_login_timestamp: null,
  first_login_user: null,
  first_seen: null,
  hostname: null,
  last_login_timestamp: null,
  last_login_user: null,
  last_seen: null,
  last_seen_ago_seconds: null,
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
  product_type: null,
  product_type_desc: null,
  release_group: null,
  site_name: null,
  status: null,
  system_manufacturer: null,
  system_product_name: null,
  tags: null
)
```


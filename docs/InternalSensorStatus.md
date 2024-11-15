# Falcon::InternalSensorStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_version** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **device_id** | **String** |  |  |
| **heartbeat_time** | **Integer** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **idp_policy_id** | **String** |  | [optional] |
| **idp_policy_name** | **String** |  | [optional] |
| **kerberos_config** | **String** |  | [optional] |
| **ldap_config** | **String** |  | [optional] |
| **ldaps_config** | **String** |  | [optional] |
| **local_ip** | **String** |  | [optional] |
| **machine_domain** | **String** |  | [optional] |
| **ntlm_config** | **String** |  | [optional] |
| **os_version** | **String** |  | [optional] |
| **rdp_to_dc_config** | **String** |  | [optional] |
| **smb_to_dc_config** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **status_causes** | **Array&lt;String&gt;** |  | [optional] |
| **ti_enabled** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::InternalSensorStatus.new(
  agent_version: null,
  cid: null,
  device_id: null,
  heartbeat_time: null,
  hostname: null,
  idp_policy_id: null,
  idp_policy_name: null,
  kerberos_config: null,
  ldap_config: null,
  ldaps_config: null,
  local_ip: null,
  machine_domain: null,
  ntlm_config: null,
  os_version: null,
  rdp_to_dc_config: null,
  smb_to_dc_config: null,
  status: null,
  status_causes: null,
  ti_enabled: null
)
```


# Falcon::DevicecontrolapiRespPolicyV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignment_type** | **String** | Default or Automatic |  |
| **bluetooth_channel_version** | **Integer** | Bluetooth channel file version number | [optional] |
| **bluetooth_settings** | [**DevicecontrolapiBluetoothSettings**](DevicecontrolapiBluetoothSettings.md) |  | [optional] |
| **cid** | **String** | Customer ID of the policy |  |
| **created_by** | **String** | CS username who created the policy |  |
| **created_timestamp** | **String** | UTC time policy created |  |
| **description** | **String** | Description of the policy | [optional] |
| **enabled** | **Boolean** | Policy level enablement of the policy |  |
| **groups** | **Array&lt;String&gt;** | Host group IDs assigned to this policy |  |
| **id** | **String** | ID of the policy |  |
| **modified_by** | **String** | Last CS username who modified the policy |  |
| **modified_timestamp** | **String** | UTC time policy modified |  |
| **name** | **String** | Name of the policy |  |
| **platform_id** | **String** | The platform numeric value. Windows:0, MacOS:1 |  |
| **platform_name** | **String** | Policy platform name (Windows or Mac) |  |
| **precedence** | **Integer** | Order in which a policy is applied (lower values is higher precedence) |  |
| **settings_hash** | **String** | The hash of hostgroups assigned to the policy | [optional] |
| **usb_channel_version** | **Integer** | USB channel file version number |  |
| **usb_settings** | [**DevicecontrolapiRespUSBSettingsV2**](DevicecontrolapiRespUSBSettingsV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiRespPolicyV2.new(
  assignment_type: null,
  bluetooth_channel_version: null,
  bluetooth_settings: null,
  cid: null,
  created_by: null,
  created_timestamp: null,
  description: null,
  enabled: null,
  groups: null,
  id: null,
  modified_by: null,
  modified_timestamp: null,
  name: null,
  platform_id: null,
  platform_name: null,
  precedence: null,
  settings_hash: null,
  usb_channel_version: null,
  usb_settings: null
)
```


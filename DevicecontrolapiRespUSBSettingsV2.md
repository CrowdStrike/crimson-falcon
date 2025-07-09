# Falcon::DevicecontrolapiRespUSBSettingsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classes** | [**Array&lt;DevicecontrolapiRespUSBClassSettingsV2&gt;**](DevicecontrolapiRespUSBClassSettingsV2.md) | Array of USB classes |  |
| **custom_notifications** | [**DevicecontrolapiUSBCustomNotifications**](DevicecontrolapiUSBCustomNotifications.md) |  | [optional] |
| **end_user_notification** | **String** | Indicates whether the end-user notification will appear (SILENT or NOTIFY_USER) |  |
| **enforcement_mode** | **String** | Enforcement mode for the USB policy |  |
| **enhanced_file_metadata** | **Boolean** | Boolean value to enable file metadata |  |
| **whitelist_mode** | **String** | Indicates whether the policy will include whitelist exceptions (ENABLE_ALWAYS, DISABLE_VIRTUAL) | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiRespUSBSettingsV2.new(
  classes: null,
  custom_notifications: null,
  end_user_notification: null,
  enforcement_mode: null,
  enhanced_file_metadata: null,
  whitelist_mode: null
)
```


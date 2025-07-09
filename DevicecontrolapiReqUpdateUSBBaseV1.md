# Falcon::DevicecontrolapiReqUpdateUSBBaseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_notifications** | [**DevicecontrolapiUSBCustomNotifications**](DevicecontrolapiUSBCustomNotifications.md) |  | [optional] |
| **end_user_notification** | **String** | Determines if a notification will be shown to the end user (omit to keep current) | [optional] |
| **enforcement_mode** | **String** | Enforcement for the USB policy (omit to keep current) | [optional] |
| **enhanced_file_metadata** | **Boolean** |  | [optional] |
| **whitelist_mode** | **String** | Determines if the policy will include whitelist exceptions | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiReqUpdateUSBBaseV1.new(
  custom_notifications: null,
  end_user_notification: null,
  enforcement_mode: null,
  enhanced_file_metadata: null,
  whitelist_mode: null
)
```


# Falcon::DeviceControlSettingsReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classes** | [**Array&lt;DeviceControlUSBClassExceptionsReqV1&gt;**](DeviceControlUSBClassExceptionsReqV1.md) | Settings that apply to a USB Class |  |
| **custom_notifications** | [**DeviceControlUSBCustomNotifications**](DeviceControlUSBCustomNotifications.md) |  | [optional] |
| **delete_exceptions** | **Array&lt;String&gt;** | An array of exception IDs to delete from the policy |  |
| **end_user_notification** | **String** | Does the end user receives a notification when the policy is violated |  |
| **enforcement_mode** | **String** | How is this policy enforced |  |
| **enhanced_file_metadata** | **Boolean** | A bool value that enables file metadata functionality on the sensor or not | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlSettingsReqV1.new(
  classes: null,
  custom_notifications: null,
  delete_exceptions: null,
  end_user_notification: null,
  enforcement_mode: null,
  enhanced_file_metadata: null
)
```


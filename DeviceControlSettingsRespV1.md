# Falcon::DeviceControlSettingsRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classes** | [**Array&lt;DeviceControlUSBClassExceptionsResponse&gt;**](DeviceControlUSBClassExceptionsResponse.md) | List of class_settings this policy applies to |  |
| **custom_notifications** | [**DeviceControlUSBCustomNotifications**](DeviceControlUSBCustomNotifications.md) |  | [optional] |
| **end_user_notification** | **String** | Does the end user receives a notification when the policy is violated |  |
| **enforcement_mode** | **String** | [How] is this policy enforced |  |
| **enhanced_file_metadata** | **Boolean** | Is file metadata processor enabled or not? true|false |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlSettingsRespV1.new(
  classes: null,
  custom_notifications: null,
  end_user_notification: null,
  enforcement_mode: null,
  enhanced_file_metadata: null
)
```


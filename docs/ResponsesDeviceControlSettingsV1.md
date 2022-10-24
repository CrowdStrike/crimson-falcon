# Falcon::ResponsesDeviceControlSettingsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classes** | [**Array&lt;ResponsesDeviceControlPolicyClassSettingsV1&gt;**](ResponsesDeviceControlPolicyClassSettingsV1.md) | List of class_settings this policy applies to |  |
| **end_user_notification** | **String** | Does the end user receives a notification when the policy is violated |  |
| **enforcement_mode** | **String** | [How] is this policy enforced |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesDeviceControlSettingsV1.new(
  classes: null,
  end_user_notification: null,
  enforcement_mode: null
)
```


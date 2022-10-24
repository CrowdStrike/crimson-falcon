# Falcon::RequestsDeviceControlPolicySettingsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classes** | [**Array&lt;RequestsDeviceControlPolicyClassSettingsV1&gt;**](RequestsDeviceControlPolicyClassSettingsV1.md) | Settings that apply to a USB Class |  |
| **delete_exceptions** | **Array&lt;String&gt;** | An array of exception IDs to delete from the policy |  |
| **end_user_notification** | **String** | Does the end user receives a notification when the policy is violated |  |
| **enforcement_mode** | **String** | How is this policy enforced |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsDeviceControlPolicySettingsV1.new(
  classes: null,
  delete_exceptions: null,
  end_user_notification: null,
  enforcement_mode: null
)
```


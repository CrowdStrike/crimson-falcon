# Falcon::ResponsesDeviceControlPolicyClassSettingsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Policy action |  |
| **exceptions** | [**Array&lt;ResponsesDeviceControlPolicyExceptionV1&gt;**](ResponsesDeviceControlPolicyExceptionV1.md) | Exceptions to the rules of this policy setting |  |
| **id** | **String** | USB Class id |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesDeviceControlPolicyClassSettingsV1.new(
  action: null,
  exceptions: null,
  id: null
)
```


# Falcon::DeviceControlUSBCustomNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_message** | **String** | The notification to be displayed to the end-user |  |
| **use_custom** | **Boolean** | If the custom notification or the default notification is in-use |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlUSBCustomNotification.new(
  custom_message: null,
  use_custom: null
)
```


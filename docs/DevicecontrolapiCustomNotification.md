# Falcon::DevicecontrolapiCustomNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_message** | **String** | The message that will be shown to end users |  |
| **use_custom** | **Boolean** | Determines to use the custom or default end user notification |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiCustomNotification.new(
  custom_message: null,
  use_custom: null
)
```


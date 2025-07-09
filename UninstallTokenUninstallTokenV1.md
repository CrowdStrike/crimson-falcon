# Falcon::UninstallTokenUninstallTokenV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | The device the token belongs to |  |
| **seed_id** | **Integer** | The seedID of the uninstall token |  |
| **uninstall_token** | **String** | The uninstall token |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::UninstallTokenUninstallTokenV1.new(
  device_id: null,
  seed_id: null,
  uninstall_token: null
)
```


# Falcon::RequestsRevealUninstallTokenV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audit_message** | **String** | An optional message to append to the recorded audit log | [optional] |
| **device_id** | **String** | The id of the device to reveal the token for |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsRevealUninstallTokenV1.new(
  audit_message: null,
  device_id: null
)
```


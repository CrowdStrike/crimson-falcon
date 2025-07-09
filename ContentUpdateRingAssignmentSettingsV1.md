# Falcon::ContentUpdateRingAssignmentSettingsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delay_hours** | **String** |  |  |
| **id** | **String** |  |  |
| **override** | [**ContentUpdateRingAssignmentOverrideSettingV1**](ContentUpdateRingAssignmentOverrideSettingV1.md) |  |  |
| **pinned_content_version** | **String** |  |  |
| **ring_assignment** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ContentUpdateRingAssignmentSettingsV1.new(
  delay_hours: null,
  id: null,
  override: null,
  pinned_content_version: null,
  ring_assignment: null
)
```


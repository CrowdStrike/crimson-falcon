# Falcon::DeviceDevicePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied** | **Boolean** |  | [optional] |
| **applied_date** | **Time** |  | [optional] |
| **assigned_date** | **Time** |  | [optional] |
| **exempt** | **Boolean** |  | [optional] |
| **last_evaluation_date** | **Time** |  | [optional] |
| **policy_id** | **String** |  |  |
| **policy_type** | **String** |  |  |
| **rule_groups** | **Array&lt;String&gt;** |  | [optional] |
| **rule_set_id** | **String** |  | [optional] |
| **settings_hash** | **String** |  | [optional] |
| **uninstall_protection** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceDevicePolicy.new(
  applied: null,
  applied_date: null,
  assigned_date: null,
  exempt: null,
  last_evaluation_date: null,
  policy_id: null,
  policy_type: null,
  rule_groups: null,
  rule_set_id: null,
  settings_hash: null,
  uninstall_protection: null
)
```


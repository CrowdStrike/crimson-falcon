# Falcon::PatterndispositionPatternDisposition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blocking_unsupported_or_disabled** | **Boolean** |  |  |
| **bootup_safeguard_enabled** | **Boolean** |  |  |
| **critical_process_disabled** | **Boolean** |  |  |
| **detect** | **Boolean** |  |  |
| **fs_operation_blocked** | **Boolean** |  |  |
| **handle_operation_downgraded** | **Boolean** |  |  |
| **inddet_mask** | **Boolean** |  |  |
| **indicator** | **Boolean** |  |  |
| **kill_action_failed** | **Boolean** |  |  |
| **kill_parent** | **Boolean** |  |  |
| **kill_process** | **Boolean** |  |  |
| **kill_subprocess** | **Boolean** |  |  |
| **operation_blocked** | **Boolean** |  |  |
| **policy_disabled** | **Boolean** |  |  |
| **process_blocked** | **Boolean** |  |  |
| **quarantine_file** | **Boolean** |  |  |
| **quarantine_machine** | **Boolean** |  |  |
| **registry_operation_blocked** | **Boolean** |  |  |
| **rooting** | **Boolean** |  |  |
| **sensor_only** | **Boolean** |  |  |
| **suspend_parent** | **Boolean** |  |  |
| **suspend_process** | **Boolean** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PatterndispositionPatternDisposition.new(
  blocking_unsupported_or_disabled: null,
  bootup_safeguard_enabled: null,
  critical_process_disabled: null,
  detect: null,
  fs_operation_blocked: null,
  handle_operation_downgraded: null,
  inddet_mask: null,
  indicator: null,
  kill_action_failed: null,
  kill_parent: null,
  kill_process: null,
  kill_subprocess: null,
  operation_blocked: null,
  policy_disabled: null,
  process_blocked: null,
  quarantine_file: null,
  quarantine_machine: null,
  registry_operation_blocked: null,
  rooting: null,
  sensor_only: null,
  suspend_parent: null,
  suspend_process: null
)
```


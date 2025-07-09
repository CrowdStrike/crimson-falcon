# Falcon::PatterndispositionPatternDisposition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blocking_unsupported_or_disabled** | **Boolean** |  |  |
| **bootup_safeguard_enabled** | **Boolean** |  |  |
| **containment_file_system** | **Boolean** |  |  |
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
| **mfa_required** | **Boolean** |  |  |
| **operation_blocked** | **Boolean** |  |  |
| **policy_disabled** | **Boolean** |  |  |
| **prevention_provisioning_enabled** | **Boolean** |  |  |
| **process_blocked** | **Boolean** |  |  |
| **quarantine_file** | **Boolean** |  |  |
| **quarantine_machine** | **Boolean** |  |  |
| **registry_operation_blocked** | **Boolean** |  |  |
| **response_action_already_applied** | **Boolean** |  |  |
| **response_action_failed** | **Boolean** |  |  |
| **response_action_triggered** | **Boolean** |  |  |
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
  containment_file_system: null,
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
  mfa_required: null,
  operation_blocked: null,
  policy_disabled: null,
  prevention_provisioning_enabled: null,
  process_blocked: null,
  quarantine_file: null,
  quarantine_machine: null,
  registry_operation_blocked: null,
  response_action_already_applied: null,
  response_action_failed: null,
  response_action_triggered: null,
  rooting: null,
  sensor_only: null,
  suspend_parent: null,
  suspend_process: null
)
```


# Falcon::CloudontologyPatternDisposition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bootup_safeguard_enabled** | **Boolean** |  |  |
| **critical_process_disabled** | **Boolean** |  |  |
| **detect** | **Boolean** |  |  |
| **fs_operation_blocked** | **Boolean** |  |  |
| **inddet_mask** | **Boolean** |  |  |
| **indicator** | **Boolean** |  |  |
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

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::CloudontologyPatternDisposition.new(
  bootup_safeguard_enabled: null,
  critical_process_disabled: null,
  detect: null,
  fs_operation_blocked: null,
  inddet_mask: null,
  indicator: null,
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
  sensor_only: null
)
```


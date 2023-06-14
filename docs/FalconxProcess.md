# Falcon::FalconxProcess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amsi_calls** | [**Array&lt;FalconxAMSICall&gt;**](FalconxAMSICall.md) |  | [optional] |
| **command_line** | **String** |  | [optional] |
| **file_accesses** | [**Array&lt;FalconxFileAccess&gt;**](FalconxFileAccess.md) |  | [optional] |
| **handles** | [**Array&lt;FalconxHandle&gt;**](FalconxHandle.md) |  | [optional] |
| **icon_artifact_id** | **String** |  | [optional] |
| **mutants** | **Array&lt;String&gt;** |  | [optional] |
| **name** | **String** |  | [optional] |
| **normalized_path** | **String** |  | [optional] |
| **parent_uid** | **String** |  | [optional] |
| **pid** | **Integer** |  | [optional] |
| **process_flags** | [**Array&lt;FalconxProcessFlag&gt;**](FalconxProcessFlag.md) |  | [optional] |
| **registry** | [**Array&lt;FalconxRegistry&gt;**](FalconxRegistry.md) |  | [optional] |
| **script_calls** | [**Array&lt;FalconxScriptCall&gt;**](FalconxScriptCall.md) |  | [optional] |
| **sha256** | **String** |  | [optional] |
| **streams** | [**Array&lt;FalconxStream&gt;**](FalconxStream.md) |  | [optional] |
| **uid** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxProcess.new(
  amsi_calls: null,
  command_line: null,
  file_accesses: null,
  handles: null,
  icon_artifact_id: null,
  mutants: null,
  name: null,
  normalized_path: null,
  parent_uid: null,
  pid: null,
  process_flags: null,
  registry: null,
  script_calls: null,
  sha256: null,
  streams: null,
  uid: null
)
```


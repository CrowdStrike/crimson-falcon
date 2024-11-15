# Falcon::ModelsScanResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applications** | [**Array&lt;ModelsSnapshotInventoryApplication&gt;**](ModelsSnapshotInventoryApplication.md) |  |  |
| **containers** | [**Array&lt;ModelsContainer&gt;**](ModelsContainer.md) |  |  |
| **elf_binaries** | [**Array&lt;ModelsELFBinary&gt;**](ModelsELFBinary.md) |  |  |
| **os_version** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsScanResults.new(
  applications: null,
  containers: null,
  elf_binaries: null,
  os_version: null
)
```


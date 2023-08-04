# Falcon::ModelsSnapshotInventoryPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_metadata** | [**ModelsJobMetaData**](ModelsJobMetaData.md) |  |  |
| **results** | [**ModelsScanResults**](ModelsScanResults.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsSnapshotInventoryPayload.new(
  job_metadata: null,
  results: null
)
```


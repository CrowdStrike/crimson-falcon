# Falcon::ApiReportExecutionsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiReportExecutionV1&gt;**](ApiReportExecutionV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiReportExecutionsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


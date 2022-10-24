# Falcon::ApiScheduledReportsResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiScheduledReportV1&gt;**](ApiScheduledReportV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiScheduledReportsResultV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


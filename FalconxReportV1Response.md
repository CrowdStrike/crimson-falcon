# Falcon::FalconxReportV1Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**FalconxMetaInfo**](FalconxMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FalconxReportV1&gt;**](FalconxReportV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxReportV1Response.new(
  errors: null,
  meta: null,
  resources: null
)
```


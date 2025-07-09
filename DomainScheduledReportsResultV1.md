# Falcon::DomainScheduledReportsResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainScheduledReportV1&gt;**](DomainScheduledReportV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainScheduledReportsResultV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


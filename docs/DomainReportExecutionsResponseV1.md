# Falcon::DomainReportExecutionsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainReportExecutionV1&gt;**](DomainReportExecutionV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainReportExecutionsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


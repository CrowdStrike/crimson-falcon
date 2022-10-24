# Falcon::FalconxSubmissionV1Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**FalconxMetaInfo**](FalconxMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FalconxSubmissionV1&gt;**](FalconxSubmissionV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxSubmissionV1Response.new(
  errors: null,
  meta: null,
  resources: null
)
```


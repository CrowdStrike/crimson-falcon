# Falcon::ResponsesIoaExclusionRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ResponsesIoaExclusionV1&gt;**](ResponsesIoaExclusionV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesIoaExclusionRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```


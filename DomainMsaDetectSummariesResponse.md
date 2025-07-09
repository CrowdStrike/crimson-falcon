# Falcon::DomainMsaDetectSummariesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIDetectionDocument&gt;**](DomainAPIDetectionDocument.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMsaDetectSummariesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

